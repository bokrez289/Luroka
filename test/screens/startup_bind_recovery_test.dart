import 'dart:async';

import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:luroka/main.dart';
import 'package:luroka/navigation/navigation_tabs.dart';
import 'package:luroka/screens/main_screen.dart';
import 'package:luroka/utils/media_server_timeouts.dart';

List<NavigationTabId> _ids(List<NavigationTab> tabs) => tabs.map((tab) => tab.id).toList();

void main() {
  group('startup bind recovery', () {
    test('enters offline mode only when initial bind failed with no online servers', () {
      expect(shouldEnterOfflineModeAfterStartupBind(bindingSucceeded: false, hasOnlineServers: false), isTrue);
      expect(shouldEnterOfflineModeAfterStartupBind(bindingSucceeded: true, hasOnlineServers: false), isFalse);
      expect(shouldEnterOfflineModeAfterStartupBind(bindingSucceeded: false, hasOnlineServers: true), isFalse);
    });

    test('without a network the splash waits for the bind only up to the cap', () {
      fakeAsync((async) {
        bool? capped;
        bool? uncapped;
        bool? settledEarly;
        unawaited(awaitStartupBindSettle(Completer<bool>().future, hasNetwork: false).then((v) => capped = v));
        unawaited(awaitStartupBindSettle(Completer<bool>().future, hasNetwork: true).then((v) => uncapped = v));
        unawaited(awaitStartupBindSettle(Future.value(true), hasNetwork: false).then((v) => settledEarly = v));

        async.flushMicrotasks();
        expect(settledEarly, isTrue, reason: 'a loopback server that binds fast is not held back');

        async.elapse(MediaServerTimeouts.noNetworkStartupBind - const Duration(milliseconds: 1));
        expect(capped, isNull);
        async.elapse(const Duration(milliseconds: 1));
        expect(capped, isFalse, reason: 'airplane mode reaches the offline shell after the cap');

        async.elapse(const Duration(minutes: 1));
        expect(uncapped, isNull, reason: 'with a network the splash waits for the real outcome');
      });
    });

    test('retries active profile bind when reconnect has no visible servers', () {
      expect(
        shouldRetryActiveProfileBindAfterReconnect(
          hasActiveProfile: true,
          hasVisibleConnectedServers: false,
          hasManagerOnlineServers: true,
          hasKnownOfflineServers: false,
        ),
        isTrue,
      );
      expect(
        shouldRetryActiveProfileBindAfterReconnect(
          hasActiveProfile: true,
          hasVisibleConnectedServers: false,
          hasManagerOnlineServers: false,
          hasKnownOfflineServers: false,
        ),
        isTrue,
      );
      expect(
        shouldRetryActiveProfileBindAfterReconnect(
          hasActiveProfile: true,
          hasVisibleConnectedServers: true,
          hasManagerOnlineServers: true,
          hasKnownOfflineServers: false,
        ),
        isFalse,
      );
      expect(
        shouldRetryActiveProfileBindAfterReconnect(
          hasActiveProfile: false,
          hasVisibleConnectedServers: false,
          hasManagerOnlineServers: true,
          hasKnownOfflineServers: false,
        ),
        isFalse,
      );
      expect(
        shouldRetryActiveProfileBindAfterReconnect(
          hasActiveProfile: true,
          hasVisibleConnectedServers: false,
          hasManagerOnlineServers: false,
          hasKnownOfflineServers: true,
        ),
        isTrue,
      );
    });

    test('explicit offline startup stays offline until a visible server connects', () {
      expect(
        shouldRenderMainScreenOffline(
          providerOffline: false,
          startupOfflineUntilConnected: true,
          hasVisibleConnectedServers: false,
        ),
        isTrue,
      );
      expect(
        shouldRenderMainScreenOffline(
          providerOffline: false,
          startupOfflineUntilConnected: true,
          hasVisibleConnectedServers: true,
        ),
        isFalse,
      );
      expect(
        shouldRenderMainScreenOffline(
          providerOffline: true,
          startupOfflineUntilConnected: false,
          hasVisibleConnectedServers: true,
        ),
        isTrue,
      );
    });

    test('Apple TV restores the previous online tab after reconnecting', () {
      expect(
        tabToRestoreAfterOffline(
          autoSwitchedToDownloads: false,
          isAppleTV: true,
          previousOnlineTab: NavigationTabId.libraries,
        ),
        NavigationTabId.libraries,
      );
      expect(
        tabToRestoreAfterOffline(autoSwitchedToDownloads: false, isAppleTV: true, previousOnlineTab: null),
        NavigationTabId.discover,
      );
      expect(
        tabToRestoreAfterOffline(autoSwitchedToDownloads: false, isAppleTV: false, previousOnlineTab: null),
        isNull,
      );
    });
  });

  group('main screen bottom navigation tabs', () {
    test('mobile online hides Settings when another tab is active', () {
      final tabs = mainScreenBottomNavigationTabs(
        visibleTabs: allNavigationTabs,
        isMobile: true,
        isOffline: false,
        currentTab: NavigationTabId.discover,
      );

      expect(_ids(tabs), isNot(contains(NavigationTabId.settings)));
      expect(_ids(tabs), [
        NavigationTabId.discover,
        NavigationTabId.favorites,
        NavigationTabId.libraries,
        NavigationTabId.explore,
        NavigationTabId.search,
      ]);
    });

    test('mobile offline includes Downloads and Settings', () {
      final offlineTabs = allNavigationTabs
          .where((tab) => tab.id == NavigationTabId.downloads || tab.id == NavigationTabId.settings)
          .toList();
      final tabs = mainScreenBottomNavigationTabs(
        visibleTabs: offlineTabs,
        isMobile: true,
        isOffline: true,
        currentTab: NavigationTabId.downloads,
      );

      expect(_ids(tabs), [NavigationTabId.downloads, NavigationTabId.settings]);
    });

    test('mobile online keeps Settings visible when it is selected', () {
      final tabs = mainScreenBottomNavigationTabs(
        visibleTabs: allNavigationTabs,
        isMobile: true,
        isOffline: false,
        currentTab: NavigationTabId.settings,
      );

      expect(_ids(tabs), contains(NavigationTabId.settings));
      expect(tabs.length, lessThanOrEqualTo(5));
    });

    for (final utility in [NavigationTabId.downloads, NavigationTabId.liveTv]) {
      test('a selected mobile ${utility.name} remains reachable within five destinations', () {
        final tabs = mainScreenBottomNavigationTabs(
          visibleTabs: allNavigationTabs,
          isMobile: true,
          isOffline: false,
          currentTab: utility,
        );
        expect(tabs.length, lessThanOrEqualTo(5));
        expect(_ids(tabs), contains(utility));
        expect(_ids(tabs), contains(NavigationTabId.discover));
        expect(_ids(tabs), contains(NavigationTabId.search));
      });
    }

    test('non-mobile returns all visible tabs unchanged', () {
      final tabs = mainScreenBottomNavigationTabs(
        visibleTabs: allNavigationTabs,
        isMobile: false,
        isOffline: false,
        currentTab: NavigationTabId.discover,
      );

      expect(tabs, same(allNavigationTabs));
    });
  });
}
