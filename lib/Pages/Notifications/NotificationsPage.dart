import 'package:flutter/material.dart';
import 'package:flutter_myapp/Models/NotifCard.dart';

import '../../Colors.dart';
import 'NotifCardWidget.dart';

class NotificationsPage extends StatefulWidget {
  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {


  @override
  Widget build(BuildContext context) {

    NotifCard card = NotifCard();
    card.id = 1;
    card.storeName = "Fathallah Market";
    card.dateTime = "12/12/2020";
    card.discount = "20.0";
    card.total = "400.0";


    return RotatedBox(
      quarterTurns: 2,
      child: Scaffold(
       body: SingleChildScrollView(
         scrollDirection: Axis.vertical,
         child: SafeArea(
           child: Container(
             child: Column(
               children: <Widget>[
                 Container(
                   height: 100,
                   child: Center(
                     child: Text(
                       "Receipts",
                       style: TextStyle(
                         fontSize: 20.0,
                         fontWeight: FontWeight.bold,
                         color: dark,
                       ),
                     ),
                   ),
                 ),
                 ListView(
                   physics: NeverScrollableScrollPhysics() ,
                   scrollDirection: Axis.vertical,
                   shrinkWrap: true,
                   children: <Widget>[
                     NotifCardWidget(card: card),
                     NotifCardWidget(card: card),
                     NotifCardWidget(card: card),
                     NotifCardWidget(card: card),
                     NotifCardWidget(card: card),
                   ],
                 ),
               ],
             ),
           ),
         ),
       ),
      )
    );

  }
}



