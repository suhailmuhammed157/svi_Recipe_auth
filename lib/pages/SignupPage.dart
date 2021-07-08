import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:svi_task/provider/GoogleSignInProvider.dart';
import 'package:svi_task/widgets/ButtonWidget.dart';
import 'package:svi_task/widgets/SignInWidget.dart';
import 'package:svi_task/widgets/TextFieldWidget.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        textTheme: TextTheme(),
        title: Row(
          children: [
            SizedBox(
              width: 110,
            ),
            Text(
              'Login',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        elevation: 0,
      ),
      body: Container(
        child: ListView(
          padding: EdgeInsets.all(24.0),
          children: [
            TextFieldWidget(
              hint: 'Email Address',
              type: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 20,
            ),
            TextFieldWidget(
              hint: 'Password',
              obscureText: true,
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: null,
                child: Text(
                  'Forgot Password?',
                  style: GoogleFonts.poppins(
                    color: Color(0xffFC7600),
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ButtonWidget(
                boxColor: Color(0xffFC7600),
                buttonText: Text(
                  'LOG IN',
                  style: GoogleFonts.poppins(color: Colors.white),
                ),
                onTap: () {}),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account?',
                  style: GoogleFonts.poppins(
                    color: Color(0xff4C5673),
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text('Sign up',
                    style: GoogleFonts.poppins(
                      color: Color(0xffFC7600),
                      fontSize: 15,
                    )),
              ],
            ),
            SizedBox(
              height: 39,
            ),
            Row(children: <Widget>[
              Expanded(child: Divider()),
              Text(
                "OR",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500, fontSize: 18),
              ),
              Expanded(child: Divider()),
            ]),
            SizedBox(
              height: 38,
            ),
            SignInWidget(
              iconName: Icon(FontAwesomeIcons.google),
              name: 'Sign in with Google',
              onTap: () {
                final provider =
                    Provider.of<GoogleSignInProvider>(context, listen: false);
                provider.googleSignIn();
              },
            ),
            SizedBox(
              height: 16,
            ),
            SignInWidget(
              iconName: Icon(FontAwesomeIcons.apple),
              name: 'Sign in with Apple',
              onTap: () {
                print('Apple');
              },
            ),
            SizedBox(
              height: 16,
            ),
            SignInWidget(
              iconName: Icon(FontAwesomeIcons.facebook),
              name: 'Sign in with Facebook',
              onTap: () {
                print('Facebook');
              },
            ),
          ],
        ),
      ),
    );
  }
}
