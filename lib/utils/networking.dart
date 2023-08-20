import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mouridepro/utils/shared_preferences.dart';

class Networking{
  static const String baseUrl = "";

  static Future<Map<String, dynamic>> login(email, password) async => await http
      .post(Uri.parse("$baseUrl/auth/login"),
          body: json.encode({"email": email, "password": password}),
          headers: {'Content-Type': 'application/json'})
      .then((response) {
        if (response.statusCode == 200) {

          var data = json.decode(response.body);
          SharedPreference.logged(true);
          SharedPreference.setToken(data['token']);
          
          return {
            "code": 0,
            "body": response.body,
            "error": ""
          };
        } else if(response.statusCode == 401){
          return {
            "code": 1,
            "body": "",
            "error": "login ou mot de passe incorrect!"
          };
        }
         else {
          return {"code": -1, "body": "", "error": "vérifier votre connexion internet"};
        }
      })
      .onError((error, stackTrace) =>
          {"code": -2, "body": "", "error": error.toString()})
      .timeout(const Duration(seconds: 60), onTimeout: () {
        return {
          "code": -3,
          "body": "",
          "error": "Vérifiez votre connexion internet"
        };
      });

  static Future<Map<String, dynamic>> register(dynamic data) async => await http
      .post(Uri.parse("$baseUrl/register"),
          body: json.encode(data),
          headers: {'Content-Type': 'application/json'})
      .then((response) {
        if (response.statusCode == 200) {

          var data = json.decode(response.body);
          SharedPreference.logged(true);
          SharedPreference.setToken(data['token']);
          
          return {
            "code": 0,
            "body": response.body,
            "error": ""
          };
        } else if(response.statusCode == 401){
          return {
            "code": 1,
            "body": "",
            "error": "login ou mot de passe incorrect!"
          };
        }
         else {
          return {"code": -1, "body": "", "error": "vérifier votre connexion internet"};
        }
      })
      .onError((error, stackTrace) =>
          {"code": -2, "body": "", "error": error.toString()})
      .timeout(const Duration(seconds: 60), onTimeout: () {
        return {
          "code": -3,
          "body": "",
          "error": "Vérifiez votre connexion internet"
        };
      });    
}