import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:solar_app/location_page.dart';

class FirstPhase extends StatelessWidget {
  FirstPhase({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _scaffoldKey.currentState!.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
              onPressed: _openDrawer,
              icon: Icon(Icons.menu, color: Color(0xFFFD8E03))),
          elevation: 0.0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: SizedBox(
            child: Text("SOLARIS",
                style: GoogleFonts.righteous(
                    textStyle: TextStyle(
                        color: Color(0xFFFD8E03),
                        fontWeight: FontWeight.bold,
                        fontSize: 40))),
          ),
        ),
        drawer: Drawer(),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => LocationPage()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 8.0,),
                    Icon(Icons.location_pin,color: Colors.black45,),
                    SizedBox(width: 16.0,),
                    Text("Select your Place",style: TextStyle(color: Colors.black45),),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey.shade300,
                  
                ),
              )
            ],
          ),
        ));
  }
}
