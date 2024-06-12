import 'package:babycare/screen/Login/mom/user_sign_in.dart';
import 'package:babycare/screen/Login/sign_in_select_role.dart';
import 'package:babycare/screen/test.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class MomSuccess extends StatelessWidget {
  const MomSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 100,
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/babycare.png',
                      width: 220,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [],
                ),
                const SizedBox(height: 30.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(201, 166, 245, 190),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                          children: [
                            const Text(
                              "Mom Registration is",
                              style: TextStyle(
                                fontSize: 25,
                                color: Color.fromARGB(255, 9, 9, 9),
                              ),
                            ),
                            const Text(
                              "Successful !",
                              style: TextStyle(
                                fontSize: 25,
                                color: Color.fromARGB(255, 9, 9, 9),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Image.asset(
                              'assets/images/ok.png',
                              width: 100,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 102, 172, 123),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignInSelectRole(),
                      ),
                    );
                  },
                  child: const Text(
                    '  OK  ',
                    style: TextStyle(color: Colors.white),
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
