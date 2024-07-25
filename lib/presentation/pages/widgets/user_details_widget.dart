import 'package:flutter/material.dart';
import 'package:flutternaut_frontend_webapp/extensions/context_extensions.dart';

import '../../../common/dimensions.dart';
import '../../../theme/light_theme_colors.dart';

class UserDetailsWidget extends StatelessWidget {
  final TextStyle style;

  const UserDetailsWidget({required this.style, super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.start,
      text: TextSpan(
        children: [
          TextSpan(
            text: context.loc.softwareEngineer,
            style: style.copyWith(
              color: primaryTextColor,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
          WidgetSpan(child: SizedBox(width: paddingSmaller2)),
          TextSpan(
            text: context.loc.basedIn,
            style: style.copyWith(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal,
            ),
          ),
          WidgetSpan(child: SizedBox(width: paddingSmaller2)),
          TextSpan(
            text: context.loc.india,
            style: style.copyWith(
              color: primaryTextColor,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}
