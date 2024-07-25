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
