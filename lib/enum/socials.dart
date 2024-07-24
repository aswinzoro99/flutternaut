import '../utils/assets.dart';

enum Socials {
  instagram(
    assetValue: Assets.instagram,
    redirectionUrl: 'https://www.instagram.com/aswin_ranjith/',
  ),
  linkedIn(
    assetValue: Assets.linkedIn,
    redirectionUrl: 'https://www.linkedin.com/in/aswin-ranjith-dev',
  ),
  github(
    assetValue: Assets.github,
    redirectionUrl: 'https://github.com/aswinzoro99',
  );

  final String assetValue;
  final String redirectionUrl;

  const Socials({required this.assetValue, required this.redirectionUrl});
}
