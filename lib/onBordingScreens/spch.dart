import 'dart:async';

import 'package:flutter/material.dart';

import '../Pages/multiple_splash_screen.dart';


class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({super.key});

  @override
  State<SplashScreen1> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen1> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const SplashScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[600],
      body: SafeArea(
        child: Center(
          child: Container(
            color:Colors.indigo[600],
            height: 500,
            width: 300,
            child: Image.network("https://cdn.iconscout.com/icon/free/png-512/free-letter-f-4901212-4078230.png?f=webp&w=512",color: Colors.white,
            ),
          ),

        ),
      ),

    );
  }
}




