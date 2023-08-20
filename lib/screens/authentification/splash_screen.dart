import 'package:flutter/material.dart';
import 'package:mouridepro/constants.dart';
import 'package:mouridepro/utils/screen.dart';
import 'package:mouridepro/widgets/appBar/top_image.dart';

import '../../route/route_generator.dart';

class Authentication extends StatelessWidget {
  const Authentication({super.key});

  @override
  Widget build(BuildContext context) {
     final double screenH = screenHeight(context);
     final double screenW = screenWidth(context);
    return Scaffold(
      body:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TopImage(),
                  SizedBox(height: screenH/10),
                  Center(child: Image.asset("assets/images/declinaison.png", width: screenH/4,)),
                  SizedBox(height: screenH/6),
                  Center(
                    child: InkWell(
                    onTap: () {
                              Navigator.of(context).pushNamedAndRemoveUntil(
                              RouteGenerator.register,
                              (Route<dynamic> route) => false);
                    },
                    child: Container(
                        padding: const EdgeInsets.all(12),
                        width: screenW/2,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                        color: defaultColor),
                        child: const Center(child: Text("S'inscrire",style: TextStyle( fontSize: 18, color: Colors.white),)),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  Center(
                    child: InkWell(
                      child: Text("S'identifier", style: TextStyle( fontSize: 18, color: defaultColor)),
                      onTap: () {
                                Navigator.of(context).pushNamedAndRemoveUntil(
                                RouteGenerator.login,
                                (Route<dynamic> route) => false);
                      },
                    ),
                  )
                ],
              ),
    );
  }
}