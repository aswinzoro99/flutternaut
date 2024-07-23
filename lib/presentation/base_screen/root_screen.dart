import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutternaut_frontend_webapp/common/config.dart';
import 'package:flutternaut_frontend_webapp/common/dimensions.dart';
import 'package:flutternaut_frontend_webapp/enum/socials.dart';
import 'package:flutternaut_frontend_webapp/extensions/context_extensions.dart';
import 'package:flutternaut_frontend_webapp/presentation/home_screen/home_screen.dart';
import 'package:flutternaut_frontend_webapp/theme/light_theme_colors.dart';
import 'package:flutternaut_frontend_webapp/utils/assets.dart';

@RoutePage()
class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<StatefulWidget> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  final socialList = Socials.values;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < Config.responsiveTriggerWidth) {
        return Center(
          child: Text(context.loc.responsiveWindowMessage),
        );
      } else {
        return Scaffold(
          backgroundColor: backgroundColor,
          body: Row(
            children: [
              Container(
                padding: EdgeInsets.all(paddingLarge1),
                decoration: const BoxDecoration(color: secondaryColor),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.loc.homeScreenTitle,
                      style: context.textTheme.headlineSmall,
                    ),
                    const Spacer(),
                    getNavigationRailItem(
                      title: context.loc.home,
                      isSelected: true,
                    ),
                    getNavigationRailItem(title: context.loc.about),
                    getNavigationRailItem(title: context.loc.services),
                    getNavigationRailItem(title: context.loc.works),
                    getNavigationRailItem(title: context.loc.blogs),
                    getNavigationRailItem(title: context.loc.contact),
                    const Spacer(),
                    buildTrailing(),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    const Expanded(child: HomeScreen()),
                    buildFooter(),
                  ],
                ),
              ),
            ],
          ),
        );
      }
    });
  }

  Padding getNavigationRailItem({
    required String title,
    bool? isSelected,
  }) {
    return Padding(
      padding: EdgeInsets.only(
        top: paddingRegular1,
        bottom: paddingRegular1,
        right: paddingXXXL,
      ),
      child: Text(
        title,
        style: (isSelected ?? false)
            ? context.textTheme.labelLarge
            : context.textTheme.labelMedium,
      ),
    );
  }

  Widget buildTrailing() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildSocial(Assets.instagram),
        buildSocial(Assets.github),
        buildSocial(Assets.linkedIn),
        SizedBox(height: bodyPadding),
        Text(
          context.loc.copyrightDesc,
          style: context.textTheme.labelSmall,
        ),
      ],
    );
  }

  Padding buildSocial(String asset) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: paddingSmall1),
      child: Container(
        padding: EdgeInsets.all(paddingSmaller2),
        decoration: const BoxDecoration(
          color: backgroundColor,
          shape: BoxShape.circle,
        ),
        child: buildIcon(asset, secondaryColor),
      ),
    );
  }

  Image buildIcon(String asset, Color? color) {
    return Image.asset(asset, color: color, height: iconSizeRegular);
  }

  Padding buildFooterIcons(String asset) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: paddingSmall1),
      child: Container(
        padding: EdgeInsets.all(paddingSmaller2),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.black26, width: 0.5),
        ),
        child: buildIcon(asset, Colors.black87),
      ),
    );
  }

  Padding buildFooter() {
    return Padding(
      padding: EdgeInsets.only(right: paddingLarge1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildFooterIcons(Assets.instagram),
          buildFooterIcons(Assets.github),
          buildFooterIcons(Assets.linkedIn),
          SizedBox(height: bodyPadding),
          Container(
            width: dp2,
            color: Colors.black38,
            height: dp150,
          )
        ],
      ),
    );
  }
}
