import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';


class DropdownButtonCustom extends StatelessWidget {
  final Function(String?)? onChanged;
  final List<String>? listValue;
  final String? selectedValue;
  final Color? colorBorder;
  final EdgeInsets? padding;
  final double? radiusBorder;
  // final double? height;
  final Widget? iconWidget;
  final Text? hint;
  final TextStyle? textStyle;

  const DropdownButtonCustom({
    Key? key,
    this.onChanged,
    this.listValue,
    this.selectedValue,
    this.colorBorder = Colors.red,
    this.padding = EdgeInsets.zero,
    this.radiusBorder = 4,
    // this.height = 30,
    this.iconWidget = const Icon(Icons.keyboard_arrow_down, color: Colors.black,),
    this.hint = const Text(""),
    this.textStyle = const TextStyle()
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: DropdownButtonFormField<String>(
        isExpanded: true,
        value: selectedValue,
        icon: iconWidget,
        iconSize: 30,
        hint: hint,
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
                  maxLines: 1,
                  textAlign: TextAlign.left,
                  style: textStyle!.apply(
                    color: (selectedValue! == listValue![0]) ? ColorStyle.grey : ColorStyle.secondryBlack
                  )
              ),
            ))
            .toList(),
      ),
    );
  }
}



class DropdownButtonTextField extends StatelessWidget {
  final Function(String?)? onChanged;
  final List<String>? listValue;
  final String? selectedValue;
  final Color? colorBorder;
  final EdgeInsets? padding;
  final double? radiusBorder;
  final double? height;
  final Widget? iconWidget;

  const DropdownButtonTextField({
    Key? key,
    this.onChanged,
    this.listValue,
    this.selectedValue,
    this.colorBorder = Colors.red,
    this.padding = EdgeInsets.zero,
    this.radiusBorder = 40,
    this.height = 60,
    this.iconWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
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
                style: TextStylesPoppins.textStyles_14.apply(
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
