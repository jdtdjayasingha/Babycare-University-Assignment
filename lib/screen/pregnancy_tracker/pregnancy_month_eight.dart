import 'package:flutter/material.dart';

class PregnancyMonthEight extends StatefulWidget {
  const PregnancyMonthEight({super.key});

  @override
  State<PregnancyMonthEight> createState() => _PregnancyMonthEightState();
}

class _PregnancyMonthEightState extends State<PregnancyMonthEight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "WEEKS",
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "31 - 35",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
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
                              radius: 160,
                              backgroundImage:
                                  AssetImage('assets/images/pregnancy8.png'),
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
                                color: Color.fromARGB(255, 215, 251, 232),
                              )),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text("2.38 kg"),
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
                                color: Color.fromARGB(255, 215, 251, 232),
                              )),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text("32.4 cm"),
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
                    color: Color.fromARGB(255, 215, 251, 232),
                  )),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mom",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      "Discuss labor and delivery options. Increased back pain and pelvic pressure. Pack your hospital bag. Baby’s movements may feel different due to less space. Possible leakage of colostrum (early breast milk).",
                      style: TextStyle(
                        fontSize: 12,
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
                    color: Color.fromARGB(255, 215, 251, 232),
                  )),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Baby",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      "Baby’s immune system develops. More regular sleep and wake cycles. Coordination improves (can grasp objects).",
                      style: TextStyle(
                        fontSize: 12,
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
