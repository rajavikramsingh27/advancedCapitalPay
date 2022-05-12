import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:flutter/material.dart';

class EffectStyleSignUp {
  static decoration([Color bg = Colors.transparent, double radiusBorder = 0]) {
    return BoxDecoration(
        color: bg,
        borderRadius: EffectStyle.radiusCustom(radiusBorder),
        border: Border.all(width: 1, color: ColorStyle.darkestBlueSignUp)
    );
  }
  static decoration1([Color bg = Colors.transparent, double radiusBorder = 0]) {
    return BoxDecoration(
        color: bg,
        borderRadius: EffectStyle.radiusCustom(radiusBorder),
        border: Border.all(width: 1, color: ColorStyle.secondryBlack));
  }
}
