import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mobile_app/screen/login/loading.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => const LodingScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(225, 0, 255, 171),
              Color.fromARGB(225, 31, 171, 137),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 300,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 100,
                  ),
                  child: Image.asset(
                    'assets/images/babycare.png',
                    width: 270,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
