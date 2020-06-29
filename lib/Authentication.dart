import 'package:flutter_myapp/Models/user.dart';
import 'package:flutter_myapp/exceptions/exceptions.dart';
import 'package:http/http.dart' as http;
import 'ApiUtil.dart';
import 'dart:convert';

class Authentication{

  Future<User> register (String first_name, String last_name, String email,
      String password) async {

    Map<String,String> headers = {
      'Accept' : 'application/json'
    };

    Map<String,String> body = {
      'first_name' : first_name,
      'last_name' : last_name,
      'email' : email,
      'password' : password

    };

    http.Response response = await http.post(ApiUtl.Auth_Register,
        headers: headers, body: body);
    switch(response.statusCode){
      case 201:
        var body = jsonDecode(response.body);
        var data = body['data'];
        return User.fromJson(data);
        break;

      case 404:
        throw ResourceNotFound("user");
        break;

      case 422:
        throw UnProcessedEntity();
        break;

      default:
        return null;
        break;

    }

  }


  Future<User> login (String email, String password) async {
    Map<String,String> headers = {
      'Accept' : 'application/json'
    };

    Map<String,String> body = {
      'email' : email,
      'password' : password

    };
    //print("Ready");
    http.Response response = await http.post("http://127.0.0.1:8000/api/auth/login",
        headers: headers, body: body);
    // print('after');
    // print(response.statusCode);
    switch(response.statusCode){
      case 200:
        var body = jsonDecode(response.body);
        var data = body['data'];
        print(data);
        return User.fromJson(data);
        break;

      case 404:
        throw ResourceNotFound("user");
        break;

      case 401:
        throw LoginFailed();
        break;

      default:
        return null;
        break;

    }

  }

}
