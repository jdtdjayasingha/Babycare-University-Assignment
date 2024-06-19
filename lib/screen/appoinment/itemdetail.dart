import 'package:flutter/material.dart';
import 'appoinment.dart';

class ItemDetailPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;
  final List<String> descriptions;
  final String doctorName; // New parameter to store the doctor's name

  const ItemDetailPage({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.imagePath,
    required this.descriptions,
    required this.doctorName, // Add doctorName to the constructor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 50,
                right: 50,
              ),
              child: Image.asset(
                imagePath,
              ),
            ),
            SizedBox(height: 20),
            Text(
              title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              subtitle,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            for (String description in descriptions)
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      description,
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  SizedBox(height: 40),
                  SizedBox(
                    height: 50, // Set the desired height here
                    width: 350, // Set the desired width here
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AppointmentPage(
                              doctorName:
                                  doctorName, // Pass the doctor's name to AppointmentPage
                            ),
                          ),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 31, 171, 137),
                        ),
                      ),
                      child: Text(
                        'Schedule Appointment',
                        style: TextStyle(
                          fontSize: 18, // Set the desired font size here
                          color: Colors.white, // Set the text color to white
                        ),
                      ),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
