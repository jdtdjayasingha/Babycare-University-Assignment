import 'package:babycare/screen/Login/doctor/doctor_sign_up.dart';
import 'package:babycare/screen/Login/mom/user_sign_up.dart';
import 'package:flutter/material.dart';

class SignUpSelectRole extends StatefulWidget {
  const SignUpSelectRole({super.key});

  @override
  State<SignUpSelectRole> createState() => _SignUpSelectRoleState();
}

class _SignUpSelectRoleState extends State<SignUpSelectRole> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 50,
          right: 50,
          top: 200,
        ),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DoctorSignUp()),
                );
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(255, 31, 171, 137),
                ),
                child: const Center(
                  child: Text(
                    "Doctor",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UserSignUp()),
                );
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(255, 31, 171, 137),
                ),
                child: const Center(
                  child: Text(
                    "User",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
