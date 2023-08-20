import 'package:flutter/material.dart';
import 'package:mouridepro/widgets/drawer/donation_widget.dart';
import 'package:provider/provider.dart';
import 'package:mouridepro/providers/authentication_provider.dart';
import 'package:mouridepro/widgets/appBar/top_image.dart';

import '../../../route/route_generator.dart';
import '../../../utils/screen.dart';
import '../../../widgets/button/button_widget.dart';
import '../../../widgets/input/text_field_widget.dart';

class Donation extends StatelessWidget {
  const Donation({Key? key});

  @override
  Widget build(BuildContext context) {
    final double screenH = screenHeight(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Consumer<AuthentificationProvider>(
        builder: (context, model, _) => Padding(
          padding: const EdgeInsets.all(14.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TopImage(),
                SizedBox(height: screenH * 0.005),
                DonationWidget(), // Ajout du widget DonationModal
                SizedBox(height: screenH * 0.025),
                TextFieldWidget(
                  hintText: 'Montant',
                  obscureText: false,
                  validator: (value) {
                    if (value != "") {
                      return null;
                    } else {
                      return "le montant est obligatoire !";
                    }
                  },
                  controller: model.username,
                ),
                SizedBox(height: screenH * 0.060),
                ButtonWidget(
                  width: double.infinity,
                  text: "Continuer",
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        RouteGenerator.homeScreen,
                        (Route<dynamic> route) => false);
                  },
                  heigth: 70,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
