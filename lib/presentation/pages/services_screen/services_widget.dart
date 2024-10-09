import 'package:flutter/material.dart';
import 'package:flutternaut_frontend_webapp/common/base_screen.dart';
import 'package:flutternaut_frontend_webapp/common/dimensions.dart';
import 'package:flutternaut_frontend_webapp/extensions/context_extensions.dart';
import 'package:rxdart/rxdart.dart';

import '../../../theme/light_theme_colors.dart';

class ServicesWidget extends BaseScreen {
  final String serviceName;
  final String description;
  final String detailedDescription;

  const ServicesWidget({
    required this.serviceName,
    required this.description,
    required this.detailedDescription,
    super.key,
  });

  @override
  State<ServicesWidget> createState() => _ServicesWidgetState();
}

class _ServicesWidgetState extends BaseState<ServicesWidget> {
  final BehaviorSubject<bool> expanded = BehaviorSubject<bool>.seeded(false);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
      stream: expanded.stream,
      builder: (context, snapshot) {
        return Column(
          children: [
            SizedBox(height: paddingRegular1),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '•',
                  style: context.textTheme.headlineLarge,
                ),
                SizedBox(width: paddingSmall1),
                if (expanded.value)
                  Expanded(
                    child: ShaderMask(
                      blendMode: BlendMode.srcIn,
                      shaderCallback: (bounds) => const LinearGradient(
                        colors: gradientColors,
                      ).createShader(
                        Rect.fromLTWH(
                          0,
                          0,
                          bounds.width,
                          bounds.height,
                        ),
                      ),
                      child: Text(
                        widget.serviceName,
                        style: context.textTheme.headlineMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                        maxLines: 3,
                      ),
                    ),
                  )
                else
                  Expanded(
                    child: Text(
                      widget.serviceName,
                      style: context.textTheme.headlineMedium
                          ?.copyWith(fontWeight: FontWeight.bold),
                      maxLines: 3,
                    ),
                  ),
                SizedBox(width: paddingLarge1),
                if (!expanded.value)
                  Expanded(
                    child: Text(
                      widget.description,
                      style: context.textTheme.bodyLarge,
                      maxLines: 6,
                    ),
                  ),
                buildAddOrMinusIcon(expanded.value),
              ],
            ),
            if (expanded.value) SizedBox(height: paddingRegular1),
            if (expanded.value)
              Text(
                widget.detailedDescription,
                style: context.textTheme.bodySmall?.copyWith(fontSize: sp14),
                maxLines: 6,
              ),
            SizedBox(height: paddingRegular1),
            buildHorizontalDivider(0.6, Colors.black12),
          ],
        );
      },
    );
  }

  Row buildHorizontalDivider(double height, Color color) {
    return Row(
      children: [
        Expanded(
          child: Container(height: height, color: color),
        )
      ],
    );
  }

  Tooltip buildAddOrMinusIcon(bool? isExpanded) {
    return Tooltip(
      message:
          (isExpanded ?? false) ? context.loc.minimise : context.loc.expand,
      child: TextButton(
        onPressed: () => expanded.add(!expanded.value),
        child: Text(
          (isExpanded ?? false) ? 'Minimize' : 'Expand',
          style: context.textTheme.titleSmall?.copyWith(
            fontWeight: FontWeight.w600,
            color: primaryTextColor,
          ),
        ),
      ),
    );
  }
}
