

import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../Colors.dart';
import 'Cart.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {


    Stream<dynamic> scanBarcode(){
      FlutterBarcodeScanner.getBarcodeStreamReceiver("#980019", "cancel", true, ScanMode.DEFAULT)
          .listen((barcode) {
        /// barcode to be used
      }); }

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      bottomNavigationBar: Row (
       children: <Widget>[
         Container(
           decoration: BoxDecoration(

               border: Border(
                 top: BorderSide(color: ps,),
               ),
           ),
           height: 67,
           width: size.width/3,
           child: IconButton(
             icon: Icon(
               Icons.notifications_none,
               size: 40,
               color: dark,
             ),
             onPressed: (){},
           ),
         ),
         Container(
           decoration: BoxDecoration(
             border: Border(
               top: BorderSide(color: ps,),
             ),
           ),
           height: 67,
           width: size.width/3,
           child: Center(
             child: Stack(
               children: [
                 Container(
                   height: 65,
                   width: 65,
                   decoration: BoxDecoration(
                     color: greenDark,
                     borderRadius: BorderRadius.all(Radius.circular(200)),
                   ),
                 ),
                 InkWell(
                   onTap: (){
                     scanBarcode();
                   },
                   child: Icon(
                       Icons.fullscreen,
                       size: 65,
                       color: Colors.white,
                     ),
                 ),
               ],
             ),
           ),
         ),
         Container(
           decoration: BoxDecoration(
             border: Border(
               top: BorderSide(color: ps,),
             ),
           ),
           height: 67,
           width: size.width/3,
           child: IconButton(
             icon: Icon(
               MdiIcons.cartOutline,
               size: 40,
               color: dark,
             ),
             onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=> Cart()));
             },
           ),
         ),
       ],
      ),
      backgroundColor: backGroundColor,
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Image.asset(
              "images/logo.png",
              width: 280.0,
            ),
          ),
          Text("Choose well, Scan fast and Go!", style: TextStyle(color: pr, fontSize: 16.0,),),
          SizedBox(height: 60,),
          Padding(
            padding: const EdgeInsets.only(right:175.0, bottom: 10),
            child: Text("TOP DEALS!", style: TextStyle(color: dark, fontSize: 16.0, fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: <Widget>[
                Container(
                  height: 100,
                  width: 125,
                  decoration: BoxDecoration(
                      color: backGroundColor,
                      border: Border.all(
                        width: 1.1,
                        color: dark,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(6)),

                  ),
                ),
                SizedBox(width: 10.0,),
                Container(
                  height: 100,
                  width: 125,
                  decoration: BoxDecoration(
                    color: backGroundColor,
                    border: Border.all(
                      width: 1.1,
                      color: dark,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(6)),

                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 24.0,),
          Container(
            height: 2,
            width: 295,
            color:  dark,
          ),
          Container(
            width: size.width,
            height: 135,
            child: Padding(
              padding: const EdgeInsets.only(left: 55.0, top: 10.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        MdiIcons.storefront,
                        size: 31,
                        color: prp,
                      ),
                      SizedBox(width: 12.0,),
                      Text("Fathallah Market", style: TextStyle(color: dark, fontSize: 16.0),),
                    ],
                  ),
                  SizedBox(height: 10.0,),
                  Row(
                    children: <Widget>[
                      Icon(
                        MdiIcons.storefront,
                        size: 31,
                        color: prp,
                      ),
                      SizedBox(width: 12.0,),
                      Text("Carrefour Mall", style: TextStyle(color: dark, fontSize: 16.0),),
                    ],
                  ),
                  SizedBox(height: 10.0,),
                  Row(
                    children: <Widget>[
                      Icon(
                        MdiIcons.storefront,
                        size: 31,
                        color: prp,
                      ),
                      SizedBox(width: 12.0,),
                      Text("Awlad Ragab Mall", style: TextStyle(color: dark, fontSize: 16.0),),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}