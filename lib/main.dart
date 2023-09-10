import 'package:flutter/material.dart';
import 'package:my_flutter_app/constants/Constantcolors.dart';
import 'package:my_flutter_app/screens/LandingPage/landingHelpers.dart';
import 'package:my_flutter_app/screens/Splashscreen/Splashscreen.dart';
import 'package:my_flutter_app/services/Authentication.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ConstantColors constantColors = ConstantColors();
    return MultiProvider(
      child : MaterialApp(
      home: Splashscreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor : constantColors.blueColor,
        fontFamily: 'Poppins',
        canvasColor: Colors.transparent
      ),
    ),
      providers: [
        ChangeNotifierProvider(create: (_) => Authentication()),
        ChangeNotifierProvider(create: (_) => LandingHelpers())

      ]);
  }
}
