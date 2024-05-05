import 'package:babycare/screen/Login/doctor/doctor_sign_in.dart';
import 'package:babycare/screen/Login/user/user_sign_in.dart';
import 'package:flutter/material.dart';

class SignInSelectRole extends StatelessWidget {
  const SignInSelectRole({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 0,
            bottom: const TabBar(
              indicatorColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Tab(
                  child: Text(
                    'User',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Doctor',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: <Widget>[
              DoctorSignIn(),
              UserSignIn(),
            ],
          )),
    );
  }
}
