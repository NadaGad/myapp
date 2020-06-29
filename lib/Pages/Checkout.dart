import 'package:flutter/material.dart';
import 'package:flutter_myapp/Pages/Home.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../Colors.dart';

class Checkout extends StatefulWidget {
  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        title: Text("GO PRO"),
        elevation: 0.0,
        backgroundColor: greenDark,
        leading: IconButton(icon: Icon(
          MdiIcons.arrowLeft,
          size: 25,
          color: Colors.white,
        ),onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
        },),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top:50.0),
        child: Center(
          child: Container(
            width: 280,
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.check_circle,
                  size: 100,
                  color: pr,
                ),
                SizedBox(
                  height: 18.0,
                ),
                Center(
                  child: Text(
                    "checkout successfull",
                    style: TextStyle(
                        color: pr, fontSize: 25.0, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 24.0,
                ),
                Text(
                  "Proceed to checkout",
                  style: TextStyle(color: greenDark, fontSize: 25.0),
                ),
                Text(
                  "for payment",
                  style: TextStyle(color: greenDark, fontSize: 25.0),
                ),
                Image.asset(
                  "images/qrcode.png",
                  width: 190.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
