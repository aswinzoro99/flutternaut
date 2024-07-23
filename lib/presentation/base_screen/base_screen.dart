import 'package:flutter/material.dart';
import 'package:flutternaut_frontend_webapp/common/dimensions.dart';
import 'package:flutternaut_frontend_webapp/enum/socials.dart';
import 'package:flutternaut_frontend_webapp/extensions/context_extensions.dart';
import 'package:flutternaut_frontend_webapp/presentation/home_screen/home_screen.dart';
import 'package:flutternaut_frontend_webapp/theme/light_theme_colors.dart';
import 'package:flutternaut_frontend_webapp/utils/assets.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<StatefulWidget> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  final socialList = Socials.values;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 1300) {
        return const Center(
          child: Text('Only Available in DESKTOP!!!'),
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
                    Text('Aswin.', style: context.textTheme.headlineSmall),
                    const Spacer(),
                    getNavigationRailItem(title: 'HOME', isSelected: true),
                    getNavigationRailItem(title: 'ABOUT'),
                    getNavigationRailItem(title: 'SERVICES'),
                    getNavigationRailItem(title: 'WORKS'),
                    getNavigationRailItem(title: 'BLOGS'),
                    getNavigationRailItem(title: 'CONTACT'),
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
          'Copyright ©2023 Aswin Ranjith. All right reserved.',
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
            height: 150,
          )
        ],
      ),
    );
  }
}
