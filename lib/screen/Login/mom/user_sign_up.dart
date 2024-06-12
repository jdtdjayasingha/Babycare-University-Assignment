import 'package:babycare/screen/Login/mom/enter_mom_details.dart';
import 'package:babycare/screen/Login/mom/user_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class UserSignUp extends StatefulWidget {
  const UserSignUp({super.key});

  @override
  State<UserSignUp> createState() => _UserSignUpState();
}

class _UserSignUpState extends State<UserSignUp> {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final email = TextEditingController();
  final password = TextEditingController();

  Future<void> signup(BuildContext context) async {
    try {
      final userCredential = await firebaseAuth.createUserWithEmailAndPassword(
        email: email.text.toString(),
        password: password.text.toString(),
      );
      if (userCredential.user != null) {
        Get.snackbar("Sign Up", "Success");
        // Navigate to the topup page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => EnterMomDetails()),
        );
      } else {
        Get.snackbar("Sign Up", "Failed");
      }
    } catch (error) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Failed"),
            content: Text("There was an error during sign up"),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("OK"),
              ),
            ],
          );
        },
      );
      print("Error: $error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 25,
            right: 25,
            top: 5,
          ),
          child: Column(
            children: [
              _header(context),
              _inputField(context),
              _signup(context),
            ],
          ),
        ),
      ),
    );
  }

  _header(context) {
    return const Column(
      children: [
        Text(
          "CREATE USER",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "ACCOUT",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }

  _inputField(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          controller: email,
          decoration: InputDecoration(
            hintText: "User Email",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                borderSide: BorderSide.none),
            fillColor: Colors.green[50],
            filled: true,
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        TextField(
          controller: password,
          decoration: InputDecoration(
            hintText: "Password",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none),
            fillColor: Colors.green[50],
            filled: true,
          ),
          obscureText: true,
        ),
        const SizedBox(
          height: 25,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: "Confirm Password",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none),
            fillColor: Colors.green[50],
            filled: true,
          ),
          obscureText: true,
        ),
        SizedBox(
          height: 15,
        ),
        const SizedBox(
          height: 15,
        ),
        GestureDetector(
          onTap: () {
            signup(context);
          },
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color.fromARGB(255, 31, 171, 137),
            ),
            child: const Center(
              child: Text(
                "Next",
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
          height: 15,
        ),
      ],
    );
  }

  _signup(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Already have an account?"),
        TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const UserSignIn()),
              );
            },
            child: const Text(
              "Sign In",
              style: TextStyle(color: Colors.green),
            ))
      ],
    );
  }
}
