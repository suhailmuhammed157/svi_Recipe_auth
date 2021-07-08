import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Color boxColor;
  final Text buttonText;
  final VoidCallback onTap;

  ButtonWidget(
      {required this.boxColor, required this.buttonText, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56,
        width: 307,
        decoration: BoxDecoration(
            color: boxColor, borderRadius: BorderRadius.circular(200)),
        child: Center(child: buttonText),
      ),
    );
  }
}
