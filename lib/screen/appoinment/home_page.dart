import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'itemdetail.dart'; // Import the item detail page

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Container(
                width: double.infinity, // Make the container take full width
                decoration: BoxDecoration(
                  color: Colors.green[50],
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Colors.white,
                  ), // Set border color to green
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Search Here',
                    contentPadding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 5,
                left: 20,
                right: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildCatalogItem(
                    context,
                    'assets/doctor1.jpg',
                    'Dr. Sarah Chang',
                    'Cardiology',
                    [
                      ' Dr. Chang is a renowned cardiologist with over 20 years of experience in diagnosing and treating heart conditions. She specializes in interventional cardiology, particularly focusing on minimally invasive procedures such as angioplasty and stent placement. Dr. Chang is dedicated to providing personalized care to her patients, emphasizing lifestyle modifications along with medical treatments for optimal heart health.',
                    ],
                  ),
                  _buildCatalogItem(
                    context,
                    'assets/gounder.jpg',
                    'Dr. Michel Patel',
                    'Oncology',
                    [
                      'Dr. Patel is a leading oncologist known for his expertise in the treatment of various cancers, including lung, breast, and prostate cancer. With a compassionate approach, he guides his patients through their treatment journey, offering the latest advancements in chemotherapy, immunotherapy, and targeted therapies. Dr. Patel is committed to not only treating the disease but also improving his patients quality of life.',
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildCatalogItem(
                    context,
                    'assets/doctor5.jpg',
                    'Dr. Aisha Khan',
                    'Psychiatry',
                    [
                      ' Dr. Khan is a compassionate psychiatrist known for her comprehensive approach to mental health care. She specializes in the treatment of mood disorders, anxiety disorders, and trauma-related conditions. Dr. Khan believes in a holistic approach, integrating psychotherapy, medication management, and lifestyle modifications to help her patients achieve mental wellness and resilience.',
                    ],
                  ),
                  _buildCatalogItem(
                    context,
                    'assets/doctor6.jpg',
                    'Dr. William Chen',
                    'Neurology',
                    [
                      'Dr. Chen is a leading neurologist with expertise in treating disorders of the nervous system, including epilepsy, multiple sclerosis, and stroke. He specializes in neuroimaging techniques to accurately diagnose and monitor neurological conditions, guiding personalized treatment plans for his patients. Dr. Chen is committed to improving the quality of life for individuals living with neurological disorders through innovative therapies and compassionate care.',
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildCatalogItem(
                    context,
                    'assets/doctor3.jpg',
                    'Dr. Emily Nuyen',
                    'Pediatrics',
                    [
                      ' Dr. Nguyen is a dedicated pediatrician known for her warm demeanor and exceptional care for children of all ages. She emphasizes preventive medicine and educates parents on promoting their children s health through proper nutrition, immunizations, and regular check-ups. Dr. Nguyen has a special interest in developmental pediatrics, providing early intervention for children with developmental delays or disabilities.',
                    ],
                  ),
                  _buildCatalogItem(
                    context,
                    'assets/doctor4.jpg',
                    'Dr. Javi Ramirez',
                    'Orthopedics',
                    [
                      'Dr. Ramirez is a highly skilled orthopedic surgeon specializing in sports medicine and joint replacement. With advanced training in arthroscopic techniques, he treats a wide range of orthopedic conditions, from ACL injuries to degenerative joint diseases. Dr. Ramirez is committed to restoring his patients mobility and function, employing both surgical and non-surgical approaches tailored to each individual s needs.',
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCatalogItem(
    BuildContext context,
    String imagePath,
    String title,
    String subtitle,
    List<String> descriptions,
  ) {
    return GestureDetector(
      onTap: () {
        // Navigate to the item detail page when tapped
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ItemDetailPage(
              title: title,
              subtitle: subtitle,
              imagePath: imagePath,
              descriptions: descriptions,
              doctorName: '',
            ),
          ),
        );
      },
      child: Container(
        height: 250,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.symmetric(vertical: 10), // Adjust horizontal padding
        decoration: BoxDecoration(
          color: Colors.white, // Change container background color to grey
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              width: 150,
              height: 150,
            ),
            SizedBox(height: 10),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
