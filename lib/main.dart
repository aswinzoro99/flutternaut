import 'package:flutter/material.dart';
import 'package:flutternaut_frontend_webapp/presentation/base_screen/base_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const BaseScreen(),
    );
  }
}
