import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:solar_app/theme.dart';
import "package:velocity_x/velocity_x.dart";
class FirstPhase extends StatelessWidget{
  final LatLng latLng;

  const FirstPhase({Key? key, required this.latLng}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle : true,
        title: SizedBox(
          child: Text(
              "SOLARIS",
              style: GoogleFonts.righteous(textStyle: TextStyle(color: Color(0xFFFD8E03),fontWeight: FontWeight.bold,fontSize: 40) )
          ),
        ),),
      body: Column(
        children: [
          VxBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    "Optimum tilt angle".text.white.xl.make(),
                    "135.75".text.white.xl3.bold.make(),
                  ],
                ),
                Icon(Icons.remove_red_eye_outlined, color: Colors.white70,).box.roundedFull.color(Themes.darkOrangeColor).p8.make(),
              ],
            ),
      ).color(Themes.lightOrangeColor).p16.roundedSM.make().p16(),
        ],
      )
    );
  }

}