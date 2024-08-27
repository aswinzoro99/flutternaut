import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutternaut_frontend_webapp/common/base_screen.dart';
import 'package:flutternaut_frontend_webapp/theme/light_theme.dart';
import 'package:flutternaut_frontend_webapp/utils/locator.dart';
import 'package:google_fonts/google_fonts.dart';

import 'common/constants.dart';
import 'generated/l10n.dart';
import 'url_strategy/url_strategy_handler.dart';

void main() {
  runApp(const FlutternautApp());
}

class FlutternautApp extends BaseScreen {
  const FlutternautApp({super.key});

  @override
  State<FlutternautApp> createState() => _FlutternautAppState();
}

class _FlutternautAppState extends BaseState<FlutternautApp> {
  @override
  void initState() {
    init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    GoogleFonts.config.allowRuntimeFetching = false;
    UrlStrategyHandler().setUrlStrategy();

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      themeMode: ThemeMode.light,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: {
        ...S.delegate.supportedLocales,
        ...S.delegate.supportedLocales,
      },
      routerConfig: appRouter.config(),
      title: Constants.appName,
    );
  }

  Future<void> init() async {
    await setupInjector();
  }
}
