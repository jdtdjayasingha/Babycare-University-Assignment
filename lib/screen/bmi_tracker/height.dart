import 'package:flutter/material.dart';

class Height extends StatefulWidget {
  final Function(int) onChange;

  const Height({super.key, required this.onChange});

  @override
  // ignore: library_private_types_in_public_api
  _HeightState createState() => _HeightState();
}

class _HeightState extends State<Height> {
  int _height = 150;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.circular(25),
          color: Colors.white,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            const Text(
              "Height",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  _height.toString(),
                  style: const TextStyle(fontSize: 30),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "cm",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                )
              ],
            ),
            Slider(
              min: 0,
              max: 240,
              value: _height.toDouble(),
              thumbColor: Colors.green,
              onChanged: (value) {
                setState(() {
                  _height = value.toInt();
                });
                widget.onChange(_height);
              },
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
