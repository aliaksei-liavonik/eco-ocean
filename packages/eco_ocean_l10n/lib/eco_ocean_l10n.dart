import 'package:eco_ocean_l10n/src/l10n.dart';
import 'package:flutter/widgets.dart';

extension L10nBuildContextExtention on BuildContext {
  L10n get l10n => L10n.of(this)!;
}
