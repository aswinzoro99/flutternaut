import 'package:universal_html/html.dart' as html;

import '../common/config.dart';
import '../utils/assets.dart';

enum Socials {
  instagram(assetValue: Assets.instagram, redirectionUrl: Config.instagramLink),
  linkedIn(assetValue: Assets.linkedIn, redirectionUrl: Config.linkedInLink),
  github(assetValue: Assets.github, redirectionUrl: Config.githubLink);

  final String assetValue;
  final String redirectionUrl;

  const Socials({required this.assetValue, required this.redirectionUrl});
}

extension SocialsExtension on Socials {
  Future<void> onSocialClicked() async {
    String url = '';
    switch (this) {
      case Socials.instagram:
        url = Config.instagramLink;
      case Socials.linkedIn:
        url = Config.linkedInLink;
      case Socials.github:
        url = Config.githubLink;
    }

    html.window.open(url, 'blank');
  }
}
