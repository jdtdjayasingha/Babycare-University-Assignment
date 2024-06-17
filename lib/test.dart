import 'package:flutter/material.dart';

class MomProfileDisplayData extends StatefulWidget {
  const MomProfileDisplayData({super.key});

  @override
  State<MomProfileDisplayData> createState() => _MomProfileDisplayDataState();
}

class _MomProfileDisplayDataState extends State<MomProfileDisplayData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(
                      'assets/profile.jpg'), // Add a local image in your assets
                ),
                SizedBox(height: 10),
                Text(
                  'Charles Cyrus',
                  style: TextStyle(fontSize: 22),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'PERSONAL',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    PersonalInfoRow(label: 'First Name', value: 'Charles'),
                    PersonalInfoRow(label: 'Last Name', value: 'Cyrus'),
                    PersonalInfoRow(
                        label: 'Email', value: 'charles.cyrus@email.com'),
                    PersonalInfoRow(label: 'Phone', value: '+60 6585 8985'),
                    PersonalInfoRow(
                        label: 'Second Phone', value: '+60 6585 8986'),
                    SizedBox(height: 20),
                    Text(
                      'SUBSCRIPTION',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'You can use a free trial for 3 months.',
                      style: TextStyle(fontSize: 16),
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                          ),
                          child: Text('VIEW MY LISTINGS'),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                          ),
                          child: Text('DELETE ACCOUNT'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PersonalInfoRow extends StatelessWidget {
  final String label;
  final String value;

  PersonalInfoRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          Text(
            value,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
