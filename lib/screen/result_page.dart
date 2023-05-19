import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    Key? key,
    required this.calc
  }) : super(key: key);

  final CalculatorBrain calc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(30, 20, 0, 0),
            child: const Text(
              'Your Result',
              style: kTitleTextStyle
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.fromLTRB(30, 25, 30, 30),
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: basicCardColor
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 25),
                        Text(
                          calc.getResult(),
                          style: kResultTextStyle,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          calc.calculateBMI(),
                          style: kBMITextStyle,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Normal BMI Range:',
                          style: TextStyle(
                              color: inActiveGenderColor,
                              fontSize: 20
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                            '18,5 - 25 kg/m2',
                            style: kLabelStyle
                        ),
                        const SizedBox(height: 20),
                        Center(
                          child: Text(
                            calc.getInterpretation(),
                            style: kLabelStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 150,
                    color: inActiveCardColor,
                    child: const Center(
                      child: Text(
                        'SAVE RESULT',
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,)
                ]
              ),
            ),
          ),
          BottomButton(
            label: 'RE-CALCULATE YOUR BMI',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
