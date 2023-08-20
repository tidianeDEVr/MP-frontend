import 'package:flutter/material.dart';
import 'package:mouridepro/constants.dart';
import 'package:mouridepro/providers/authentication_provider.dart';
import 'package:mouridepro/widgets/button/button_widget.dart';
import 'package:provider/provider.dart';

import '../../../route/route_generator.dart';
import '../../../widgets/input/text_field_widget.dart';

class Profession extends StatelessWidget {
  const Profession({super.key});

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
                    Text("Informations complémentaires",
                        style: TextStyle(
                            color: inputColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(height: 16),
                    TextFieldWidget(
                        hintText: 'Secteur',
                        obscureText: false,
                        validator: (value) {
                          if (value != "") {
                            return null;
                          } else {
                            return "le secteur est obligatoire !";
                          }
                        },
                        controller: model.secteur),
                    const SizedBox(height: 16),
                    TextFieldWidget(
                        hintText: 'Titre du poste',
                        obscureText: false,
                        validator: (value) {
                          if (value != "") {
                            return null;
                          } else {
                            return "le titre est obligatoire !";
                          }
                        },
                        controller: model.titre),
                    const SizedBox(height: 16),
                    TextFieldWidget(
                        hintText: 'Entreprise',
                        obscureText: false,
                        validator: (value) {
                          if (value != "") {
                            return null;
                          } else {
                            return "l'entreprise est obligatoire !";
                          }
                        },
                        controller: model.entreprise),
                    const SizedBox(height: 16),
                    TextFieldWidget(
                        hintText: 'Dernier diplôme',
                        obscureText: false,
                        validator: (value) {
                          if (value != "") {
                            return null;
                          } else {
                            return "le diplôme est obligatoire !";
                          }
                        },
                        controller: model.diplome),
                    const SizedBox(height: 16),
                    TextFieldWidget(
                        hintText: 'Ecole ou université',
                        obscureText: false,
                        validator: (value) {
                          if (value != "") {
                            return null;
                          } else {
                            return "l'établissement est obligatoire !";
                          }
                        },
                        controller: model.ecole),
                    const SizedBox(height: 40),
                    Center(
                      child: InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamedAndRemoveUntil(
                                RouteGenerator.address,
                                (Route<dynamic> route) => false);
                          },
                          child: ButtonWidget(
                            width: MediaQuery.of(context).size.width,
                            text: "Continuer",
                            onPressed: () {},
                            heigth: 70,
                          )),
                    ),
                  ],
                ),
              )),
    );
  }
}
