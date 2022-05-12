import 'package:advanced_capital_pay/Components/DropdownButtonCustom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class RadioButtonCustom extends StatefulWidget {
  final String? firstText;
  final String? secondText;
  final Color? colorInActive;
  final Color? colorActive;

  final TextStyle? textStyleFirst;
  final TextStyle? textStyleSecond;

  final double sizeIcon;

  RadioButtonCustom({
    Key? key,
    this.firstText = 'First',
    this.secondText = 'Second',
    this.colorInActive = Colors.red,
    this.colorActive = Colors.green,
    this.textStyleFirst,
    this.textStyleSecond,
    this.sizeIcon = 30,
  }) : super(key: key);

  int numberSelection=0;

  @override
  _RadioButtonCustomState createState() => _RadioButtonCustomState();
}

class _RadioButtonCustomState extends State<RadioButtonCustom> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          child: Row(
            children: [
              Icon(
                  (widget.numberSelection == 1) ? Icons.radio_button_on : Icons.radio_button_off,
                color: (widget.numberSelection == 1) ? widget.colorActive :  widget.colorInActive,
                size: widget.sizeIcon,
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
                color: (widget.numberSelection == 2) ? widget.colorActive :  widget.colorInActive,
                size: widget.sizeIcon,
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
