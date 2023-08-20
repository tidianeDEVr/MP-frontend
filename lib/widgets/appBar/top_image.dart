import 'package:flutter/material.dart';
import 'package:mouridepro/utils/screen.dart';

class TopImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     final double screenH = screenHeight(context);
     final double screenW = screenWidth(context);
     final double desiredHeight = screenH * 0.085;
     final double desiredWidth = screenW *  0.193;

    return Align(
      alignment: Alignment.topCenter,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: desiredHeight),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset("assets/images/logo.png", width: desiredWidth),
          ),
        ],
      ),
    );
  }
}
