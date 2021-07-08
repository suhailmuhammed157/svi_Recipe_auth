import 'package:flutter/material.dart';
import 'package:svi_task/pages/SignedInPage.dart';
import 'package:svi_task/pages/SignupPage.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatelessWidget {
  // final FirebaseAuth _auth = FirebaseAuth.instance;
  // final GoogleSignIn _googleSignIn = GoogleSignIn();
  //
  // Future<User> _signIn() async {
  //   final GoogleSignInAccount googleSignInAccount =
  //       await _googleSignIn.signIn();
  //   final GoogleSignInAuthentication googleSignInAuthentication =
  //       await googleSignInAccount.authentication;
  //
  //   final AuthCredential credential = GoogleAuthProvider.credential(
  //       idToken: googleSignInAuthentication.idToken,
  //       accessToken: googleSignInAuthentication.accessToken);
  //
  //   await _auth.signInWithCredential(credential);
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting)
              return Center(child: CircularProgressIndicator());
            else if (snapshot.hasError) {
              return Center(child: Text('Something wrong'));
            } else if (snapshot.hasData) {
              return SignedInPage();
            } else {
              return SignupPage();
            }
          }),
    );
  }
}
