import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mouridepro/providers/authentication_provider.dart';
import 'package:mouridepro/widgets/button/button_widget.dart';
import 'package:mouridepro/widgets/appBar/top_image.dart';

import '../../route/route_generator.dart';
import '../../constants.dart';
import '../../widgets/input/text_field_widget.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
              const SizedBox(height: 100),
              Text(
                "S'identifier sur Mourid Professionnel",
                style: TextStyle(
                    color: inputColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("ou", style: TextStyle(fontSize: 18, color: inputColor)),
                  const SizedBox(width: 5),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          RouteGenerator.register,
                          (Route<dynamic> route) => false);
                    },
                    child: Text("S'inscrire",
                        style: TextStyle(color: defaultColor, fontSize: 18)),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              TextFieldWidget(
                hintText: 'E-mail',
                obscureText: false,
                validator: (value) {
                  if (value != "") {
                    return null;
                  } else {
                    return "le nom d'utilisateur est obligatoire !";
                  }
                },
                controller: model.username,
              ),
              const SizedBox(height: 15),
              TextFieldWidget(
                hintText: 'Mot de passe',
                obscureText: true,
                validator: (value) {
                  if (value != "") {
                    return null;
                  } else {
                    return "le mot de passe est obligatoire !";
                  }
                },
                controller: model.password,
              ),
              const SizedBox(height: 8),
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {
                    // Ajoutez ici la logique pour la récupération du mot de passe oublié
                  },
                  child: Text(
                    "Mot de passe oublié ?",
                    style: TextStyle(color: defaultColor, fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              ButtonWidget(
                width: double.infinity,
                text: "Se connecter",
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      RouteGenerator.homeScreen,
                      (Route<dynamic> route) => false);
                },
                heigth: 70,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
