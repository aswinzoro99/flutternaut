import 'package:flutter/material.dart';
import 'package:flutternaut_frontend_webapp/common/base_screen.dart';
import 'package:flutternaut_frontend_webapp/common/dimensions.dart';
import 'package:flutternaut_frontend_webapp/enum/socials.dart';
import 'package:flutternaut_frontend_webapp/extensions/context_extensions.dart';
import 'package:flutternaut_frontend_webapp/presentation/pages/widgets/custom_button_with_icon.dart';
import 'package:flutternaut_frontend_webapp/presentation/pages/widgets/custom_title_widget.dart';
import 'package:flutternaut_frontend_webapp/theme/light_theme_colors.dart';

import '../../../common/config.dart';
import '../../../enum/textfield_type.dart';
import '../../../utils/assets.dart';

class ContactsScreen extends BaseScreen {
  const ContactsScreen({super.key});

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: paddingXXXL,
        vertical: 2 * paddingXXXL,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex: 2, child: buildInfoSection()),
          SizedBox(width: paddingLarge1),
          Expanded(flex: 3, child: buildDraftEmailSection())
        ],
      ),
    );
  }

  Column buildInfoSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomTitleWidget(
          title: context.loc.reachOutMe,
          subTitle: context.loc.contact,
          subTitleStyle: context.textTheme.titleSmall?.copyWith(
            fontStyle: FontStyle.italic,
            color: primaryTextColor,
          ),
          titleStyle: context.textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          Config.address,
          style: context.textTheme.titleSmall?.copyWith(
            color: primaryTextColor,
            fontWeight: FontWeight.w300,
          ),
        ),
        Text(
          Config.mobNo,
          style: context.textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          Config.email,
          style: context.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: getSocialsList(),
        ),
      ],
    );
  }

  Container buildDraftEmailSection() {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: gradientColors),
      ),
      padding: EdgeInsets.all(paddingXL),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.loc.anyProject,
            style: context.textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.w500,
              color: secondaryTextColor,
            ),
          ),
          SizedBox(height: paddingLarge1),
          Row(
            children: [
              buildTextField(TextfieldType.name),
              SizedBox(width: paddingMedium1),
              buildTextField(TextfieldType.email),
            ],
          ),
          SizedBox(height: paddingLarge1),
          buildTextField(TextfieldType.message),
          SizedBox(height: paddingMedium1),
          Row(
            children: [
              Image.asset(
                Assets.attach,
                height: iconSizeRegular,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  context.loc.attachFiles,
                  style: context.textTheme.titleSmall!
                      .copyWith(color: secondaryTextColor),
                ),
              ),
            ],
          ),
          SizedBox(height: paddingMedium1),
          CustomButtonWithIcon(
            text: context.loc.submitNow,
            onPressed: () {},
            margin: EdgeInsets.only(right: 4.5 * paddingXXXL),
          )
        ],
      ),
    );
  }

  Flexible buildTextField(TextfieldType type) {
    return Flexible(
      child: TextField(
        cursorColor: backgroundColor,
        maxLines: type.isMessage ? 5 : 1,
        decoration: InputDecoration(hintText: type.getPlaceHolderText()),
      ),
    );
  }

  List<Widget> getSocialsList() {
    final children = <Widget>[];

    for (final soc in Socials.values) {
      children.add(
        TextButton(
          onPressed: () => soc.onSocialClicked(),
          child: Text(
            soc.name.toUpperCase(),
            style: context.textTheme.titleSmall?.copyWith(
              color: primaryTextColor,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      );
    }

    return children;
  }
}