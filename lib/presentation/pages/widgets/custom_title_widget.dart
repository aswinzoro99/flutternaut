import 'package:flutter/material.dart';
import 'package:flutternaut_frontend_webapp/extensions/context_extensions.dart';

class CustomTitleWidget extends StatelessWidget {
  final String title;
  final String subTitle;

  const CustomTitleWidget({
    required this.title,
    required this.subTitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              subTitle,
              style: context.textTheme.titleLarge
                  ?.copyWith(fontStyle: FontStyle.italic),
            ),
            Text(
              title,
              style: context.textTheme.headlineLarge
                  ?.copyWith(fontWeight: FontWeight.w600),
            ),
          ],
        )
      ],
    );
  }
}
