import 'package:financeapp/Pages/multiple_splash_screen.dart';
import 'package:financeapp/onBordingScreens/spch.dart';
import 'package:flutter/material.dart';

import 'Pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      home: SplashScreen1(),
    );
  }
}




