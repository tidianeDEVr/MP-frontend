import 'package:flutter/material.dart';

class AuthentificationProvider extends ChangeNotifier{
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController passwordConfirmation = TextEditingController();
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController secteur = TextEditingController();
  TextEditingController titre = TextEditingController();
  TextEditingController entreprise = TextEditingController();
  TextEditingController diplome = TextEditingController();
  TextEditingController ecole = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController language = TextEditingController();
  TextEditingController linkedin = TextEditingController();
  TextEditingController twitter = TextEditingController();

  GlobalKey<FormState> keyForm = GlobalKey<FormState>();

}