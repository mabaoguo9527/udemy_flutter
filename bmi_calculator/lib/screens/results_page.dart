import 'package:flutter/material.dart';

import '../components/bottom_button.dart';
import '../components/resusable_card.dart';
import '../constants.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({super.key, required this.interpretation, required this.bmiResult, required this.resultText});

  final String? bmiResult;
  final String? resultText;
  final String? interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // 标题
          Expanded(
            child: Container(
              //padding: EdgeInsets.all(15.0),
              //margin: EdgeInsets.only(top: 10),
              alignment: Alignment.bottomLeft,
              child: Text('Your Result', style: kTiltleTextStyle),
            ),
          ),
          Expanded(
            flex: 7,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText!,
                    style: kResultTextStyle,
                  ),
                  Text(bmiResult!, style: kBMITextStyle),
                  Text(
                    interpretation!,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'RE-CACULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
