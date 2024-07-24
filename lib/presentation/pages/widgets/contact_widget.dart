import 'package:flutter/material.dart';
import 'package:flutternaut_frontend_webapp/extensions/context_extensions.dart';

import '../../../common/dimensions.dart';
import '../../../theme/light_theme_colors.dart';

class ContactWidget extends StatelessWidget {
  final String assetName;
  final String value;

  const ContactWidget({
    required this.assetName,
    required this.value,
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
        Expanded(
          child: Text(
            value,
            style: context.textTheme.titleSmall?.copyWith(
              color: primaryTextColor,
            ),
            maxLines: 2,
          ),
        )
      ],
    );
  }
}
