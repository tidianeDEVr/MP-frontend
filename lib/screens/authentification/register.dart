import 'package:flutter/material.dart';
import 'package:mouridepro/constants.dart';
import 'package:mouridepro/providers/authentication_provider.dart';
import 'package:mouridepro/widgets/button/button_widget.dart';
import 'package:mouridepro/widgets/appBar/top_image.dart';
import 'package:provider/provider.dart';

import '../../route/route_generator.dart';
import '../../widgets/input/password_text_field_widget.dart';
import '../../widgets/input/text_field_widget.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Consumer<AuthentificationProvider>(
            builder: (context, model, _) => Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TopImage(),
                      const SizedBox(height: 30),
                      Text("S'inscrire sur Mourid Professionnel",
                          style: TextStyle(
                              color: inputColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("ou",
                              style:
                                  TextStyle(fontSize: 18, color: inputColor)),
                          const SizedBox(width: 5),
                          InkWell(
                              onTap: () {
                                Navigator.of(context).pushNamedAndRemoveUntil(
                                    RouteGenerator.login,
                                    (Route<dynamic> route) => false);
                              },
                              child: Text("S'identifier",
                                  style: TextStyle(
                                      color: defaultColor, fontSize: 18)))
                        ],
                      ),
                      const SizedBox(height: 30),
                      TextFieldWidget(
                          hintText: "Nom d'utilisateur",
                          obscureText: false,
                          validator: (value) {
                            if (value != "") {
                              return null;
                            } else {
                              return "le nom d'utilisateur est obligatoire !";
                            }
                          },
                          controller: model.username),
                      const SizedBox(height: 15),
                      TextFieldWidget(
                          hintText: 'Prénom',
                          obscureText: false,
                          validator: (value) {
                            if (value != "") {
                              return null;
                            } else {
                              return "le prénom est obligatoire !";
                            }
                          },
                          controller: model.firstname),
                      const SizedBox(height: 15),
                      TextFieldWidget(
                          hintText: 'Nom',
                          obscureText: false,
                          validator: (value) {
                            if (value != "") {
                              return null;
                            } else {
                              return "le nom est obligatoire !";
                            }
                          },
                          controller: model.lastname),
                      const SizedBox(height: 15),
                      TextFieldWidget(
                          hintText: 'E-mail',
                          obscureText: false,
                          validator: (value) {
                            if (value != "") {
                              return null;
                            } else {
                              return "l'email est obligatoire !";
                            }
                          },
                          controller: model.email),
                      const SizedBox(height: 15),
                      PasswordTextField(
                          hintText: "Mot de passe",
                          validator: (value) {
                            if (value != "") {
                              return null;
                            } else {
                              return "le nom d'utilisateur est obligatoire !";
                            }
                          },
                          controller: model.password),
                      const SizedBox(height: 15),
                      TextFieldWidget(
                          hintText: 'confirmation de Mot de passe',
                          obscureText: true,
                          validator: (value) {
                            if (value != "") {
                              return null;
                            } else {
                              return "les mots de passe ne correspondent pas!";
                            }
                          },
                          controller: model.passwordConfirmation),
                      const SizedBox(height: 24),
                      Text(
                        "En cliquant sur Accepter et s'inscrire, vous acceptez les",
                        style: TextStyle(color: inputColor, fontSize: 12),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              "Conditions d'utilisation, la politique de confidentialité",
                              style:
                                  TextStyle(color: defaultColor, fontSize: 12)),
                          Text(
                            " de",
                            style: TextStyle(color: inputColor, fontSize: 12),
                          )
                        ],
                      ),
                      Text(
                        "Murid Professionnel.",
                        style: TextStyle(color: inputColor, fontSize: 12),
                      ),
                      const SizedBox(height: 24),
                      Center(
                        child: InkWell(
                            onTap: () {
                              Navigator.of(context).pushNamedAndRemoveUntil(
                                  RouteGenerator.homeScreen,
                                  (Route<dynamic> route) => false);
                            },
                            child: ButtonWidget(
                              width: MediaQuery.of(context).size.width,
                              text: "S'inscrire",
                              onPressed: () {},
                              heigth: 70,
                            )),
                      ),
                    ],
                  ),
                )));
  }
}
