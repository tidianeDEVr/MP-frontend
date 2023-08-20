import 'package:flutter/material.dart';
import 'package:mouridepro/constants.dart';
import 'package:mouridepro/providers/authentication_provider.dart';
import 'package:mouridepro/widgets/button/button_widget.dart';
import 'package:provider/provider.dart';

import '../../../route/route_generator.dart';
import '../../../widgets/input/password_text_field_widget.dart';
import '../../../widgets/input/text_field_widget.dart';

class PasswordScreen extends StatelessWidget {
  const PasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Consumer<AuthentificationProvider>(
            builder: (context, model, _) => Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 12),
                      Image.asset("assets/images/logo.png", width: 70),
                      const SizedBox(height: 50),
                      Text("S'inscrir sur Mourid Professionnel",
                          style: TextStyle(
                              color: inputColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Text("ou",
                              style:
                                  TextStyle(fontSize: 18, color: inputColor)),
                          const SizedBox(width: 5),
                          Text("S'identifier",
                              style:
                                  TextStyle(color: defaultColor, fontSize: 18))
                        ],
                      ),
                      const SizedBox(height: 30),
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
                                  RouteGenerator.welcome,
                                  (Route<dynamic> route) => false);
                            },
                            child: ButtonWidget(
                              width: MediaQuery.of(context).size.width,
                              text: "Se connecter",
                              onPressed: () {},
                              heigth: 70,
                            )),
                      ),
                    ],
                  ),
                )));
  }
}
