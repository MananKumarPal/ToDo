import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import '../colors.dart';

class Description extends StatelessWidget {
  const Description(
      {super.key, required this.title, required this.description});
  final String title, description;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: AppBar(
        backgroundColor: tdBGColor,
        foregroundColor: Colors.black,
        //backgroundColor: Colors.deepPurple,
        title: Text(
          'Description',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                title,
                style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    description,
                    textStyle: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: tdBlack),
                    speed: Duration(milliseconds: 100),
                  ),
                ],
                totalRepeatCount: 2,
                pause: Duration(milliseconds: 200),
                displayFullTextOnTap: true,
                stopPauseOnTap: true,
              ),
              // Text(
              //   description,
              //   style: GoogleFonts.roboto(
              //       color: tdBlack, fontSize: 22, fontWeight: FontWeight.bold),
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
