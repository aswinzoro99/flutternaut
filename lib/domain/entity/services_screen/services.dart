class Services {
  final String service;
  final String smallDescription;
  final String detailedDescription;
  final String? imagePath;

  Services({
    required this.service,
    required this.smallDescription,
    required this.detailedDescription,
    this.imagePath,
  });
}
