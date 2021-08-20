import 'package:flutter/material.dart';

import './bmi_calculator_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.amber,
        brightness: Brightness.dark,
      ),
      home: BMICalculatorScreen(),
    );
  }
}

