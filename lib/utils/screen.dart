import 'package:flutter/material.dart';
double screenHeight(BuildContext context) {
 final double screenHeight = MediaQuery.of(context).size.height;
 return screenHeight;
}
double screenWidth(BuildContext context) {
 final double screenWidth = MediaQuery.of(context).size.width;
 return screenWidth;
}