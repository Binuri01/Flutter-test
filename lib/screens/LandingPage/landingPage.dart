import 'package:flutter/material.dart';
import 'package:my_flutter_app/constants/Constantcolors.dart';
import 'package:my_flutter_app/screens/LandingPage/landingHelpers.dart';
import 'package:provider/provider.dart';

class Landingpage extends StatelessWidget {
  const Landingpage({super.key});

  @override
  Widget build(BuildContext context) {
    final ConstantColors constantColors = ConstantColors();
    return Scaffold(
      backgroundColor: constantColors.whiteColor,
      body: Stack(
        children: [
          bodyColor(),
          Provider.of<LandingHelpers>(context, listen: false).bodyImage(context),
          Provider.of<LandingHelpers>(context, listen: false).taglineText(context),
          Provider.of<LandingHelpers>(context, listen: false).mainButton(context),
          Provider.of<LandingHelpers>(context, listen: false).privacyText(context)



        ],
      ),
    );
  }

  bodyColor(){
    final ConstantColors constantColors = ConstantColors();
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [
            0.5,
            0.9
          ], 
          colors: [
            constantColors.darkColor,
            constantColors.blueGreyColor
          ],
        )
      ),
    );
  }
}