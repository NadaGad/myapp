import 'package:flutter/material.dart';
import 'package:flutter_myapp/Models/user.dart';
import 'package:flutter_myapp/Pages/SignUp.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter_myapp/Authentication.dart';
import '../Colors.dart';
import 'Cart.dart';
import 'Home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

 class _LoginState extends State<Login> {

   TextEditingController _emailController = TextEditingController();
   TextEditingController _passwordController = TextEditingController();
   Authentication authentication = Authentication();

   var _formKey = GlobalKey<FormState>();
   bool _loding = false;

   @override
   void dispose() {
     _emailController.dispose();
     _passwordController.dispose();
     super.dispose();
   }


   @override
   Widget build(BuildContext context) {
     return Scaffold(
       resizeToAvoidBottomInset: false,
       backgroundColor: backGroundColor,
       body: Padding(
         padding: const EdgeInsets.only(top: 24.0),
         child: Center(
           child: Container(
             width: 290,
             child: Column(
               children: <Widget>[
                 Padding(
                   padding: const EdgeInsets.only(top: 40, bottom: 60),
                   child: Image.asset(
                     "images/logo.png",
                     width: 180.0,
                   ),
                 ),
                 SizedBox(
                   height: 2.0,
                 ),
                 loginForm(context),
                 SizedBox(
                   height: 40.0,
                 ),
             RawMaterialButton(
               fillColor: dark,
               splashColor: greenDark,
               shape: StadiumBorder(),
               elevation: 15.0,
               focusColor: p,
               onPressed: () {
                setState(() {
                  _loding = true;
                 });
                 Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
                // if(_formKey.currentState.validate()){
                  // setState(() {
                    // _loding = true;
                  // });
                   //_loginUser();}
               },
               child: Padding(
                 padding: const EdgeInsets.only(
                     top: 18, left: 40, right: 40, bottom: 18),
                 child:
                 Center(child:(_loding)? Center(child: CircularProgressIndicator(
                   backgroundColor: Colors.white,

                 ),) :
                 Text("Login", style: TextStyle(color: Colors.white, fontSize: 22.0),)),

               ),

             ),
                 SizedBox(
                   height: 35.0,
                 ),
                 buttonShadow(prp, Colors.white, "Login With Gmail"),
                 SizedBox(
                   height: 20.0,
                 ),
                 Row(
                   children: [
                     Text(
                       "Forget Password?",
                       style: TextStyle(color: dark,
                           fontSize: 16.0,
                           fontWeight: FontWeight.bold),
                     ),
                     Spacer(),
                     InkWell(
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));
                       },
                       child: Text(
                         "Sign up",
                         style: TextStyle(color: dark,
                             fontSize: 16.0,
                             fontWeight: FontWeight.bold),
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

   Widget loginForm(BuildContext context) {
     return Form(
       key: _formKey,
       child: Column(
         children: <Widget>[
           Container(
             width: 360,
             height: 60,
             decoration: BoxDecoration(
               color: Colors.white,
               border: Border.all(
                 width: 1,
                 color: prp,
               ),
               boxShadow: [ BoxShadow(
                 color: p,
                 blurRadius: 4,
                 offset: Offset(4.0, 4.5),
               ),
               ],
               borderRadius: BorderRadius.all(Radius.circular(30)),

             ),
             child: Padding(
               padding: const EdgeInsets.only(
                   left: 24.0, right: 24.0, top: 4.0),
               child: TextFormField(
                 controller: _emailController,
                 style: TextStyle(fontSize: 22.0,),
                 decoration: InputDecoration(
                   border: InputBorder.none,
                   hintText: 'E-mail',
                 ),
                 validator: (value) {
                   if (value.isEmpty) {
                     return "Email is required";
                   }
                   return null;
                 },
               ),
             ),
           ),
           SizedBox(
             height: 40.0,
           ),
           Container(
             width: 360,
             height: 60,

             decoration: BoxDecoration(
                 color: Colors.white,
                 border: Border.all(
                   width: 1,
                   color: prp,
                 ),
                 borderRadius: BorderRadius.all(Radius.circular(30)),
                 boxShadow: [ BoxShadow(
                   color: p,
                   blurRadius: 4,
                   offset: Offset(4.0, 4.5),
                 ),
                 ]
             ),
             child: Padding(
               padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 5,),
               child: TextFormField(
                 controller: _passwordController,
                 style: TextStyle(fontSize: 22.0,),
                 obscureText: true,
                 decoration: InputDecoration(
                   border: InputBorder.none,
                   hintText: 'Password',
                 ),
                 validator: (value) {
                   if (value.isEmpty) {
                     return "Password is required";
                   }
                   return null;
                 },
               ),
             ),
           ),
         ],
       ),
     );
   }

   void _loginUser() async {

   String email = _emailController.text;
   String password = _passwordController.text;
   User user = await authentication.login(email, password);
   if(user.id != null){
     setState(() {
       _loding = false;
     });
     Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
   }
   else{
     setState(() {
       _loding = false;
     });
   }
   }
 }



