import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:svi_task/widgets/ButtonWidget.dart';
import 'package:svi_task/pages/LoginPage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.cover)),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 160,
                  ),
                  Text(
                    'Recipe',
                    style: GoogleFonts.playfairDisplay(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      fontSize: 70,
                    ),
                  ),
                  Text(
                    'Help you to cook healthy food',
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.normal),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ButtonWidget(
                            boxColor: Color(0xffFC7600),
                            buttonText: Text(
                              'GET STARTED',
                              style: GoogleFonts.poppins(color: Colors.white),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()),
                              );
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ButtonWidget(
                            boxColor: Colors.white,
                            buttonText: Text(
                              'I HAVE AN ACCOUNT',
                              style: GoogleFonts.poppins(),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
