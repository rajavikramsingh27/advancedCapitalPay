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
    this.height = 60,
    this.iconWidget = const Icon(Icons.keyboard_arrow_down, color: Colors.black,),
    this.hint = const Text(""),
    this.textStyle = const TextStyle()
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
                        textAlign: TextAlign.left,
                        style: textStyle
                      ),
                    ))
            .toList(),
      ),
    );
  }
}
