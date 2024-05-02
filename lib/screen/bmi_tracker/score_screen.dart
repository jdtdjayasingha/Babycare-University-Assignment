import 'package:flutter/material.dart';
import 'package:pretty_gauge/pretty_gauge.dart';

class ScoreScreen extends StatefulWidget {
  final double bmiScore;

  final int age;

  ScoreScreen({super.key, required this.bmiScore, required this.age});

  @override
  State<ScoreScreen> createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  String? bmiStatus;

  String? bmiInterpretation;

  Color? bmiStatusColor;

  @override
  Widget build(BuildContext context) {
    setBmiInterpretation();
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 10,
          ),
          child: Column(children: [
            const Text(
              "Mom Score",
              style: TextStyle(
                fontSize: 40,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            PrettyGauge(
              gaugeSize: 310,
              minValue: 0,
              maxValue: 40,
              segments: [
                GaugeSegment('UnderWeight', 18.5, Colors.red),
                GaugeSegment('Normal', 6.4, Colors.green),
                GaugeSegment('OverWeight', 5, Colors.orange),
                GaugeSegment('Obese', 10.1, Colors.pink),
              ],
              valueWidget: Text(
                widget.bmiScore.toStringAsFixed(1),
                style: const TextStyle(fontSize: 40),
              ),
              currentValue: widget.bmiScore.toDouble(),
              needleColor: Colors.blue,
            ),
            Text(
              bmiStatus!,
              style: TextStyle(fontSize: 50, color: bmiStatusColor!),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              bmiInterpretation!,
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(
                        25,
                      )),
                  child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Re-calculate")),
                ),
              ],
            )
          ])),
    );
  }

  void setBmiInterpretation() {
    if (widget.bmiScore > 30) {
      bmiStatus = "Obese";
      bmiInterpretation = "Please work to reduce obesity";
      bmiStatusColor = Colors.pink;
    } else if (widget.bmiScore >= 25) {
      bmiStatus = "Overweight";
      bmiInterpretation = "Do regular exercise & reduce the weight";
      bmiStatusColor = Colors.orange;
    } else if (widget.bmiScore >= 18.5) {
      bmiStatus = "NORMAL";
      bmiInterpretation = "Enjoy, You are fit";
      bmiStatusColor = Colors.green;
    } else if (widget.bmiScore < 18.5) {
      bmiStatus = "Underweight";
      bmiInterpretation = "Try to increase the weight";
      bmiStatusColor = Colors.red;
    }
  }
}
