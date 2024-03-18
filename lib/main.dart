import 'package:flutter/material.dart';
import 'package:tatak_form/landing_page1.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LandingPage1(),
      debugShowCheckedModeBanner: false,

    );
  }
}

