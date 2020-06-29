import 'package:flutter_myapp/exceptions/exceptions.dart';

class User {

  int id;
  String first_name;
  String last_name;
  String email;
  String api_token;


  User(this.id, this.first_name, this.last_name,
      this.email, [this.api_token]);

  User.fromJson(Map<String, dynamic>jsonObject){
    

    this.id = jsonObject['user_id'];
    this.first_name = jsonObject['first_name'];
    this.last_name = jsonObject['last_name'];
    this.email = jsonObject['email'];
    this.api_token = jsonObject['api_token'];
  }
}