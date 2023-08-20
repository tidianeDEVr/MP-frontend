import 'package:flutter/material.dart';
import 'package:mouridepro/screens/authentification/splash_screen.dart';
import 'package:mouridepro/screens/home/home.dart';
import 'package:mouridepro/screens/authentification/login.dart';
import 'package:mouridepro/screens/expert/profil/change_password.dart';
import 'package:mouridepro/screens/expert/profil/sub_info.dart';
import 'package:mouridepro/screens/authentification/register.dart';
import 'package:mouridepro/screens/authentification/validation.dart';

import '../widgets/expert/Address.dart';

class RouteGenerator{

  static const splashScreen = "splashScreen";
  static const authentication = "authentication";
  static const register = "register";
  static const welcome = "welcome";
  static const password = "password";
  static const login = "login";
  static const validation = "validation";
  static const homeScreen = "home";
  static const profession = "profession";
  static const address = "address";

  static Route<dynamic> onGeneratedRoute( RouteSettings settings){
    switch(settings.name){


      case authentication:
        return MaterialPageRoute(builder: (context) => const Authentication());

      case login:
        return MaterialPageRoute(builder: (context) => const Login());

      case register:
        return MaterialPageRoute(builder: (context) => const Register());

      case validation:
        final name = settings.arguments as String;
        return MaterialPageRoute(builder: (context) => ValidationScreen(name: name));

      case password:
      return MaterialPageRoute(builder: (context) => const PasswordScreen());


      case homeScreen:
        return MaterialPageRoute(builder: (context) => const Home());

      case profession:
        return MaterialPageRoute(builder: (context) => const Profession());

      case address:
        return MaterialPageRoute(builder: (context) => const Address());

      default:
       return MaterialPageRoute(builder: (context) => const Authentication());

     //  return MaterialPageRoute(
         //   builder: (context) => const Center(child: Text("404 screen")));
    }
  }
}