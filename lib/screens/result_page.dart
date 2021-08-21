import 'package:flutter/material.dart';

import '../constant.dart';
import '../widgets/bottom_button.dart';
import '../widgets/reusable_container.dart';

class ResultPage extends StatelessWidget {
  static const routeName = '/result';

  final String? bmiResult;
  final String? resultText;
  final String? interpretation;

  const ResultPage({Key? key, this.bmiResult, this.resultText, this.interpretation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final resultPage = ModalRoute.of(context)!.settings.arguments! as ResultPage;
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(15),
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableContainer(
              color: kActiveColor,
              containerChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Center(
                      child: Text(resultPage.resultText!, style: kResultTextStyle),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      resultPage.bmiResult!,
                      style: kBMITextStyle,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      resultPage.interpretation!,
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonText: 'RE - CALCULATE',
            onTap: () => Navigator.pushNamed(
              context,
              '/',
            ),
          )
        ],
      ),
    );
  }
}
