import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:luroka/widgets/app_icon.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../focus/focusable_text_field.dart';
import '../../i18n/strings.g.dart';
import '../../theme/mono_tokens.dart';
import '../../widgets/focusable_list_tile.dart';
import '../../widgets/focused_scroll_scaffold.dart';
import '../../widgets/loading_indicator_box.dart';
import '../../widgets/settings_page.dart';
import '../../widgets/settings_section.dart';

class MergedLicenseEntry {
  final String packageName;
  final List<LicenseEntry> licenseEntries;
  final Set<String> allPackageNames;

  MergedLicenseEntry({required this.packageName, required this.licenseEntries, required this.allPackageNames});
}

class LicensesScreen extends StatefulWidget {
  const LicensesScreen({super.key});

  static final Future<List<MergedLicenseEntry>> _licensesFuture = _loadLicenses();

  static Future<List<MergedLicenseEntry>> _loadLicenses() async {
    final licenseMap = <String, List<LicenseEntry>>{};
    final allPackageNames = <String, Set<String>>{};

    await for (final license in LicenseRegistry.licenses) {
      for (final packageName in license.packages) {
        if (!licenseMap.containsKey(packageName)) {
          licenseMap[packageName] = [];
          allPackageNames[packageName] = <String>{};
        }
        licenseMap[packageName]!.add(license);
        allPackageNames[packageName]!.addAll(license.packages);
      }
    }

    final mergedLicenses = licenseMap.entries.map((entry) {
      return MergedLicenseEntry(
        packageName: entry.key,
        licenseEntries: entry.value,
        allPackageNames: allPackageNames[entry.key]!,
      );
    }).toList();

    mergedLicenses.sort((a, b) {
      final alphabetical = a.packageName.toLowerCase().compareTo(b.packageName.toLowerCase());
      return alphabetical != 0 ? alphabetical : a.packageName.compareTo(b.packageName);
    });
    return mergedLicenses;
  }

  @override
  State<LicensesScreen> createState() => _LicensesScreenState();
}

class _LicensesScreenState extends State<LicensesScreen> {
  final _searchController = TextEditingController();
  String _query = '';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _clearSearch() {
    _searchController.clear();
    setState(() => _query = '');
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<MergedLicenseEntry>>(
      future: LicensesScreen._licensesFuture,
      builder: (context, snapshot) {
        final mergedLicenses = snapshot.data;
        if (mergedLicenses == null) {
          return SettingsPage.slivers(title: Text(t.screens.licenses), slivers: [LoadingIndicatorBox.sliver]);
        }

        final query = _query.toLowerCase();
        final filtered = query.isEmpty
            ? mergedLicenses
            : mergedLicenses
                  .where(
                    (entry) =>
                        entry.packageName.toLowerCase().contains(query) ||
                        entry.allPackageNames.any((name) => name.toLowerCase().contains(query)),
                  )
                  .toList();

        return SettingsPage.slivers(
          title: Text(t.screens.licenses),
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(t.about.creditsSection, style: Theme.of(context).textTheme.titleLarge),
                    const SizedBox(height: 12),
                    Text(t.about.footer),
                    const SizedBox(height: 12),
                    Text(t.about.attributionBody),
                    const SizedBox(height: 8),
                    Text(t.about.trademarkNotices),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
              sliver: SliverToBoxAdapter(child: _buildSearchField(context)),
            ),
            if (filtered.isEmpty)
              SliverFillRemaining(
                hasScrollBody: false,
                child: Padding(
                  padding: const EdgeInsets.all(32),
                  child: Center(
                    child: Text(
                      t.licenses.noResults(query: _query),
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: tokens(context).textMuted),
                    ),
                  ),
                ),
              )
            else
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
                sliver: SliverToBoxAdapter(
                  child: SettingsGroup(
                    margin: EdgeInsets.zero,
                    children: [
                      for (final mergedLicense in filtered)
                        FocusableListTile(
                          leading: const AppIcon(Symbols.description_rounded, fill: 1),
                          title: Text(mergedLicense.packageName),
                          subtitle: mergedLicense.licenseEntries.length > 1
                              ? Text(t.licenses.licensesCount(count: mergedLicense.licenseEntries.length))
                              : null,
                          trailing: const AppIcon(Symbols.chevron_right_rounded, fill: 1),
                          onTap: () => _showLicenseDetail(context, mergedLicense),
                        ),
                    ],
                  ),
                ),
              ),
          ],
        );
      },
    );
  }

  Widget _buildSearchField(BuildContext context) {
    final mono = tokens(context);
    final theme = Theme.of(context);
    final radius = BorderRadius.circular(mono.radiusMd);
    return FocusableTextField(
      controller: _searchController,
      decoration: InputDecoration(
        hintText: t.licenses.searchHint,
        prefixIcon: const AppIcon(Symbols.search_rounded),
        suffixIcon: _query.isEmpty
            ? null
            : IconButton(
                tooltip: t.licenses.clearSearch,
                icon: const AppIcon(Symbols.close_rounded),
                onPressed: _clearSearch,
              ),
        filled: true,
        fillColor: mono.surface,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        border: OutlineInputBorder(
          borderRadius: radius,
          borderSide: BorderSide(color: mono.outline.withValues(alpha: 0.5)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: radius,
          borderSide: BorderSide(color: mono.outline.withValues(alpha: 0.5)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: radius,
          borderSide: BorderSide(color: theme.colorScheme.primary, width: 1.5),
        ),
      ),
      textInputAction: TextInputAction.search,
      onChanged: (value) => setState(() => _query = value.trim()),
    );
  }

  void _showLicenseDetail(BuildContext context, MergedLicenseEntry mergedLicense) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => _LicenseDetailScreen(mergedLicense: mergedLicense)),
    );
  }
}

class _LicenseDetailScreen extends StatelessWidget {
  final MergedLicenseEntry mergedLicense;

  const _LicenseDetailScreen({required this.mergedLicense});

  @override
  Widget build(BuildContext context) {
    final packageName = mergedLicense.packageName;
    final licenseEntries = mergedLicense.licenseEntries;

    return FocusedScrollScaffold(
      title: Text(packageName),
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.all(16),
          sliver: SliverList(
            delegate: SliverChildListDelegate([
              if (mergedLicense.allPackageNames.length > 1)
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: .start,
                      children: [
                        Text(
                          t.licenses.relatedPackages,
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: .bold),
                        ),
                        const SizedBox(height: 8),
                        Text(mergedLicense.allPackageNames.join(', '), style: Theme.of(context).textTheme.bodyMedium),
                      ],
                    ),
                  ),
                ),
              if (mergedLicense.allPackageNames.length > 1) const SizedBox(height: 16),

              ...licenseEntries.asMap().entries.map((entry) {
                final index = entry.key;
                final license = entry.value;
                final isMultipleLicenses = licenseEntries.length > 1;

                return Column(
                  children: [
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: .start,
                          children: [
                            Text(
                              isMultipleLicenses ? t.licenses.licenseNumber(number: index + 1) : t.licenses.license,
                              style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: .bold),
                            ),
                            const SizedBox(height: 16),
                            ...license.paragraphs.map((paragraph) {
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 16),
                                child: SelectableText(
                                  paragraph.text,
                                  style: TextStyle(fontFamily: paragraph.indent > 0 ? 'monospace' : null, fontSize: 14),
                                ),
                              );
                            }),
                          ],
                        ),
                      ),
                    ),
                    if (index < licenseEntries.length - 1) const SizedBox(height: 16),
                  ],
                );
              }),
            ]),
          ),
        ),
      ],
    );
  }
}
