import 'package:flutter/material.dart';

class DoctorSignIn extends StatefulWidget {
  const DoctorSignIn({super.key});

  @override
  State<DoctorSignIn> createState() => _DoctorSignInState();
}

class _DoctorSignInState extends State<DoctorSignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(
            25.0,
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
        SizedBox(
          height: 10,
        ),
        Text(
          "WELCOME BACK!",
          style: TextStyle(
            fontSize: 35,
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
          decoration: InputDecoration(
              hintText: "Enter Your Email",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide.none),
              fillColor: Colors.green[50],
              filled: true,
              prefixIcon: const Icon(Icons.person)),
        ),
        const SizedBox(
          height: 25,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: "Enter Your Password",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none),
            fillColor: Colors.green[50],
            filled: true,
            prefixIcon: const Icon(Icons.lock),
          ),
          obscureText: true,
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Checkbox(
                  side: MaterialStateBorderSide.resolveWith(
                    (states) => const BorderSide(
                      width: 1.0,
                      color: Colors.black,
                    ),
                  ),
                  value: false,
                  onChanged: (newValue) {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7)),
                ),
                const Text(
                  "Remember me",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Forget Password?",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color.fromARGB(255, 31, 171, 137),
            ),
            child: const Center(
              child: Text(
                "Login",
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
        const Text("Don't have an account?"),
        TextButton(
            onPressed: () {},
            child: const Text(
              "Sign Up",
              style: TextStyle(color: Colors.green),
            ))
      ],
    );
  }
}
