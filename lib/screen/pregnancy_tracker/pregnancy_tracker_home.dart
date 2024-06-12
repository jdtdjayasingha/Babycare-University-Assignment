import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:mobile_app/screen/pregnancy_tracker/pregnancy_month_eight.dart';
import 'package:mobile_app/screen/pregnancy_tracker/pregnancy_month_five.dart';
import 'package:mobile_app/screen/pregnancy_tracker/pregnancy_month_four.dart';
import 'package:mobile_app/screen/pregnancy_tracker/pregnancy_month_nine.dart';
import 'package:mobile_app/screen/pregnancy_tracker/pregnancy_month_one.dart';
import 'package:mobile_app/screen/pregnancy_tracker/pregnancy_month_seven.dart';
import 'package:mobile_app/screen/pregnancy_tracker/pregnancy_month_six.dart';
import 'package:mobile_app/screen/pregnancy_tracker/pregnancy_month_ten.dart';
import 'package:mobile_app/screen/pregnancy_tracker/pregnancy_month_three.dart';
import 'package:mobile_app/screen/pregnancy_tracker/pregnancy_month_two.dart';

class PregnancyTrackerHome extends StatefulWidget {
  const PregnancyTrackerHome({super.key});

  @override
  State<PregnancyTrackerHome> createState() => _PregnancyTrackerHomeState();
}

class _PregnancyTrackerHomeState extends State<PregnancyTrackerHome> {
  final myitems = [
    PregnancyMonthOne(),
    PregnancyMonthTwo(),
    PregnancyMonthThree(),
    PregnancyMonthFour(),
    PregnancyMonthFive(),
    PregnancyMonthSix(),
    PregnancyMonthSeven(),
    PregnancyMonthEight(),
    PregnancyMonthNine(),
    PregnancyMonthTen(),
  ];

  int myCurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  aspectRatio: 0.5,
                  onPageChanged: (index, reason) {
                    setState(() {
                      myCurrentIndex = index;
                    });
                  },
                ),
                items: myitems,
              ),
            ],
          ),
        ));
  }
}
