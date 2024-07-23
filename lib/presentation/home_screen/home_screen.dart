import 'package:flutter/material.dart';
import 'package:flutternaut_frontend_webapp/common/dimensions.dart';
import 'package:flutternaut_frontend_webapp/extensions/context_extensions.dart';
import 'package:flutternaut_frontend_webapp/theme/light_theme_colors.dart';
import 'package:flutternaut_frontend_webapp/utils/assets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          top: context.maxHeight / 5,
          child: Image.asset(
            Assets.arc,
            height: 100,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(text: 'MY NAME IS ', style: TextStyle(fontSize: 75)),
                  TextSpan(
                    text: 'ASWIN RANJITH...',
                    style: TextStyle(
                      fontSize: 75,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            RichText(
              textAlign: TextAlign.start,
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: 'Software Engineer',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  WidgetSpan(child: SizedBox(width: paddingSmall2)),
                  const TextSpan(
                    text: 'based in',
                    style: TextStyle(fontSize: 30),
                  ),
                  WidgetSpan(child: SizedBox(width: paddingSmall2)),
                  const TextSpan(
                    text: 'India',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: paddingMedium1),
            buildTalkWIthMe(),
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

  Container buildTalkWIthMe() {
    return Container(
      margin: EdgeInsets.only(right: paddingXXXL * 3),
      padding: EdgeInsets.all(paddingRegular1),
      decoration: const BoxDecoration(
        color: secondaryColor,
      ),
      child: Row(
        children: [
          const Text(
            'Let’s talk with me',
            style: TextStyle(
              fontSize: 14,
              color: secondaryTextColor,
            ),
          ),
          SizedBox(width: paddingRegular2),
          Image.asset(
            Assets.northEast,
            height: iconSizeL,
          ),
        ],
      ),
    );
  }

  Row buildContacts() {
    return Row(
      children: [
        buildContactItem(Assets.phone, '+91 81292 48586'),
        SizedBox(width: paddingMedium1),
        buildContactItem(Assets.email, 'aswin1999ranjith@gmail.com'),
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
          style: const TextStyle(
            fontSize: 14,
            color: primaryTextColor,
            fontStyle: FontStyle.italic,
          ),
        )
      ],
    );
  }
}
