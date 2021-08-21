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
        primaryColor: Color(0xff0a0e21),
        scaffoldBackgroundColor: Color(0xff0a0e21),
      ),
      home: BMICalculatorScreen(),
      routes:  {
        ResultPage.routeName : (context) => ResultPage(),
      },
    );
  }
}