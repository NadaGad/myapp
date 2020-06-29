import 'package:flutter/material.dart';
import 'package:flutter_myapp/Pages/Checkout.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../Colors.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        title: Text("Checkout"),
        elevation: 0.0,
        backgroundColor: greenDark,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top:0.0),
          child: Center(
            child: Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 2),
                    child: Row(
                      children: <Widget>[
                        Text("SCANNED ITEMS", style: TextStyle(color: Colors.black26, fontSize: 20.0),),
                        Spacer(),
                        Icon(
                          MdiIcons.cartOutline,
                          size: 35,
                          color: Colors.black45,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 0.8,
                    color:  greenDark,
                  ),
                  ListView(
                    physics: NeverScrollableScrollPhysics() ,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    children: [
                      SizedBox(
                        height: 4.0,
                      ),
                      cartItem(),
                      cartItem(),
                      cartItem(),
                      SizedBox(
                        height: 15.0,
                      ),
                    ],
                  ),
                  getTotal(size),
                  SizedBox(
                    height: 24.0,
                  ),
                  InkWell(child: button(dark, Colors.white, "Pay",),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Checkout()));
                  },),
                  SizedBox(
                    height: 20.0,
                  ),
                ],

              ),
            ),
          ),
        ),
      ),
    );
  }










  Widget getTotal(Size size) {
    return Column(
      children: <Widget>[
        Container(
          height: 0.8,
          color:  greenDark,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
              children: <Widget>[
                Text("Total", style: TextStyle(color: prp, fontSize: 20.0),),
              ]
          ),
        ),
        Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 15, left: 35, right: 35, bottom: 25),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text("Subtotal", style: TextStyle(color: greenDark, fontSize: 20.0),),
                      Spacer(),
                      Text("\$35", style: TextStyle(color: greenDark, fontSize: 20.0),),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: <Widget>[
                      Text("Sales Tax", style: TextStyle(color: greenDark, fontSize: 20.0),),
                      Spacer(),
                      Text("\$5", style: TextStyle(color: greenDark, fontSize: 20.0),),
                    ],
                  ),
                ],
              ),
            )
        ),
        Container(
          height: 0.8,
          color:  greenDark,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 20),
          child: Row(
            children: <Widget>[
              Text("Total", style: TextStyle(color: prp, fontSize: 20.0),),
              Spacer(),
              Text("\$40", style: TextStyle(color: greenDark, fontSize: 20.0),),
            ],
          ),
        ),
      ],
    );
  }

}


Widget cartItem (){
  return Dismissible(
    child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)
          )
        ),
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                decoration: BoxDecoration(
                  color: pr,
                  borderRadius: BorderRadius.all(Radius.circular(16)
                  )
                ),
                  height: 70,
                  width: 70,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: MyIcon(Icons.add, Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: MyIcon(Icons.remove, Colors.white),
                      ),

                    ],
                  ),

              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 50),
              height: 70,
              decoration:BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(16))
              ) ,
              child: Row(
                children: <Widget>[
                   Image.asset(
                    "images/twix.png",
                    width: 60.0,
                  ),
                 Padding(
                   padding: const EdgeInsets.all(12.0),
                   child: Column(
                     children: <Widget>[
                       Text("Twix", style: TextStyle(color: prp, fontSize: 20.0),),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 4),
                          child: Text("\$40", style: TextStyle(color: greenDark, fontSize: 15.0),),
                        ),


                ],
              ),
                 ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right:15),
                    child: Text("4", style: TextStyle(color: prp, fontSize: 20.0),),
                  ),
                  ],
            ),
            ),
          ],
        ),

    ),
    key: Key("n"),

  );
}




class MyIcon extends StatefulWidget {

  final IconData icon;
  Color color ;
  MyIcon(this.icon, this.color);

  @override
  _State createState() => _State();
}

class _State extends State<MyIcon> {



  @override
  Widget build(BuildContext context) {
    return Card(
      color: pr,
      shadowColor: greenDark,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        width: 28,
        height: 26,
        child: Center(
          child: IconButton(
            onPressed:() {},
            icon: Icon(widget.icon, color: widget.color,size: 13.0,),
          ),
        ),
      ),
    );
  }

}


class button extends StatefulWidget {

  Color fillColor;
  String text;
  Color color ;
  double lefts;
  double right;
  button(this.fillColor, this.color, this.text,);

  @override
  _buttonState createState() => _buttonState();
}

class _buttonState extends State<button> {


  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: widget.fillColor,
      splashColor: greenDark,
      shape: StadiumBorder(),
      elevation: 15.0,
      child: Padding(
        padding: const EdgeInsets.only(
            top: 14, left: 105, right: 105, bottom: 14),
        child:
        Text(widget.text, style: TextStyle(color: widget.color, fontSize: 20.0),),

      ),

    );
  }
}


class buttonShadow extends StatefulWidget {

  Color fillColor;
  String text;
  Color color ;
  double lefts;
  double right;
  bool loding ;
  buttonShadow(this.fillColor, this.color, this.text,[this.loding = false]);

  @override
  _buttonShadowState createState() => _buttonShadowState();
}

class _buttonShadowState extends State<buttonShadow> {


  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: widget.fillColor,
      splashColor: greenDark,
      shape: StadiumBorder(),
      elevation: 15.0,
      focusColor: p,
      onPressed: () {  setState(() {
        widget.loding = true;
      });},
      child: Padding(
        padding: const EdgeInsets.only(
            top: 18, left: 40, right: 40, bottom: 18),
        child:
        Center(child:(widget.loding)? Center(child: CircularProgressIndicator(
          backgroundColor: Colors.white,

        ),) :
        Text(widget.text, style: TextStyle(color: widget.color, fontSize: 22.0),)),

      ),

    );
  }
}




