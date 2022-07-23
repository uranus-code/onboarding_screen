import 'package:flutter/material.dart';
import 'package:onboarding_tutorial/constants.dart';
import 'package:onboarding_tutorial/screens/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: kprimaryColor,
      ),
      home: OnBoardingScreen(),
    );
  }
}
