import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({
    Key? key,
    required this.onPressed,
    required this.icon
  }) : super(key: key);

  final VoidCallback? onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      constraints: const BoxConstraints.tightFor(
          height: 56,
          width: 56
      ),
      shape: const CircleBorder(),
      fillColor: onPressed == null ? const Color(0xFF34363f)
          : const Color(0xFF4C4F5E),
      elevation: 6,
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}