import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutternaut_frontend_webapp/extensions/context_extensions.dart';

import '../../../common/dimensions.dart';
import '../../../theme/light_theme_colors.dart';

class ContactWidget extends StatelessWidget {
  final String assetName;
  final String value;
  final void Function()? onPressed;

  const ContactWidget({
    required this.assetName,
    required this.value,
    this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(paddingSmaller1),
          decoration: const BoxDecoration(
            color: Colors.black12,
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            assetName,
            height: iconSizeSmall,
          ),
        ),
        SizedBox(width: paddingSmall1),
        Flexible(
          child: Tooltip(
            message: context.loc.copy,
            child: TextButton(
              onPressed: onPressed ??
                  () {
                    FlutterClipboard.copy(value);
                  },
              child: Text(
                value,
                style: context.textTheme.titleSmall?.copyWith(
                  color: primaryTextColor,
                ),
                maxLines: 2,
                textAlign: TextAlign.start,
              ),
            ),
          ),
        )
      ],
    );
  }
}
