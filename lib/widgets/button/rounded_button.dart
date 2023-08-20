import 'package:flutter/material.dart';
import 'package:mouridepro/constants.dart';

class RoundedButtonWitheIcon extends StatelessWidget {
  final String text;
  final Color bgColor;
  final double heigth;
  final Color textColor;
  final double sizeText;
  const RoundedButtonWitheIcon(
      {required this.text,
      required this.bgColor,
      required this.heigth,
      required this.sizeText,
      this.textColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: heigth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: bgColor,
        ),
        child: Center(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(Icons.logout_outlined, color: Colors.white),
          Text(
            text,
            style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.normal,
                fontFamily: 'Inter',
                fontSize: sizeText),
          ),
        ])));
  }
}

class RoundedButtonOutline extends StatelessWidget {
  final String text;
  final Color bgColor;
  final double heigth;
  final Color textColor;
  final double sizeText;
  const RoundedButtonOutline(
      {required this.text,
      required this.bgColor,
      required this.heigth,
      required this.sizeText,
      this.textColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: heigth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: inputColor, width: 1),
          color: Colors.white,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.normal,
                fontFamily: 'Inter',
                fontSize: sizeText),
          ),
        ));
  }
}
