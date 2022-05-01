import 'package:flutter/material.dart';
import '../../Styles/ColorStyle.dart';
import '../../Styles/EffectStyle.dart';

class EffectStyleSignUp {
  static decoration([Color bg = Colors.transparent, double radiusBorder = 0]) {
    return BoxDecoration(
        color: bg,
        borderRadius: EffectStyle.radiusCustom(radiusBorder),
        border: Border.all(width: 1, color: ColorStyle.darkestBlueSignUp));
  }
  static decoration1([Color bg = Colors.transparent, double radiusBorder = 0]) {
    return BoxDecoration(
        color: bg,
        borderRadius: EffectStyle.radiusCustom(radiusBorder),
        border: Border.all(width: 1, color: ColorStyle.secondryBlack));
  }
}
