import 'package:advanced_capital_pay/Components/DropdownButtonCustom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Styles/ColorStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';


class RedioButtonCustom extends StatefulWidget {
  final String? firstText;
  final String? secondText;
  final Color? colorFirst;
  final Color? colorSecond;

  final TextStyle? textStyleFirst;
  final TextStyle? textStyleSecond;

  RedioButtonCustom({
    Key? key,
    this.firstText = 'First',
    this.secondText = 'Second',
    this.colorFirst = Colors.red,
    this.colorSecond = Colors.red,
    this.textStyleFirst,
    this.textStyleSecond,
  }) : super(key: key);

  int numberSelection=0;

  @override
  _RedioButtonCustomState createState() => _RedioButtonCustomState();
}

class _RedioButtonCustomState extends State<RedioButtonCustom> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          child: Row(
            children: [
              Icon(
                  (widget.numberSelection == 1) ? Icons.radio_button_on : Icons.radio_button_off,
                color: widget.colorFirst,
              ),
              SizedBox(width: 2,),
              Text(
                widget.firstText!,
                style: widget.textStyleFirst,
              ),
            ],
          ),
          onTap: () {
            widget.numberSelection = 1;
            setState(() {

            });
          },
        ),
        SizedBox(width: 16,),
        InkWell(
          child: Row(
            children: [
              Icon(
                  (widget.numberSelection == 2) ? Icons.radio_button_on : Icons.radio_button_off,
                color: widget.colorSecond,
              ),
              SizedBox(width: 2,),
              Text(
                widget.secondText!,
                style: widget.textStyleSecond,
              ),
            ],
          ),
          onTap: () {
            widget.numberSelection = 2;
            setState(() {

            });
          },        ),
      ],
    );
  }
}
