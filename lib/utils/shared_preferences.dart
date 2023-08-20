import 'package:shared_preferences/shared_preferences.dart';

class SharedPreference{

  static setToken(token)async{
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString("token", token);
  }

  static Future<String?> getToken() async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
      return sharedPreferences.getString("token");
  }

  static logged(bool value) async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool("logged",value);
  }

  static Future<bool?> isLogged() async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool("logged");
  }
}