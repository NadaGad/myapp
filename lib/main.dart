import 'package:flutter/material.dart';
import 'package:flutter_myapp/Pages/Cart.dart';
import 'package:flutter_myapp/Pages/Checkout.dart';
import 'package:flutter_myapp/Pages/Home.dart';
import 'package:flutter_myapp/Pages/Login.dart';
import 'package:flutter_myapp/Pages/SignUp.dart';
import 'package:flutter_myapp/Pages/Welcome.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: SignUp(),
    );
  }
}