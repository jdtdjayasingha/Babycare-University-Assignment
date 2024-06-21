import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MomAppDisplayData extends StatefulWidget {
  final String email;
  const MomAppDisplayData({super.key, required this.email, required data});
  @override
  _MomAppDisplayDataState createState() => _MomAppDisplayDataState();
}

class _MomAppDisplayDataState extends State<MomAppDisplayData> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
        ),
        child: StreamBuilder<QuerySnapshot>(
          stream: _firestore
              .collection('appointments')
              .where('email', isEqualTo: widget.email)
              .snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return Text('Something went wrong');
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Text("Loading");
            }
            return ListView(
              children: snapshot.data!.docs.map((DocumentSnapshot document) {
                Map<String, dynamic> data =
                    document.data() as Map<String, dynamic>;
                return Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors
                            .white, // Change container background color to grey
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
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                          right: 20,
                        ),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'Full Name',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '${data['fullName']}',
                                  style: TextStyle(fontSize: 13),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Doctor Name',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '${data['Doctor']}',
                                  style: TextStyle(fontSize: 13),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Selected Date',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '${data['selectedDate']}',
                                  style: TextStyle(fontSize: 13),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Selected Time',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '${data['selectedTime']}',
                                  style: TextStyle(fontSize: 13),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Problem',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '${data['problem']}',
                                  style: TextStyle(fontSize: 13),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                );
              }).toList(),
            );
          },
        ),
      ),
    );
  }
}
