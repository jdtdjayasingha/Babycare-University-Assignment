// ignore_for_file: use_key_in_widget_constructors, camel_case_types, sized_box_for_whitespace, sort_child_properties_last

import 'package:flutter/material.dart';

class screen3 extends StatelessWidget {
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
             Center(
               child: Container(
                
                child:ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset("assets/19.jpg")),
                height:200,
               ),


             ),
             SizedBox(height:20,),
              Text("Skipping",
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
              Text("Skipping raises the heart rate and tones muscles, all with a simple piece of equipment that's just a single length of rope, cord or cable and two handgrips. Jumping rope is both an aerobic and anaerobic workout and can be performed almost anywhere where there's some free space.",
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
                  child: Image.asset("assets/20.jpg")),
                height:300,
               )),
             Text("Why You Should Learn How to Jump Rope",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize:20
                          ),
               ),
               SizedBox(height:10,),
              Text("1.Skipping rope is a highly effective workout.\n Jumping rope is one of the most effective exercises around. Most people don't know that (which is why we call it the best-kept secret in fitness)Research has shown that you can burn over 1000 calories per hour jumping rope. Compared to other activities, it is one of the most effective cardio workouts, and it helps you burn serious calories.",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize:15
                          ),
               ),
              SizedBox(height:10,),
              Text("2.It's a fun workout to do.\nLet's be honest - treadmill runs and stationary bike sessions can be a little boring. Even the routine run around the block can get monotonous.The jump rope allows you to change things up. A skipping rope is a great fitness tool to integrate into your existing routine or use on its own.Learning how to jump rope is fun in itself. As your skills and coordination improve, you can start learning new jump rope skills and adding new exercises to your routine. As you level up, your confidence improves, your workouts become more effective, and you're excited to take on the next challenge.",
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