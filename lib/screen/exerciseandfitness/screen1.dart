// ignore_for_file: sized_box_for_whitespace, sort_child_properties_last, use_key_in_widget_constructors, camel_case_types

import 'package:flutter/material.dart';

class screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset("assets/5.webp")),
                    height: 200,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Warm Up",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Description",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "A warm-up generally consists of a gradual increase in intensity in physical activity (pulse raiser), joint mobility exercise, and stretching, followed by the activity. For example, before running or playing an intensive sport, athletes might slowly jog to warm their muscles and increase their heart rate.",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 2,
                  width: 500,
                  decoration: BoxDecoration(color: Colors.black),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Step 01",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Start With Light Cardio Keep your intensity low, aiming to raise your heart rate about 20 points (from 70 beats per minute to 90), Doubleday says. Ideally, the activity will mimic the motions of your workout. For example, walking or jogging to warm up for a run.",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Excercises",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "1. Hip Circles. Stand on one leg, using a countertop for support, and gently swing the opposite leg in circles out to the side. Do 20 circles in each direction. Switch legs. Progressively increase the size of the circles as you become more flexible.",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                Center(
                  child: Container(
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset("assets/4.jpg")),
                    height: 200,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "2. Arm Circles. Stand with feet shoulder-width apart and hold arms out to the sides, palms down, at shoulder height. Move your arms in circles 20 times in each direction. Progressively increase the size of the circles as you become more flexible.",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                Center(
                    child: Container(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset("assets/6.webp")),
                  height: 200,
                )),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "3. Arm Swings. Stand with arms outstretched forward, parallel to the floor with palms facing down. As you step forward, swing your arms in unison to the right so your left arm is in front of your chest and fingers point to the right. Keep torso and head facing forward; move only at the shoulders. Swing amrs in the opposite direction as you step again. Repeat five times on each side.",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                Center(
                    child: Container(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset("assets/7.webp")),
                  height: 200,
                )),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "4. High-Stepping. Stand with your feet parallel and shoulder-width apart. Step forward with the left leg and raise the right knee high toward your chest (use a wall for balance, if needed). Use both hands (or one, if using the other for balance) to pull the knee up farther. Pause and lower right leg, then repeat on the other side. Continue high-stepping five times on each leg as you walk forward.",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                Center(
                    child: Container(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset("assets/6.jpg")),
                  height: 200,
                )),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "5. Lunges with a Twist. Stand with feet parallel, then take an exaggerated step forward (keep one hand on a wall for balance, if needed) with your right foot, planting it fully on the floor in front of you. Allow the knee and hip to bend slowly while keeping your torso upright. Keep right knee directly over ankle – do not allow it to go beyond your toes. Slightly bend your left knee, lowering it until it is a couple of inches above the floor (or as far as flexibility allows). In this position, reach overhead (skip the overhead reach if your shoulders are compromised) with your left arm and bend torso toward the right. Return your torso to an upright position, and step forward with the left foot, back to starting position. Repeat five times on each side. (Note: Do not attempt this if you have trouble with balance.)",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                Center(
                    child: Container(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset("assets/5.jpg")),
                  height: 200,
                )),
              ],
            ),
          )),
    );
  }
}
