import 'package:flutter/material.dart';
import 'package:flutternaut_frontend_webapp/common/base_screen.dart';
import 'package:flutternaut_frontend_webapp/common/config.dart';
import 'package:flutternaut_frontend_webapp/common/dimensions.dart';
import 'package:flutternaut_frontend_webapp/extensions/context_extensions.dart';
import 'package:flutternaut_frontend_webapp/theme/light_theme_colors.dart';
import 'package:flutternaut_frontend_webapp/utils/assets.dart';

import '../widgets/custom_button_with_icon.dart';
import '../widgets/user_details_widget.dart';

class HomeScreen extends BaseScreen {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends BaseState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(bodyPadding),
      child: Row(
        children: [
          SizedBox(width: dp50),
          Expanded(child: buildPersonalInfo()),
          Expanded(child: buildIllustration()),
          SizedBox(width: dp50),
        ],
      ),
    );
  }

  Widget buildPersonalInfo() {
    return Stack(
      children: [
        Positioned(
          top: context.maxHeight / 4.9,
          child: Image.asset(
            Assets.arc,
            height: dp100,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: context.loc.myNameIs,
                    style: context.textTheme.displayLarge,
                  ),
                  WidgetSpan(
                    child: SizedBox(
                      width: bodyPadding,
                    ),
                  ),
                  TextSpan(
                    text: context.loc.aswinRanjith,
                    style: context.textTheme.displayLarge!.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            UserDetailsWidget(style: context.textTheme.headlineSmall!),
            SizedBox(height: paddingMedium1),
            CustomButtonWithIcon(
              text: context.loc.letsTalkWithMe,
              onPressed: () {},
            ),
            SizedBox(height: paddingMedium1),
            buildContacts(),
          ],
        ),
      ],
    );
    //MY NAME IS ASWIN RANJITH
  }

  Image buildIllustration() {
    return Image.asset(
      Assets.homeScreenImage,
      height: context.maxHeight,
    );
  }

  Row buildContacts() {
    return Row(
      children: [
        buildContactItem(Assets.phone, Config.mobNo),
        SizedBox(width: paddingMedium1),
        buildContactItem(Assets.email, Config.email),
      ],
    );
  }

  Row buildContactItem(String assetName, String value) {
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
        Text(
          value,
          style: context.textTheme.titleSmall?.copyWith(
            color: primaryTextColor,
          ),
        )
      ],
    );
  }
}
