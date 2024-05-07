import 'package:flutter/material.dart';
import 'appointment_model.dart';
import 'firebase_service.dart';

class AppointmentPage extends StatefulWidget {
  final String doctorName; // Add doctorName parameter to the constructor

  const AppointmentPage({super.key, required this.doctorName});

  @override
  _AppointmentPageState createState() => _AppointmentPageState();
}

class _AppointmentPageState extends State<AppointmentPage> {
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _problemController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Appointment'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Text(
                    'Set Date: ',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    _selectedDate != null
                        ? '${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}'
                        : 'Select a date',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  _showDatePicker(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(
                      255, 48, 239, 147), // Change button color to green
                  padding: EdgeInsets.symmetric(
                      vertical: 10), // Increase vertical padding
                ),
                child: Text(
                  'Select Date',
                  style: TextStyle(
                      color: Colors.white), // Change text color to white
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Text(
                    'Set Time: ',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    _selectedTime != null
                        ? '${_selectedTime!.hourOfPeriod}:${_selectedTime!.minute} ${_selectedTime!.period == DayPeriod.am ? 'AM' : 'PM'}'
                        : 'Select a time',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  _showTimePicker(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(
                      255, 48, 239, 147), // Change button color to green
                  padding: EdgeInsets.symmetric(
                      vertical: 10), // Increase vertical padding
                ),
                child: Text(
                  'Select Time',
                  style: TextStyle(
                      color: Colors.white), // Change text color to white
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Patient Details',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Full Name',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextFormField(
                controller: _fullNameController,
                decoration: InputDecoration(
                  hintText: 'Enter your full name',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Age',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextFormField(
                controller: _ageController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter your age',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Write your problem',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextFormField(
                controller: _problemController,
                maxLines: 3,
                decoration: InputDecoration(
                  hintText: 'Describe your problem',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _setAppointment,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 48, 239, 147),
                    padding: EdgeInsets.symmetric(vertical: 20),
                  ),
                  child: Text(
                    'Set Appointment',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Future<void> _showDatePicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(DateTime.now().year + 1),
      // Customize the theme here
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData(
            primaryColor:
                const Color.fromARGB(255, 48, 239, 147), // Green color
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
            ),
            colorScheme: ColorScheme.light(
                    primary: const Color.fromARGB(255, 48, 239, 147))
                .copyWith(secondary: const Color.fromARGB(255, 48, 239, 147)),
          ),
          child: child!,
        );
      },
    );

    if (picked != null) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  Future<void> _showTimePicker(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      // Customize the theme here
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData(
            primaryColor:
                const Color.fromARGB(255, 48, 239, 147), // Green color
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
            ),
            colorScheme: ColorScheme.light(
                    primary: const Color.fromARGB(255, 48, 239, 147))
                .copyWith(secondary: const Color.fromARGB(255, 48, 239, 147)),
          ),
          child: child!,
        );
      },
    );

    if (picked != null) {
      setState(() {
        _selectedTime = picked;
      });
    }
  }

  final FirebaseService _firebaseService = FirebaseService();

  void _setAppointment() {
    if (_selectedDate != null &&
        _selectedTime != null &&
        _fullNameController.text.isNotEmpty &&
        _ageController.text.isNotEmpty &&
        _problemController.text.isNotEmpty) {
      Appointment appointment = Appointment(
        selectedDate: _selectedDate!,
        selectedTime: '${_selectedTime!.hour}:${_selectedTime!.minute}',
        fullName: _fullNameController.text,
        age: int.parse(_ageController.text),
        problem: _problemController.text,
        doctorName: '',
      );

      _firebaseService
          .addAppointment(
        appointment.copyWith(doctorName: widget.doctorName),
        doctorName: widget.doctorName,
        userEmail: '',
        appointment: appointment, // Pass the doctor's name
      )
          .then((value) {
        // Handle success
        print('Appointment saved to Firestore!');
        // Clear the input fields after saving
        _fullNameController.clear();
        _ageController.clear();
        _problemController.clear();
        setState(() {
          _selectedDate = null;
          _selectedTime = null;
        });
      }).catchError((error) {
        // Handle error
        print('Failed to save appointment: $error');
      });
    } else {
      // Display an error message or alert if any required field is empty
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Please fill in all the fields.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }
}
