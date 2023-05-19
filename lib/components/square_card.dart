import 'package:flutter/material.dart';

class SquareCard extends StatelessWidget {
  const SquareCard({Key? key, this.color, this.cardChild}) : super(key: key);

  final Color? color;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color
      ),
      child: cardChild,
    );
  }
}