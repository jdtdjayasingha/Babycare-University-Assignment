import 'package:flutter/material.dart';

class AgeWeight extends StatefulWidget {
  final Function(int) onChange;

  final String title;

  final int initValue;

  final int min;

  final int max;

  const AgeWeight(
      {super.key,
      required this.onChange,
      required this.title,
      required this.initValue,
      required this.min,
      required this.max});

  @override
  // ignore: library_private_types_in_public_api
  _AgeWeightState createState() => _AgeWeightState();
}

class _AgeWeightState extends State<AgeWeight> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
    counter = widget.initValue;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.green,
            ),
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Column(children: [
            Text(
              widget.title,
              style: const TextStyle(fontSize: 18, color: Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  InkWell(
                    child: const CircleAvatar(
                      radius: 12,
                      backgroundColor: Colors.green,
                      child: Icon(Icons.remove, color: Colors.white),
                    ),
                    onTap: () {
                      setState(() {
                        if (counter > widget.min) {
                          counter--;
                        }
                      });
                      widget.onChange(counter);
                    },
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    counter.toString(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: Colors.black87,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  InkWell(
                    child: const CircleAvatar(
                      radius: 12,
                      backgroundColor: Colors.green,
                      child: Icon(Icons.add, color: Colors.white),
                    ),
                    onTap: () {
                      setState(() {
                        if (counter < widget.max) {
                          counter++;
                        }
                      });
                      widget.onChange(counter);
                    },
                  ),
                ],
              ),
            ),
          ]),
        ));
  }
}
