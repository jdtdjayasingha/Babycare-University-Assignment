import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mobile_app/screen/bmi_tracker/age_weight.dart';
import 'package:mobile_app/screen/bmi_tracker/height.dart';
import 'package:mobile_app/screen/bmi_tracker/score_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

class BMIScreen extends StatefulWidget {
  const BMIScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BMIScreenState createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {
  // ignore: unused_field
  int _height = 150;
  int _age = 30;
  int _weight = 50;
  bool _isFinished = false;
  double _bmiScore = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 10,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "BMI Calculator",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/bmi.png',
                      width: 180,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(0),
                  decoration: BoxDecoration(),
                  child: Column(
                    children: [
                      Height(
                        onChange: (heightVal) {
                          _height = heightVal;
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 15,
                          bottom: 5,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AgeWeight(
                                onChange: (ageVal) {
                                  _age = ageVal;
                                },
                                title: "Age",
                                initValue: 30,
                                min: 0,
                                max: 100),
                            AgeWeight(
                                onChange: (weightVal) {
                                  _weight = weightVal;
                                },
                                title: "Weight",
                                initValue: 50,
                                min: 0,
                                max: 200)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 60),
                        child: SwipeableButtonView(
                            isFinished: _isFinished,
                            onFinish: () async {
                              await Navigator.push(
                                  context,
                                  PageTransition(
                                      child: ScoreScreen(
                                        bmiScore: _bmiScore,
                                        age: _age,
                                      ),
                                      type: PageTransitionType.fade));

                              setState(() {
                                _isFinished = false;
                              });
                            },
                            onWaitingProcess: () {
                              //Calculate BMI here
                              calculateBmi();

                              Future.delayed(const Duration(seconds: 1), () {
                                setState(() {
                                  _isFinished = true;
                                });
                              });
                            },
                            activeColor: Colors.green,
                            buttonWidget: const Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.black,
                            ),
                            buttonText: "CALCULATE"),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  void calculateBmi() {
    _bmiScore = _weight / pow(_height / 100, 2);
  }
}
