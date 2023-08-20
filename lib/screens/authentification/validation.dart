import 'package:flutter/material.dart';
import 'package:mouridepro/constants.dart';

class ValidationScreen extends StatelessWidget {
  final String name;
  const ValidationScreen({required this.name,super.key});

  @override
  Widget build(BuildContext context) {
    double screen = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 14),

                    Image.asset("assets/images/logo.png", width: 70),

                    SizedBox(height: screen/10),

                    Text( "Bienvenue $name sur", style: TextStyle( color: inputColor, fontSize: 18),),

                    const SizedBox(height: 4),

                    Row(
                      children: [

                        Text("Murid professionnel", style: TextStyle(color: defaultColor, fontSize: 18)),
                        
                        Text( ", veuillez consultez", style: TextStyle( color: inputColor, fontSize: 18),)
                    ],),

                    const SizedBox(height: 4),

                    Text( "votre e-mail pour confirmation de votre", style: TextStyle( color: inputColor, fontSize: 18),),

                    const SizedBox(height: 4),

                    Text( "compte", style: TextStyle( color: inputColor, fontSize: 18),),

                    SizedBox(height: screen/8),

                    Center(child: Image.asset("assets/images/declinaison.png", width: screen/4,)),
                    
            
                  ],
                ),
      ),
    );
  }
}