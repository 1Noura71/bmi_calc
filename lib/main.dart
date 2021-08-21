import 'package:flutter/material.dart';

import '../screens/bmi_calculator_screen.dart';
import '../screens/result_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: BMICalculatorScreen(),
      routes:  {
        ResultPage.routeName : (context) => ResultPage(),
      },
    );
  }
}