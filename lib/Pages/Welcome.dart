import 'package:flutter/material.dart';
import 'package:flutter_myapp/Pages/Login.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../Colors.dart';
import 'Cart.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: Padding(
        padding: const EdgeInsets.only(top:80.0),
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
                  height: 60.0,
                ),
                Center(
                  child: Text(
                    "WELCOME TO GOPRO!",
                    style: TextStyle(
                        color: dark, fontSize: 25.0, ),
                  ),
                ),
                SizedBox(
                  height: 60.0,
                ),
                Text(
                  "Now you can use the app",
                  style: TextStyle(color: prp, fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  "sign in with your email..",
                  style: TextStyle(color: prp, fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                Image.asset(
                  "images/welcome.png",
                  width: 190.0,
                ),
                InkWell(child: button(prp, Colors.white, "Pay"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Login()));
                },),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
