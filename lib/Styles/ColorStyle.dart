import 'package:flutter/material.dart';

class ColorStyle {
  static final Color primaryWhite = Colors.white;
  static final Color secondryBlack = Colors.black;
  static final Color blueSKY = hex("#1478FF");
  static final Color blueLight = hex("#A0E4F9");
  static final Color grey = hex("#696969	");
  static final Color grayColor = Colors.white.withOpacity(0.5);

  static Color hex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
