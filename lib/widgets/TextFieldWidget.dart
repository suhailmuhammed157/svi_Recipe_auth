import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String hint;
  final TextInputType type;
  final bool obscureText;

  TextFieldWidget(
      {required this.hint,
      this.type = TextInputType.text,
      this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffF1F4FA),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: '$hint',
          contentPadding: EdgeInsets.all(20),
        ),
        keyboardType: type,
      ),
    );
  }
}
