import 'package:flutter/material.dart';

import '../screens/result_page.dart';
import '../calculator_methods.dart';
import './bottom_button.dart';

class CalculatorButton extends StatelessWidget {
  final int height;
  final int weight;
  const CalculatorButton({ Key? key, required this.height, required this.weight }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomButton(
      onTap: () {
        CalculatorMethod calc =
            CalculatorMethod(height: height, weight: weight);
        Navigator.pushNamed(
          context,
          ResultPage.routeName,
          arguments: ResultPage(
            bmiResult: calc.calculateBMI(),
            resultText: calc.getResult(),
            interpretation: calc.getInterpretation(),
          ),
        );
      },
      buttonText: 'CALCULATE',
    );
  }
}