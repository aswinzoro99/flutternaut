import 'package:flutter/material.dart';
import 'package:flutternaut_frontend_webapp/enum/snackbar_type.dart';
import 'package:flutternaut_frontend_webapp/extensions/context_extensions.dart';

import '../theme/light_theme_colors.dart';

class DialogManager {
  Future<void> showSnackBar({
    required BuildContext context,
    required String message,
    SnackbarType? type = SnackbarType.info,
  }) async {
    ScaffoldMessenger.of(context)
      ..clearSnackBars()
      ..showSnackBar(
        SnackBar(
          backgroundColor:
              (type?.isError ?? false) ? errorColor : secondaryColor,
          content: Text(
            message,
            style: context.textTheme.titleSmall,
          ),
        ),
      );
  }
}
