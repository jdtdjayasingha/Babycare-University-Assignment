import 'package:babycare/screen/doctor/doctorhome.dart';
import 'package:babycare/screen/doctor/doctorprofile.dart';
import 'package:babycare/screen/doctor/doctorschedule.dart';
import 'package:flutter/material.dart';

class DoctorDashboard extends StatefulWidget {
  final String email;
  const DoctorDashboard({Key? key, required this.email}) : super(key: key);

  @override
  State<DoctorDashboard> createState() => _DoctorDashboardState();
}

class _DoctorDashboardState extends State<DoctorDashboard> {
  int _selectedIndex = 0;
  late List<Widget> _widgetOptions;

  @override
  void initState() {
    super.initState();
    _widgetOptions = <Widget>[
      // Text(
      //   'Home',
      //   style: optionStyle,
      // ),
      DoctorHomeScreen(),
      DoctorSchedule(),
      DoctorProfileDisplayData(
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
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 31, 171, 137),
        onTap: _onItemTapped,
      ),
    );
  }
}
