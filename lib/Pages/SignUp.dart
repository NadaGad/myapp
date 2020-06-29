import 'package:flutter/material.dart';
import 'package:flutter_myapp/Pages/Home.dart';
import 'package:flutter_myapp/Pages/Login.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../Colors.dart';
import 'Cart.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backGroundColor,
      body: Padding(
        padding: const EdgeInsets.only(top:24.0),
        child: Center(
          child: Container(
            width: 340,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "images/login.png",
                    width: 150.0,
                  ),
                ),
                SizedBox(
                  height: 2.0,
                ),
                loginForm(context),
                SizedBox(
                  height: 40.0,
                ),
                InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
                },
                    child: button(gre, Colors.white, "Login")),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:12.0),
                      child: Text(
                        "Already a member?",
                        style: TextStyle(color: dark, fontSize: 16.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(width: 6,),
                    InkWell(
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> Login()));},
                      child: Text(
                        "Sign in!",
                        style: TextStyle(color: prp, fontSize: 16.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget loginForm(BuildContext context){
    return Column(
      children: <Widget>[
        Container(
          width: 360,
          height: 60,
          child: Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24.0,top: 4.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left:16.0),
                  child: TextFormField(
                    style: TextStyle(fontSize: 20.0,),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'First Name',
                    ),
                  ),
                ),
                Container(
                  height: 0.8,
                  decoration: BoxDecoration(
                      color:  dark,
                      boxShadow:[ BoxShadow(
                        color: Colors.black,
                        blurRadius:8,
                        offset: Offset(4.0,4.5),
                      ),]
                  ),
                ),
              ],
            ),
          ),
        ),

        Container(
          width: 360,
          height: 60,
          child: Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 5,),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left:16.0),
                  child: TextFormField(
                    style: TextStyle(fontSize: 20.0,),
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Last Name',
                    ),
                  ),
                ),
                Container(
                  height: 0.8,
                  decoration: BoxDecoration(
                      color:  dark,
                      boxShadow:[ BoxShadow(
                        color: Colors.black,
                        blurRadius:8,
                        offset: Offset(4.0,4.5),
                      ),]
                  ),
                ),

              ],
            ),
          ),
        ),
        Container(
          width: 360,
          height: 60,
          child: Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 5,),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left:16.0),
                  child: TextFormField(
                    style: TextStyle(fontSize: 20.0,),
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'E-mail',
                    ),
                  ),
                ),
                Container(
                  height: 0.8,
                  decoration: BoxDecoration(
                      color:  dark,
                      boxShadow:[ BoxShadow(
                        color: Colors.black,
                        blurRadius:8,
                        offset: Offset(4.0,4.5),
                      ),]
                  ),
                ),

              ],
            ),
          ),
        ),
        Container(
          width: 360,
          height: 60,
          child: Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 5,),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left:16),
                  child: TextFormField(
                    style: TextStyle(fontSize: 20.0,),
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                    ),
                  ),
                ),
                Container(
                  height: 0.8,
                  decoration: BoxDecoration(
                      color:  dark,
                      boxShadow:[ BoxShadow(
                        color: Colors.black,
                        blurRadius:8,
                        offset: Offset(4.0,4.5),
                      ),]
                  ),
                ),

              ],
            ),
          ),
        ),
        Container(
          width: 360,
          height: 60,
          child: Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 5,),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left:16.0),
                  child: TextFormField(
                    style: TextStyle(fontSize: 20.0,),
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Confirm Password',
                    ),
                  ),
                ),
                Container(
                  height: 0.8,
                  decoration: BoxDecoration(
                      color:  dark,
                      boxShadow:[ BoxShadow(
                        color: Colors.black,
                        blurRadius:8,
                        offset: Offset(4.0,4.5),
                      ),]
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

}
