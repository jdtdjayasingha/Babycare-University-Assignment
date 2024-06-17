
// ignore_for_file: use_key_in_widget_constructors, camel_case_types, sort_child_properties_last, sized_box_for_whitespace

import 'package:flutter/material.dart';

class screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 12, 198, 55),
      actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.menu))
            ],
      ),
      body:Padding(padding: const EdgeInsets.all(16),
      child:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
               child: Container(
                
                child:ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset("assets/14.jpg")),
                height:200,
               ),


             ),
             SizedBox(height:20,),
              Text("Jumping Jack",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize:25
                          ),
               ),
               SizedBox(height:20,),
              Text("Description",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize:20
                          ),
               ),
               SizedBox(height:10,),
              Text("jumping jack a physical exercise in which you stand with your feet together and arms down, jump up and spread your arms and legs far apart and land, then jump and bring your feet together and arms down again: Do a few jumping jacks or pushups to raise your heart rate.",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize:15
                          ),
               ),
                SizedBox(height:20,),
               Container(
                  height: 2,
                  width: 500,
                  decoration: BoxDecoration(color:Colors.black),
               ),
            
               Center(
               child: Container(
                
                child:ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset("assets/18.jpg")),
                height:400,
               ),


             ),
             SizedBox(height:10,),
              Text("These steps will help you do jumping jacks properly without any injuries:",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize:15
                          ),
               ),
               SizedBox(height:20,),
               Text("1.Stand in a straight position with your feet together, arms fully extended, hands by your sides, and toes pointed forward. This athletic position is the starting step. \n2.Next, slightly bend your knee in a rapid movement, jump your feet out to your body’s sides, swing your arms out to either side and raise them above your head. Make sure to do all of these things simultaneously.\n3.After landing on the ground, reverse the pattern and return to your starting position with arms by your side and feet together.\n4.Repeat the entire process, performing between 10 to 100 reps for about six sets. Remember to maintain your posture and avoid slouching or twisting your toes outward.",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize:15
                          ),
               ),



          ],
        ),
      )
        
      ),
    );
  }
}