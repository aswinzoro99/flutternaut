import 'package:flutter/material.dart';
import 'package:flutternaut_frontend_webapp/common/base_screen.dart';
import 'package:flutternaut_frontend_webapp/common/config.dart';
import 'package:flutternaut_frontend_webapp/common/dimensions.dart';
import 'package:flutternaut_frontend_webapp/extensions/context_extensions.dart';
import 'package:universal_html/html.dart' as html;

import '../../../theme/light_theme_colors.dart';
import '../../../utils/assets.dart';

class AboutScreen extends BaseScreen {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends BaseState<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(paddingXXXL),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.loc.niceToMeetYou,
                    style: context.textTheme.titleLarge
                        ?.copyWith(fontStyle: FontStyle.italic),
                  ),
                  Text(
                    context.loc.welcomeTo,
                    style: context.textTheme.headlineLarge
                        ?.copyWith(fontWeight: FontWeight.w600),
                  ),
                ],
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      Assets.aboutScreenPerson,
                      height: context.maxHeight / 2,
                    ),
                    ShaderMask(
                      blendMode: BlendMode.srcIn,
                      shaderCallback: (bounds) => const LinearGradient(
                        colors: [Color(0xffbc6ce4), Color(0xfffcb444)],
                      ).createShader(
                        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                      ),
                      child: Text(
                        context.loc.aswinRanjith,
                        style: context.textTheme.displaySmall,
                      ),
                    ),
                    SizedBox(height: paddingSmall1),
                    RichText(
                      textAlign: TextAlign.start,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: context.loc.softwareEngineer,
                            style: context.textTheme.titleLarge!.copyWith(
                              color: primaryTextColor,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          WidgetSpan(child: SizedBox(width: paddingSmaller2)),
                          TextSpan(
                            text: context.loc.basedIn,
                            style: TextStyle(fontSize: titleLarge),
                          ),
                          WidgetSpan(child: SizedBox(width: paddingSmaller2)),
                          TextSpan(
                            text: context.loc.india,
                            style: context.textTheme.titleLarge!.copyWith(
                              color: primaryTextColor,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: paddingSmall1),
                    TextButton(
                      onPressed: () {
                        html.window.open(
                          Config.resumeDonwloadLink,
                          "blank",
                        );
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            context.loc.downloadCv,
                            style: context.textTheme.bodyMedium!.copyWith(
                              color: primaryTextColor,
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          SizedBox(width: paddingSmallest2),
                          Image.asset(
                            Assets.northEastFilled,
                            height: iconSizeSmall,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const Expanded(
                flex: 3,
                child: Column(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
