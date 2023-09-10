import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_flutter_app/constants/Constantcolors.dart';
import 'package:my_flutter_app/screens/LandingPage/landingPage.dart';
import 'package:page_transition/page_transition.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  ConstantColors constantColors = ConstantColors();

  @override
  void initState() {
    Timer(
      Duration(
        seconds: 1
      ), 
      () => Navigator.pushReplacement(context, PageTransition(child: Landingpage(), type: PageTransitionType.leftToRight))
    );
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: constantColors.darkColor,
      body: Center(
        child: RichText(
          text: TextSpan(
            text: 'the',
            style: TextStyle(
              fontFamily: 'Poppins',
              color: constantColors.whiteColor,
              fontWeight: FontWeight.bold,
              fontSize: 30.0
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'Social',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: constantColors.blueColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 34.0
                )
              )
            ]
          ),
          ), 
        ),
    );
  }
}