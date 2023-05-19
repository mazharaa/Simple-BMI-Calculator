import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/square_card.dart';
import 'package:bmi_calculator/screen/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/components/gender_card.dart';
import 'package:bmi_calculator/components/button_card.dart';
import 'package:bmi_calculator/components/gender_enum.dart';
import 'package:bmi_calculator/constant.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int _height = 170;
  int weightNumb = 10;
  int ageNumb = 10;
  GenderEnum? selectedGender;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI Calculator'
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: GenderCard(
                          genderIcon: FontAwesomeIcons.mars,
                          genderName: 'MALE',
                          cardColor: selectedGender == GenderEnum.male ?
                            activeCardColor : inActiveCardColor,
                          iconColor: selectedGender == GenderEnum.male ?
                            activeGenderColor : inActiveGenderColor,
                          onPress: () {
                            setState(() {
                              selectedGender = selectedGender == GenderEnum
                                .male ?
                              null : GenderEnum.male;
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: GenderCard(
                          genderIcon: FontAwesomeIcons.venus,
                          genderName: 'FEMALE',
                          cardColor: selectedGender == GenderEnum.female ?
                            activeCardColor : inActiveCardColor,
                          iconColor: selectedGender == GenderEnum.female ?
                            activeGenderColor : inActiveGenderColor,
                          onPress: () {
                            setState(() {
                              selectedGender = selectedGender == GenderEnum
                                .female ?
                              null : GenderEnum.female;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SquareCard(
                    color: basicCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'HEIGHT',
                          style: kLabelStyle,
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              _height.toString(),
                              style: kValueStyle
                            ),
                            const SizedBox(width: 5),
                            const Text(
                              'cm',
                              style: kLabelStyle,
                            )
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Colors.white,
                            inactiveTrackColor: const Color(0xFF8D8E98),
                            thumbColor: const Color(0xFFEB1555),
                            overlayColor: const Color(0x29EB1555),
                            thumbShape:
                              const RoundSliderThumbShape(
                                enabledThumbRadius: 15
                              ),
                            overlayShape:
                              const RoundSliderOverlayShape(
                                overlayRadius: 30
                              )
                          ),
                          child: Slider(
                            value: _height.toDouble(),
                            min: 120,
                            max: 220,
                            onChanged: (height) {
                              setState(() {
                                _height = height.toInt();
                              });
                            }
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: ButtonCard(
                          cardName: 'WEIGHT',
                          number: weightNumb,
                          subsButton: weightNumb == 0 ? null : () {
                            setState(() {
                              weightNumb --;
                            });
                          },
                          addButton: () {
                            setState(() {
                              weightNumb ++;
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: ButtonCard(
                          cardName: 'AGE',
                          number: ageNumb,
                          subsButton: ageNumb == 0 ? null : () {
                            setState(() {
                              ageNumb --;
                            });
                          },
                          addButton: () {
                            setState(() {
                              ageNumb ++;
                            });
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            label: 'CALCULATE YOUR BMI',
            onTap: () {
              CalculatorBrain calc = CalculatorBrain(_height, weightNumb);

              Navigator.push(context, MaterialPageRoute(
                builder: (context) => ResultPage(calc: calc)
              ));
            },
          )
        ],
      )
    );
  }
}
