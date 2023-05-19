import 'package:flutter/material.dart';

const basicCardColor = Color(0xFF141931);
const inActiveCardColor = Color(0xFF101427);
const activeCardColor = Color(0xFF242740);
const inActiveGenderColor = Color(0xFF8F8F9A);
const activeGenderColor = Color(0xFFFFFFFF);
const valueFontSize = 40.0;
const labelFontSize = 20.0;
const iconSize = 60.0;

const kValueStyle = TextStyle(
  fontSize: 40,
  fontWeight: FontWeight.w900
);

const kLabelStyle = TextStyle(
  fontSize: 20,
  color: Colors.white
);

ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    shape: const CircleBorder(),
    backgroundColor: const Color(0xFF1C2033)
);

const kTitleTextStyle = TextStyle(
  fontSize: 50,
  fontWeight: FontWeight.bold
);

const kResultTextStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
  color: Colors.green,
);

const kBMITextStyle = TextStyle(
    fontSize: 100,
    fontWeight: FontWeight.w900
);