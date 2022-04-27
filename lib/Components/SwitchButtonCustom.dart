
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class SwitchButtonCustom {
  static switchButton(bool value, Function(bool) onToggle) {
    return FlutterSwitch(
        width: 50.0,
        height: 26.0,
        // valueFontSize: 25.0,
        toggleSize: 16.0,
        value: value,
        // borderRadius: 30.0,
        // padding: 8.0,
        // showOnOff: true,
        onToggle: onToggle
    );
  }
}