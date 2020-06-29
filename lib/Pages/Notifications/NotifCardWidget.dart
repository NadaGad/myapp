import 'package:flutter/material.dart';
import 'package:flutter_myapp/Colors.dart';
import 'package:flutter_myapp/Models/NotifCard.dart';

class NotifCardWidget extends StatefulWidget {

  final NotifCard card ;

  NotifCardWidget({@required this.card});

  @override
  _NotifCardWidgetState createState() => _NotifCardWidgetState();
}

class _NotifCardWidgetState extends State<NotifCardWidget> {



  @override
  Widget build(BuildContext context) {

      var total = widget.card.total ;
      var discount = widget.card.discount ;
      var storeName = widget.card.storeName ;
      var dateTime = widget.card.dateTime ;



    return RotatedBox(
        quarterTurns: 0,
        child: Container(
          height: 210.0,
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Material(
            color: Colors.white,
            elevation: 8.0,
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            child: InkWell(
              onTap: (){},
              child: Container(
                margin: EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[

                          Text(storeName, style: TextStyle(color: greenDark, fontSize: 18.0),
                          ),
                          SizedBox(height: 2.0,),
                          Text(dateTime, style: TextStyle(color: greenDark, fontSize: 12.0),
                          ),
                          SizedBox(height: 8.0,),
                          Container(
                            height: 0.5,
                            color:  Colors.white,
                          ),
                          SizedBox(height: 8.0,),
                          Text(" DISCOUNT : $discount", style: TextStyle(color: greenDark),
                          ),
                          SizedBox(height: 2.0,),
                          Text(" TOTAL : $total", style: TextStyle(color: greenDark),
                          ),
                          SizedBox(height: 2.0,),

                        ],
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    Image.asset(
                      "images/qrcode.png",
                      width: 80.0,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
          ),


          ),


    );

  }
}



