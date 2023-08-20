import 'package:flutter/material.dart';
import 'package:mouridepro/constants.dart';
import 'package:mouridepro/providers/authentication_provider.dart';
import 'package:mouridepro/widgets/button/button_widget.dart';
import 'package:provider/provider.dart';

import '../../route/route_generator.dart';
import '../input/text_field_widget.dart';

class Address extends StatelessWidget {
  const Address({super.key});

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
                        hintText: 'Ville',
                        obscureText: false,
                        validator: (value) {
                          if (value != "") {
                            return null;
                          } else {
                            return "la ville est obligatoire !";
                          }
                        },
                        controller: model.city),
                    const SizedBox(height: 16),
                    TextFieldWidget(
                        hintText: 'Téléphone',
                        obscureText: false,
                        validator: (value) {
                          if (value != "") {
                            return null;
                          } else {
                            return "le titre est obligatoire !";
                          }
                        },
                        controller: model.phone),
                    const SizedBox(height: 16),
                    TextFieldWidget(
                        hintText: 'Langue',
                        obscureText: false,
                        validator: (value) {
                          if (value != "") {
                            return null;
                          } else {
                            return "la langue est obligatoire !";
                          }
                        },
                        controller: model.language),
                    const SizedBox(height: 16),
                    TextFieldWidget(
                        hintText: 'Linkedin',
                        obscureText: false,
                        validator: (value) {
                          return null;
                        },
                        controller: model.linkedin),
                    const SizedBox(height: 16),
                    TextFieldWidget(
                        hintText: 'Twitter',
                        obscureText: false,
                        validator: (value) {
                          return null;
                        },
                        controller: model.twitter),
                    const SizedBox(height: 40),
                    Center(
                      child: InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamedAndRemoveUntil(
                                RouteGenerator.homeScreen,
                                (Route<dynamic> route) => false);
                          },
                          child: ButtonWidget(
                            width: MediaQuery.of(context).size.width,
                            text: "Terminer",
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
