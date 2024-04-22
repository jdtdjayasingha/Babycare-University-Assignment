import 'package:babycare/screen/user_dashboard.dart';
import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UserDashboard(),
                    ),
                  );
                },
                child: Text("Enter Doctor Details"),
              )
            ],
          ),
        ],
      ),
    );
  }
}
