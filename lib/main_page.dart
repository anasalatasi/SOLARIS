import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'first_phase.dart';


class SolarApp extends StatelessWidget {
 SolarApp({Key? key}) : super(key: key);
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
          leading:IconButton(onPressed: _openDrawer, icon: Icon(Icons.menu,color:Color(0xFFFD8E03))),
          elevation: 0.0,
          backgroundColor: Colors.white,
          centerTitle : true,
          title: SizedBox(
            child: Text(
              "SOLARIS",
              style: GoogleFonts.righteous(textStyle: TextStyle(color: Color(0xFFFD8E03),fontWeight: FontWeight.bold,fontSize: 40) )
            ),
          ),
        ),
        body: Column(
          children: [
            MainScreenWidget("I want to place a new solar panel", (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> FirstPhase()));
            }),
            MainScreenWidget("I have Solaris Auto Tracking Panel",(){}),
            MainScreenWidget("I want to adjust my solar panel manually",(){}),
            ],
        ),
        drawer: Drawer(),
      
    );
  }
}

class MainScreenWidget extends StatelessWidget {
  final String widgettext;
  Function() onpressed ;
  MainScreenWidget(this.widgettext, this.onpressed);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: onpressed,
        style: ElevatedButton.styleFrom(
            primary: Color(0xFFFD8E03),
            fixedSize: Size(double.infinity, 60),)
          ,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            
            Expanded(child: Text(widgettext,overflow: TextOverflow.clip,style: TextStyle(fontSize: 20),)),
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color:Color(0xFFB95222),
                borderRadius: BorderRadius.circular(50 / 2),
              ),
              child: Center(
                child: Icon(
                  Icons.keyboard_arrow_right_sharp,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
