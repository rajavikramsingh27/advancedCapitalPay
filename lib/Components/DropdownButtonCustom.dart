import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import '../Styles/TextStyles.dart';


class DropdownButtonCustom extends StatelessWidget {
  final Function(String?)? onChanged;
  final List<String>? listValue;
  final String? selectedValue;
  final Color? colorBorder;
  final EdgeInsets? padding;
  final double? radiusBorder;
  final double? height;
  final Widget? iconWidget;

  const DropdownButtonCustom({
    Key? key,
    this.onChanged,
    this.listValue,
    this.selectedValue,
    this.colorBorder = Colors.red,
    this.padding,
    this.radiusBorder = 4,
    this.height = 60,
    this.iconWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: DropdownButtonFormField<String>(
        isExpanded: true,
        value: selectedValue,
        icon: iconWidget,
        iconSize: 30,

        // Image.asset(
        //   ImageStyle.dropDown,
        //   height: 16,
        // ),

        decoration: InputDecoration(
          contentPadding: padding,
          focusedBorder: OutlineInputBorder(
              borderRadius: EffectStyle.radiusCustom(radiusBorder!),
              borderSide: BorderSide(color: colorBorder!, width: 1)),
          enabledBorder: OutlineInputBorder(
              borderRadius: EffectStyle.radiusCustom(radiusBorder!),
              borderSide: BorderSide(color: colorBorder!, width: 1)),
          border: OutlineInputBorder(
              borderRadius: EffectStyle.radiusCustom(radiusBorder!),
              borderSide: BorderSide(color: colorBorder!, width: 1)),
        ),
        onChanged: onChanged!,
        items: listValue!
            .map<DropdownMenuItem<String>>(
                (String value) => DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        textAlign: TextAlign.left,
                        style: TextStyles.textStyles_14.apply(
                          color: ColorStyle.secondryBlack,
                          // fontWeightDelta: 0,
                        ),
                      ),
                    ))
            .toList(),
      ),
    );
  }
}
