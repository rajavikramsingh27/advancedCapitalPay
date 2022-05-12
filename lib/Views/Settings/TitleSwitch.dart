
import 'package:flutter/material.dart';

import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:advanced_capital_pay/Components/SwitchButtonCustom.dart';

class TitleSwitch extends StatefulWidget {
  final String title;
  const TitleSwitch({Key? key, this.title = 'SMS Notification'}) : super(key: key);

  @override
  _TitleSwitchState createState() => _TitleSwitchState();
}

class _TitleSwitchState extends State<TitleSwitch> {
  bool isSwitchOn = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.title,
          style: TextStylesPoppins
              .textStyles_16
              .apply(
            color: ColorStyle
                .secondryBlack,
            fontWeightDelta: 0,
          ),
        ),
        SwitchButtonCustom.switchButton(isSwitchOn, (value) {
          isSwitchOn = !isSwitchOn;
          setState(() {

          });
        }),
      ],
    );
  }
}


