import 'package:flutter/material.dart';

import '../generated/l10n.dart';

extension ContextExtensions on BuildContext {
  double get maxWidth => MediaQuery.of(this).size.width;

  double get maxHeight => MediaQuery.of(this).size.height;

  EdgeInsets get padding => MediaQuery.of(this).padding;

  Orientation get orientation => MediaQuery.of(this).orientation;

  TextTheme get textTheme => Theme.of(this).textTheme;

  S get loc => S.of(this);
}
