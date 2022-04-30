import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Styles/ColorStyle.dart';
import '../../Styles/EffectStyle.dart';
import '../../Styles/TextStyles.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';

class EditIconTitle extends StatelessWidget {
  final Color? colorIcon;
  final Color? colorText;

  final Color? colorBG;
  final Color? colorBorder;

  final double? heightIcon;
  final double? fontSize;

  final double? radiusBorder;
  final EdgeInsets? padding;

  final Function()? onTap;


  const EditIconTitle({
    Key? key,
    this.colorIcon = Colors.yellow,
    this.colorText = Colors.yellow,
    this.colorBG = Colors.orange,
    this.colorBorder = Colors.white,
    this.radiusBorder = 16,
    this.padding = const EdgeInsets.only(left: 6, right: 6, top: 0, bottom: 0),
    this.heightIcon = 14,
    this.fontSize = 14,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        alignment: Alignment.center,
        padding: padding,
        decoration: BoxDecoration(
            color: colorBG,
            borderRadius: BorderRadius.circular(radiusBorder!),
            border: Border.all(color: colorBorder!, width: 1)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.edit,
              color: colorIcon,
              size: heightIcon,
            ),
            SizedBox(
              width: 2,
            ),
            Text(
                'Edit',
                style: TextStyle(
                    color: colorText,
                    fontFamily: TextStyles.kFontFamily,
                    fontSize: fontSize,
                    fontWeight: FontWeight.w600)),
          ],
        ),
      ),
      onTap: onTap,
    );
  }
}
