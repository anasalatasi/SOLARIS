import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationPage extends StatelessWidget {
 LocationPage({Key? key}) : super(key: key);
 final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
  _scaffoldKey.currentState!.openDrawer();
}

  static final LatLng _kMapCenter =
    LatLng(19.018255973653343, 72.84793849278007);

static final CameraPosition _kInitialPosition =
    CameraPosition(target: _kMapCenter, zoom: 11.0, tilt: 0, bearing: 0);
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
        drawer: Drawer(),
        body: GoogleMap(
      initialCameraPosition: _kInitialPosition,
    
        ),
        );
  }
}