import 'package:flutter/material.dart';
import 'package:flutternaut_frontend_webapp/common/base_screen.dart';
import 'package:flutternaut_frontend_webapp/common/config.dart';
import 'package:flutternaut_frontend_webapp/common/dimensions.dart';
import 'package:flutternaut_frontend_webapp/extensions/context_extensions.dart';
import 'package:flutternaut_frontend_webapp/presentation/pages/widgets/user_details_widget.dart';
import 'package:universal_html/html.dart' as html;

import '../../../theme/light_theme_colors.dart';
import '../../../utils/assets.dart';
import '../widgets/contact_widget.dart';

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
      child: buildBody(),
    );
  }

  Column buildBody() {
    return Column(
      children: [
        buildWelcomeTextWidget(),
        buildDetailsWidget(),
      ],
    );
  }

  Row buildWelcomeTextWidget() {
    return Row(
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
    );
  }

  Row buildDetailsWidget() {
    return Row(
      children: [
        buildProfilePictureSection(),
        buildExperienceSection(),
      ],
    );
  }

  Expanded buildProfilePictureSection() {
    return Expanded(
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
              colors: gradientColors,
            ).createShader(
              Rect.fromLTWH(0, 0, bounds.width, bounds.height),
            ),
            child: Text(
              '${Config.userName}...',
              style: context.textTheme.displaySmall,
            ),
          ),
          SizedBox(height: paddingSmall1),
          UserDetailsWidget(style: context.textTheme.titleLarge!),
          SizedBox(height: paddingSmall1),
          buildDownloadCVButton(),
        ],
      ),
    );
  }

  TextButton buildDownloadCVButton() {
    return TextButton(
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
    );
  }

  Expanded buildExperienceSection() {
    return Expanded(
      flex: 3,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Expanded(
                child: ContactWidget(
                  assetName: Assets.phone,
                  value: Config.mobNo,
                ),
              ),
              SizedBox(width: paddingMedium1),
              const Expanded(
                child: ContactWidget(
                  assetName: Assets.contact,
                  value: Config.age,
                ),
              ),
            ],
          ),
          SizedBox(height: paddingLarge2),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Expanded(
                child: ContactWidget(
                  assetName: Assets.email,
                  value: Config.email,
                ),
              ),
              SizedBox(width: paddingMedium1),
              const Expanded(
                child: ContactWidget(
                  assetName: Assets.location,
                  value: Config.location,
                ),
              ),
            ],
          ),
          SizedBox(height: paddingLarge1),
          buildHorizontalDivider(),
          SizedBox(height: paddingLarge1),
          Row(
            children: [
              buildExperience(),
              SizedBox(width: paddingMedium1),
              buildClientDetails(),
            ],
          ),
          SizedBox(height: paddingMedium1),
          buildQuotes(),
        ],
      ),
    );
  }

  Row buildHorizontalDivider() {
    return Row(
      children: [
        Expanded(
          child: Container(height: dp1, color: Colors.black12),
        )
      ],
    );
  }

  Expanded buildExperience() {
    return Expanded(
      child: Column(
        children: [
          Row(
            children: [
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
                    Config.experience,
                    style: context.textTheme.displaySmall,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  context.loc.yearsExperience,
                  style: context.textTheme.titleLarge,
                  maxLines: 2,
                  textAlign: TextAlign.start,
                ),
              ),
            ],
          ),
          SizedBox(height: paddingMedium1),
          Row(
            children: [
              Expanded(
                child: Text(
                  context.loc.aboutScreenDesc1,
                  style: context.textTheme.bodySmall,
                  maxLines: 8,
                  textAlign: TextAlign.start,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Expanded buildClientDetails() {
    return Expanded(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (bounds) => const LinearGradient(
                    colors: [Color(0xffbc6ce4), Color(0xfffcb444)],
                  ).createShader(
                    Rect.fromLTWH(
                      0,
                      0,
                      bounds.width,
                      bounds.height,
                    ),
                  ),
                  child: Text(
                    Config.clientsCount,
                    style: context.textTheme.displaySmall,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  context.loc.clientsInIndia,
                  style: context.textTheme.titleLarge,
                  maxLines: 2,
                  textAlign: TextAlign.start,
                ),
              ),
            ],
          ),
          SizedBox(height: paddingMedium1),
          Row(
            children: [
              Expanded(
                child: Text(
                  context.loc.aboutScreenDesc2,
                  style: context.textTheme.bodySmall,
                  maxLines: 10,
                  textAlign: TextAlign.start,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Row buildQuotes() {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(paddingMedium1),
            color: secondaryColor,
            height: dp120,
            child: Row(
              children: [
                Image.asset(
                  Assets.quotes,
                  height: iconSizeXXXL,
                  color: Colors.grey,
                ),
                SizedBox(width: paddingMedium1),
                Expanded(
                  child: Text(
                    context.loc.aboutScreenDesc3,
                    style: context.textTheme.titleSmall!.copyWith(
                      fontStyle: FontStyle.italic,
                      color: secondaryTextColor,
                    ),
                    maxLines: 3,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
