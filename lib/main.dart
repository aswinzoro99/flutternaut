import 'package:flutter/material.dart';
import 'package:flutternaut_frontend_webapp/presentation/base_screen/base_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    GoogleFonts.config.allowRuntimeFetching = false;

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BaseScreen(),
    );
  }
}
