import 'package:bmi_calculator/components/round_icon_button.dart';
import 'package:bmi_calculator/components/square_card.dart';
import 'package:flutter/material.dart';
import '../constant.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtonCard extends StatelessWidget {
  const ButtonCard({
    Key? key,
    required this.cardName,
    required this.number,
    this.addButton,
    this.subsButton
  }) : super(key: key);

  final String cardName;
  final int number;
  final VoidCallback? addButton;
  final VoidCallback? subsButton;

  @override
  Widget build(BuildContext context) {
    return SquareCard(
      color: basicCardColor,
      cardChild: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            cardName,
            style: kLabelStyle,
          ),
          const SizedBox(height: 5),
          Text(
            '$number',
            style: kValueStyle
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RoundIconButton(
                onPressed: subsButton,
                icon: FontAwesomeIcons.minus
              ),
              const SizedBox(width: 15),
              RoundIconButton(
                onPressed: addButton,
                icon: FontAwesomeIcons.plus
              ),
            ],
          )
        ],
      )
    );
  }
}
