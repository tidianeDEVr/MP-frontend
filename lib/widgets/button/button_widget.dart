import 'package:flutter/material.dart';
import 'package:mouridepro/constants.dart';

class ButtonWidget extends StatelessWidget {
  final double width;
  final double heigth;
  final String text;
  const ButtonWidget(
      {required this.width,
      required this.heigth,
      required this.text,
      super.key,
      required Null Function() onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: heigth,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: defaultColor),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 17,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
