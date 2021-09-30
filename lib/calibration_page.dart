import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalibrationPage extends StatelessWidget{
  final double tiltAngle;

  const CalibrationPage({Key? key, required this.tiltAngle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar( elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle : true,
        title: SizedBox(
          child: Text(
              "SOLARIS",
              style: GoogleFonts.righteous(textStyle: TextStyle(color: Color(0xFFFD8E03),fontWeight: FontWeight.bold,fontSize: 40) )
          ),
        ),),
      body: Container(),
    );
  }

}