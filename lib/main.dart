import 'package:flutter/material.dart';
import 'package:flutternaut_frontend_webapp/presentation/base_screen/base_screen.dart';
import 'package:flutternaut_frontend_webapp/theme/light_theme.dart';
import 'package:flutternaut_frontend_webapp/utils/locator.dart';
import 'package:google_fonts/google_fonts.dart';

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
      home: const BaseScreen(),
    );
  }

  Future<void> init() async {
    await setupInjector();
  }
}
