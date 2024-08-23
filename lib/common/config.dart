import 'package:flutternaut_frontend_webapp/domain/entity/services_screen/services.dart';

import '../domain/entity/about_screen/experience.dart';
import '../domain/entity/works_screen/works.dart';
import '../utils/assets.dart';

class Config {
  static const int responsiveTriggerWidth = 1100;
  static const String userName = 'ASWIN RANJITH';
  static const String mobNo = '+91 81292 48586';
  static const String age = '25 yrs';
  static const String experience = '04+';
  static const String clientsCount = '10+';
  static const String email = 'aswin1999ranjith@gmail.com';
  static const String address =
      '''7th Floor Awfis,Arihant Technopolis, Kandanchavadi,Chennai,Taminnadu, 600096''';
  static const String location = 'Chennai, India';
  static const String instagramLink =
      "https://www.instagram.com/aswin_ranjith/";
  static const String linkedInLink =
      "https://www.linkedin.com/in/aswin-ranjith-dev";
  static const String githubLink = "https://github.com/aswinzoro99/";
  static const String resumeDonwloadLink =
      "https://aswin-ranjith-resume.tiiny.site/";

  static List<Experience> experienceList = [
    Experience(
      position: 'Flutter Application Developer',
      company: 'IOURING PRIVATE LTD.',
      duration: 'APRIL 2022 - PRESENT',
    ),
    Experience(
      position: 'iOS Application Developer',
      company: 'Market Simplified India PVT. LTD.',
      duration: 'NOVEMBER 2020 - MARCH 2022',
    ),
  ];

  static List<Services> servicesList = [
    Services(
      service: 'WEB APPLICATION DEVELOPER',
      smallDescription:
          '''You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template''',
      detailedDescription:
          '''You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template,You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template,You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a templateYou can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template,You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template,You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template,You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template,You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template''',
    ),
    Services(
      service: 'MOBILE APPLICATION DEVELOPER',
      smallDescription:
          '''You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template''',
      detailedDescription:
          '''You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template,You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template,You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a templateYou can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template,You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template,You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template,You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template,You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template''',
    ),
    Services(
      service: 'UI/UX DESIGN',
      smallDescription:
          '''You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template''',
      detailedDescription:
          '''You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template,You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template,You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a templateYou can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template,You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template,You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template,You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template,You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template''',
    ),
    Services(
      service: 'USER RESEARCH',
      smallDescription:
          '''You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template''',
      detailedDescription:
          '''You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template,You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template,You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a templateYou can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template,You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template,You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template,You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template,You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template''',
    ),
  ];

  static List<Work> workList = [
    Work(
      projectName: 'Flutternaut',
      minorDescription: 'Portfolio Website',
      assetPath: Assets.work1,
    ),
    Work(
      projectName: 'CubePlus by Tradejini',
      minorDescription: 'Trading app',
      assetPath: Assets.work2,
    ),
    Work(
      projectName: 'e-KYC by Tradejini',
      minorDescription: 'Onboarding app',
      assetPath: Assets.work3,
    ),
    Work(
      projectName: 'Flutternaut',
      minorDescription: 'Portfolio Website',
      assetPath: Assets.work4,
    ),
  ];
}
