import 'package:babycare/screen/doctor/doctorlist.dart';
import 'package:babycare/screen/mom/menu.dart';
import 'package:babycare/screen/mom/momappointment.dart';
import 'package:babycare/screen/mom/momprofile.dart';
import 'package:flutter/material.dart';

class UserDashboard extends StatefulWidget {
  final String email;
  const UserDashboard({Key? key, required this.email}) : super(key: key);

  @override
  State<UserDashboard> createState() => _UserDashboardState();
}

class _UserDashboardState extends State<UserDashboard> {
  int _selectedIndex = 0;
  List<Widget> get _widgetOptions {
    return <Widget>[
      // Text(
      //   'Home',
      //   style: optionStyle,
      // ),
      Menu(),
      MomAppDisplayData(
        email: widget.email,
        data: null,
      ),
      DoctorDisplayData(),
      MomProfileDisplayData(
        email: widget.email,
        data: null,
      ),
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined),
            label: 'Appointment',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.man_3),
            label: 'Doctors',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
            label: 'Profile',
            backgroundColor: Colors.white,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 31, 171, 137),
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
