import 'package:flutter/material.dart';

class ColorStyle {
  static final Color primaryWhite = Colors.white;
  static final Color secondryBlack = Colors.black;
  static final Color green = hex("#3FD113");
  static final Color blueSKY = hex("#1478FF");
  static final Color blueLight = hex("#A0E4F9");
  static final Color ligthBlue = hex("#00B8FF");
  static final Color darkBlue = hex("#01F6FF");
  static final Color darkestBlue = hex("#082561");
  static final Color darkestBlueSignUp = hex("#1976C1");
  static final Color grey = Colors.grey;
  static final Color grayColor = Colors.white.withOpacity(0.5);

  static Color hex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
