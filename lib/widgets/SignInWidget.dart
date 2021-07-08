import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInWidget extends StatelessWidget {
  final Icon iconName;
  final String name;
  final VoidCallback onTap;

  SignInWidget(
      {required this.iconName, required this.name, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xff999999),
            ),
            borderRadius: BorderRadius.circular(8)),
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            iconName,
            SizedBox(
              width: 57,
            ),
            Text(
              '$name',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
                fontSize: 15,
              ),
            ),
          ],
        ),
        // child: ListTile(
        //   leading: Icon(FontAwesomeIcons.google),
        //   title: Text('Sign in with Google'),
      ),
    );
  }
}
