import 'package:flutter/material.dart';

class PregnancyMonthOne extends StatefulWidget {
  const PregnancyMonthOne({super.key});

  @override
  State<PregnancyMonthOne> createState() => _PregnancyMonthOneState();
}

class _PregnancyMonthOneState extends State<PregnancyMonthOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "WEEKS",
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border:
                      Border.all(color: Colors.grey, style: BorderStyle.none),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "1 - 4",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 55,
                          ),
                          Center(
                            child: CircleAvatar(
                              radius: 150,
                              backgroundImage:
                                  AssetImage('assets/images/pregnancy1.png'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 215, 251, 232),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.green,
                              )),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Text("0"),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Weight",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 215, 251, 232),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.green,
                              )),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text("0.25 cm"),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Length",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 215, 251, 232),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.green,
                  )),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mom",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      "Menstrual cycle begins. Ovulation and conception. Early signs of pregnancy: missed period, light spotting, fatigue, breast tenderness. Start taking prenatal vitamins. Hormonal changes begin.",
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 215, 251, 232),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.green,
                  )),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Baby",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      "Fertilization, implantation, and initial cell division. Development of the neural tube, heart, and basic structures.",
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
