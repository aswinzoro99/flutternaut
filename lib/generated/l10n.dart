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

  /// `Aswin.`
  String get homeScreenTitle {
    return Intl.message(
      'Aswin.',
      name: 'homeScreenTitle',
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

  /// `HOME`
  String get home {
    return Intl.message(
      'HOME',
      name: 'home',
      desc: '',
      args: [],
    );
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

  /// `SERVICES`
  String get services {
    return Intl.message(
      'SERVICES',
      name: 'services',
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

  /// `BLOGS`
  String get blogs {
    return Intl.message(
      'BLOGS',
      name: 'blogs',
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

  /// `Copyright ©2023 Aswin Ranjith. All right reserved.`
  String get copyrightDesc {
    return Intl.message(
      'Copyright ©2023 Aswin Ranjith. All right reserved.',
      name: 'copyrightDesc',
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

  /// `ASWIN RANJITH...`
  String get aswinRanjith {
    return Intl.message(
      'ASWIN RANJITH...',
      name: 'aswinRanjith',
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

  /// `based in`
  String get basedIn {
    return Intl.message(
      'based in',
      name: 'basedIn',
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

  /// `Under Development`
  String get underDevelopment {
    return Intl.message(
      'Under Development',
      name: 'underDevelopment',
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

  /// `WELCOME TO...`
  String get welcomeTo {
    return Intl.message(
      'WELCOME TO...',
      name: 'welcomeTo',
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
