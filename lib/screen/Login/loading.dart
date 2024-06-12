import 'dart:async';
import 'package:flutter/material.dart';

class LodingScreen extends StatefulWidget {
  const LodingScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LodingScreenState createState() => _LodingScreenState();
}

class _LodingScreenState extends State<LodingScreen> {
  double _progress = 0;

  @override
  void initState() {
    super.initState();
    _startLoading();
  }

  void _startLoading() {
    Timer.periodic(const Duration(milliseconds: 300), (Timer timer) {
      if (_progress >= 1) {
        timer.cancel();
        _navigateToHome();
      } else {
        setState(() {
          _progress += 0.2;
        });
      }
    });
  }

  _navigateToHome() async {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const Scaffold(),
      ),
    );
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
                Padding(
                  padding: const EdgeInsets.only(
                    left: 80,
                    right: 80,
                  ),
                  child: LinearProgressIndicator(
                    value: _progress,
                    backgroundColor: Color.fromARGB(180, 217, 217, 217),
                    minHeight: 12.0,
                    borderRadius: BorderRadius.circular(30),
                    valueColor: AlwaysStoppedAnimation<Color>(
                      const Color.fromARGB(200, 0, 128, 0),
                    ),
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
