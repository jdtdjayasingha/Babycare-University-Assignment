import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MomProfileDisplayData extends StatefulWidget {
  final String email;
  const MomProfileDisplayData({super.key, required this.email, required data});
  @override
  _MomProfileDisplayDataState createState() => _MomProfileDisplayDataState();
}

class _MomProfileDisplayDataState extends State<MomProfileDisplayData> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firestore Data'),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: _firestore.collection('saveMomDetails').where('email', isEqualTo: widget.email).snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Something went wrong');
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Text("Loading");
          }
          return ListView(
            children: snapshot.data!.docs.map((DocumentSnapshot document) {
              Map<String, dynamic> data = document.data() as Map<String, dynamic>;
              return ListTile(
                title: Text('Email: ${data['email']}'),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Age: ${data['age']}'),
                    Text('Fetus Age: ${data['fage']}'),
                    Text('Number: ${data['number']}'),
                    Text('Address: ${data['address']}'),
                    Image.network(data['imageLink']),
                  ],
                ),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}