
import 'package:flutter/material.dart';

import '../../Styles/ColorStyle.dart';
import '../../Styles/TextStyles.dart';
import '../../Components/SwitchButtonCustom.dart';

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
          style: TextStyles
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


