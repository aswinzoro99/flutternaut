import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutternaut_frontend_webapp/presentation/base_screen/root_screen.dart';
import 'package:flutternaut_frontend_webapp/theme/light_theme.dart';
import 'package:flutternaut_frontend_webapp/utils/locator.dart';
import 'package:google_fonts/google_fonts.dart';

import 'generated/l10n.dart';

void main() {
  runApp(const FlutternautApp());
}

class FlutternautApp extends StatefulWidget {
  const FlutternautApp({super.key});

  @override
  State<FlutternautApp> createState() => _FlutternautAppState();
}

class _FlutternautAppState extends State<FlutternautApp> {
  @override
  void initState() {
    init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    GoogleFonts.config.allowRuntimeFetching = false;

    return MaterialApp(
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
      home: const RootScreen(),
    );
  }

  Future<void> init() async {
    await setupInjector();
  }
}
