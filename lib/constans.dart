import 'package:flutter/material.dart';

Color primary = Color(0xfff2f0f7);
Color secondary = Color(0xffffffff);

TextStyle titoli = TextStyle(
    fontFamily: 'Averta',
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    color: Colors.black);

Color colorNextButton = HexColor("3453f5");

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

const List<String> AddressList = [
  'Haifa',
  'Tel-Aviv',
  'Jarusalem',
];
