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
      '''7th Floor Awfis,Arihant Technopolis, Kandanchavadi,Chennai,Tamilnadu, 600096''';
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
          '''Built an e-KYC web app for creating demat accounts, enabling users to upload documents, verify bank details, undergo face detection, and sign digitally. The app also handles and displays PDFs seamlessly.''',
      detailedDescription:
          '''Developed an advanced e-KYC web application designed for users to create demat accounts for trading. The app features seamless image and document uploads from devices, bank account verification, and secure face detection. It includes a signature pad for drawing digital signatures and supports handling and displaying PDFs, providing a complete solution for efficient and secure user onboarding in financial services.''',
    ),
    Services(
      service: 'MOBILE APPLICATION DEVELOPER',
      smallDescription:
          '''Experienced in developing mobile applications with Flutter and iOS, focusing on creating high-performance, user-friendly apps. Expertise includes real-time communication, secure data handling, and backend integration''',
      detailedDescription:
          '''Extensive experience in mobile application development, working with both Flutter and iOS platforms. Developed and maintained multiple high-quality apps, utilizing Flutter SDK and Bloc architecture to create seamless, responsive user interfaces. Integrated Firebase for user authentication, data storage, and notifications, as well as third-party APIs to enhance functionality. Expertise also includes real-time communication using TCP socket connections, secure facial recognition for identity verification, and managing complex backend integrations, ensuring smooth and secure user experiences.''',
    ),
    Services(
      service: 'USER RESEARCH',
      smallDescription:
          '''Conducting thorough user research is essential before development, ensuring that applications align with user needs and current market trends. This approach leads to enhanced user experiences and greater product success''',
      detailedDescription:
          '''Prior to development, comprehensive user research is conducted to understand user needs, preferences, and behaviors. This involves analyzing current market trends and gathering insights through surveys, interviews, and usability testing. By prioritizing user experience from the outset, applications are designed to meet real user demands and provide intuitive interactions. This research-driven approach not only enhances usability but also helps identify potential gaps in the market, allowing for the development of innovative features that resonate with users. Ultimately, this commitment to understanding the user landscape leads to more effective and successful applications.''',
    ),
  ];

  static List<Work> workList = [
    Work(
      projectName: 'Flutternaut',
      minorDescription: 'Portfolio Website',
      assetPath: Assets.work1,
      projectUrl: 'https://aswinzoro99.github.io/flutternaut/',
      details:
          '''You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template,You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template,You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a templateYou can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template,You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template,You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template,You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template,You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template''',
    ),
    // Work(
    //   projectName: 'CubePlus by Tradejini',
    //   minorDescription: 'Trading app',
    //   assetPath: Assets.work2,
    //   projectUrl:
    //       'https://play.google.com/store/apps/details?id=com.nxtrad.cubeplus&hl=en_IN',
    //   details:
    //       '''You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template,You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template,You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a templateYou can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template,You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template,You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template,You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template,You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template''',
    // ),
    // Work(
    //   projectName: 'e-KYC by Tradejini',
    //   minorDescription: 'Onboarding app',
    //   assetPath: Assets.work3,
    //   projectUrl: 'https://ekyc.tradejini.com/#/onboarding',
    //   details:
    //       '''You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template,You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template,You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a templateYou can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template,You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template,You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template,You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template,You can customize a template or make your own from scratch,with an immersive library at your disposal. You can customize a template''',
    // ),
  ];
}
