// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `ABOUT`
  String get about {
    return Intl.message(
      'ABOUT',
      name: 'about',
      desc: '',
      args: [],
    );
  }

  /// `"Hello there! My name is Aswin Ranjith. I am a Flutter application developer with extensive experience in building mobile and web applications using Flutter SDK, Bloc architecture, and iOS development tools. I am passionate about crafting efficient, scalable solutions and dedicated to delivering high-quality user experiences."`
  String get aboutScreenDesc1 {
    return Intl.message(
      '"Hello there! My name is Aswin Ranjith. I am a Flutter application developer with extensive experience in building mobile and web applications using Flutter SDK, Bloc architecture, and iOS development tools. I am passionate about crafting efficient, scalable solutions and dedicated to delivering high-quality user experiences."',
      name: 'aboutScreenDesc1',
      desc: '',
      args: [],
    );
  }

  /// `"With over 4 years of experience as a professional Flutter and iOS application developer, I have gained the expertise and technical skills needed to build robust, user-friendly applications that drive success."`
  String get aboutScreenDesc2 {
    return Intl.message(
      '"With over 4 years of experience as a professional Flutter and iOS application developer, I have gained the expertise and technical skills needed to build robust, user-friendly applications that drive success."',
      name: 'aboutScreenDesc2',
      desc: '',
      args: [],
    );
  }

  /// `"Driven by innovation and a passion for crafting seamless digital experiences, I believe in building applications that not only meet client needs but exceed user expectations. With a strong foundation in Flutter and iOS development, I strive to deliver solutions that are both efficient and impactful."`
  String get aboutScreenDesc3 {
    return Intl.message(
      '"Driven by innovation and a passion for crafting seamless digital experiences, I believe in building applications that not only meet client needs but exceed user expectations. With a strong foundation in Flutter and iOS development, I strive to deliver solutions that are both efficient and impactful."',
      name: 'aboutScreenDesc3',
      desc: '',
      args: [],
    );
  }

  /// `ANY PROJECT?`
  String get anyProject {
    return Intl.message(
      'ANY PROJECT?',
      name: 'anyProject',
      desc: '',
      args: [],
    );
  }

  /// `ASWIN RANJITH...`
  String get aswinRanjith {
    return Intl.message(
      'ASWIN RANJITH...',
      name: 'aswinRanjith',
      desc: '',
      args: [],
    );
  }

  /// `ATTACH FILES`
  String get attachFiles {
    return Intl.message(
      'ATTACH FILES',
      name: 'attachFiles',
      desc: '',
      args: [],
    );
  }

  /// `based in`
  String get basedIn {
    return Intl.message(
      'based in',
      name: 'basedIn',
      desc: '',
      args: [],
    );
  }

  /// `BLOGS`
  String get blogs {
    return Intl.message(
      'BLOGS',
      name: 'blogs',
      desc: '',
      args: [],
    );
  }

  /// `Click to know more`
  String get clickToKnowMore {
    return Intl.message(
      'Click to know more',
      name: 'clickToKnowMore',
      desc: '',
      args: [],
    );
  }

  /// `Clients in India...`
  String get clientsInIndia {
    return Intl.message(
      'Clients in India...',
      name: 'clientsInIndia',
      desc: '',
      args: [],
    );
  }

  /// `CONTACT`
  String get contact {
    return Intl.message(
      'CONTACT',
      name: 'contact',
      desc: '',
      args: [],
    );
  }

  /// `Copied to clipboard`
  String get copiedToClipboard {
    return Intl.message(
      'Copied to clipboard',
      name: 'copiedToClipboard',
      desc: '',
      args: [],
    );
  }

  /// `Copy`
  String get copy {
    return Intl.message(
      'Copy',
      name: 'copy',
      desc: '',
      args: [],
    );
  }

  /// `Copyright ©2023 Aswin Ranjith. All right reserved.`
  String get copyrightDesc {
    return Intl.message(
      'Copyright ©2023 Aswin Ranjith. All right reserved.',
      name: 'copyrightDesc',
      desc: '',
      args: [],
    );
  }

  /// `Download CV`
  String get downloadCv {
    return Intl.message(
      'Download CV',
      name: 'downloadCv',
      desc: '',
      args: [],
    );
  }

  /// `Download my resume`
  String get downloadMyResume {
    return Intl.message(
      'Download my resume',
      name: 'downloadMyResume',
      desc: '',
      args: [],
    );
  }

  /// `Email cannot be empty`
  String get emailCannotBeEmpty {
    return Intl.message(
      'Email cannot be empty',
      name: 'emailCannotBeEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Expand`
  String get expand {
    return Intl.message(
      'Expand',
      name: 'expand',
      desc: '',
      args: [],
    );
  }

  /// `Experience`
  String get experience {
    return Intl.message(
      'Experience',
      name: 'experience',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong`
  String get genericErrorMessage {
    return Intl.message(
      'Something went wrong',
      name: 'genericErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `HOME`
  String get home {
    return Intl.message(
      'HOME',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Aswin.`
  String get homeScreenTitle {
    return Intl.message(
      'Aswin.',
      name: 'homeScreenTitle',
      desc: '',
      args: [],
    );
  }

  /// `India`
  String get india {
    return Intl.message(
      'India',
      name: 'india',
      desc: '',
      args: [],
    );
  }

  /// `Let’s talk with me`
  String get letsTalkWithMe {
    return Intl.message(
      'Let’s talk with me',
      name: 'letsTalkWithMe',
      desc: '',
      args: [],
    );
  }

  /// `Load more`
  String get loadMore {
    return Intl.message(
      'Load more',
      name: 'loadMore',
      desc: '',
      args: [],
    );
  }

  /// `Message cannot be empty`
  String get messageCannotBeEmpty {
    return Intl.message(
      'Message cannot be empty',
      name: 'messageCannotBeEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Minimise`
  String get minimise {
    return Intl.message(
      'Minimise',
      name: 'minimise',
      desc: '',
      args: [],
    );
  }

  /// `MY EXPERIENCE`
  String get myExperience {
    return Intl.message(
      'MY EXPERIENCE',
      name: 'myExperience',
      desc: '',
      args: [],
    );
  }

  /// `MY NAME IS`
  String get myNameIs {
    return Intl.message(
      'MY NAME IS',
      name: 'myNameIs',
      desc: '',
      args: [],
    );
  }

  /// `MY SPECIALITIES`
  String get mySpecialities {
    return Intl.message(
      'MY SPECIALITIES',
      name: 'mySpecialities',
      desc: '',
      args: [],
    );
  }

  /// `Name cannot be empty`
  String get nameCannotBeEmpty {
    return Intl.message(
      'Name cannot be empty',
      name: 'nameCannotBeEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Nice to meet you!`
  String get niceToMeetYou {
    return Intl.message(
      'Nice to meet you!',
      name: 'niceToMeetYou',
      desc: '',
      args: [],
    );
  }

  /// `1 file uploaded!`
  String get oneFileUploaded {
    return Intl.message(
      '1 file uploaded!',
      name: 'oneFileUploaded',
      desc: '',
      args: [],
    );
  }

  /// `REACH OUT ME`
  String get reachOutMe {
    return Intl.message(
      'REACH OUT ME',
      name: 'reachOutMe',
      desc: '',
      args: [],
    );
  }

  /// `RECENT PROJECT`
  String get recentProject {
    return Intl.message(
      'RECENT PROJECT',
      name: 'recentProject',
      desc: '',
      args: [],
    );
  }

  /// `Only Available in DESKTOP!!!`
  String get responsiveWindowMessage {
    return Intl.message(
      'Only Available in DESKTOP!!!',
      name: 'responsiveWindowMessage',
      desc: '',
      args: [],
    );
  }

  /// `SERVICES`
  String get services {
    return Intl.message(
      'SERVICES',
      name: 'services',
      desc: '',
      args: [],
    );
  }

  /// `Software Engineer`
  String get softwareEngineer {
    return Intl.message(
      'Software Engineer',
      name: 'softwareEngineer',
      desc: '',
      args: [],
    );
  }

  /// `Submit now`
  String get submitNow {
    return Intl.message(
      'Submit now',
      name: 'submitNow',
      desc: '',
      args: [],
    );
  }

  /// `Under Development`
  String get underDevelopment {
    return Intl.message(
      'Under Development',
      name: 'underDevelopment',
      desc: '',
      args: [],
    );
  }

  /// `WELCOME TO...`
  String get welcomeTo {
    return Intl.message(
      'WELCOME TO...',
      name: 'welcomeTo',
      desc: '',
      args: [],
    );
  }

  /// `work`
  String get work {
    return Intl.message(
      'work',
      name: 'work',
      desc: '',
      args: [],
    );
  }

  /// `WORKS`
  String get works {
    return Intl.message(
      'WORKS',
      name: 'works',
      desc: '',
      args: [],
    );
  }

  /// `Years experience...`
  String get yearsExperience {
    return Intl.message(
      'Years experience...',
      name: 'yearsExperience',
      desc: '',
      args: [],
    );
  }

  /// `''With over 4 years of experience in Flutter and iOS development, I have successfully built and maintained a wide range of mobile and web applications. My expertise includes using Flutter SDK, Bloc architecture, and Firebase for backend integration. I’ve led the development of real-time communication features and innovative solutions, such as secure facial recognition for financial applications, always aiming to deliver efficient and user-friendly digital experiences.''`
  String get withOver4YearsOfExperienceInFlutterAndIos {
    return Intl.message(
      '\'\'With over 4 years of experience in Flutter and iOS development, I have successfully built and maintained a wide range of mobile and web applications. My expertise includes using Flutter SDK, Bloc architecture, and Firebase for backend integration. I’ve led the development of real-time communication features and innovative solutions, such as secure facial recognition for financial applications, always aiming to deliver efficient and user-friendly digital experiences.\'\'',
      name: 'withOver4YearsOfExperienceInFlutterAndIos',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
