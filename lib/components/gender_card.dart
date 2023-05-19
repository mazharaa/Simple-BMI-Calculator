import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';
import 'square_card.dart';

class GenderCard extends StatelessWidget {
  const GenderCard({
    Key? key,
    required this.genderIcon,
    required this.genderName,
    required this.iconColor,
    required this.onPress,
    required this.cardColor
  }) : super(key: key);

  final IconData genderIcon;
  final String genderName;
  final Color iconColor;
  final VoidCallback onPress;
  final Color cardColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: SquareCard(
        color: cardColor,
        cardChild: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              genderIcon,
              size: iconSize,
              color: iconColor,
            ),
            const SizedBox(height: 15),
            Text(
              genderName,
              style: TextStyle(
                fontSize: labelFontSize,
                color: iconColor
              ),
            ),
          ],
        ),
      ),
    );
  }
}