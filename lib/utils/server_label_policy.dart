import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import '../providers/multi_server_provider.dart';

/// Profile access, not the transient online count, determines disambiguation.
bool showServerLabels(BuildContext context, {bool listen = true}) {
  final provider = Provider.of<MultiServerProvider?>(context, listen: listen);
  return provider != null && provider.expectedServerIds.toSet().length > 1;
}
