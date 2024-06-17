// ignore_for_file: use_key_in_widget_constructors, camel_case_types

import 'package:flutter/material.dart';

class screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 42, 233, 100),
      actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.menu))
            ],
      ),
      body:Padding(padding: const EdgeInsets.all(16),
      child:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [




          ],
        ),
      )
        
      ),
    );
  }
}