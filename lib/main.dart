import 'package:flutter/material.dart';
import 'package:flutternaut_frontend_webapp/presentation/base_screen/base_screen.dart';
import 'package:flutternaut_frontend_webapp/theme/light_theme.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
}
