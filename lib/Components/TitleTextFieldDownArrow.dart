import 'package:advanced_capital_pay/Components/DropdownButtonCustom.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:flutter/material.dart';


class TitleTextFieldDownArrow extends StatelessWidget {
  const TitleTextFieldDownArrow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Account',
          style: TextStylesPoppins.textStyles_14.apply(
            color: ColorStyle.secondryBlack,
            fontWeightDelta: 1,
          ),
        ),
        SizedBox(height: 5,),
        DropdownButtonTextField(
          padding: EdgeInsets.only(left: 16,right: 16),
          colorBorder: Colors.grey,
          iconWidget: Image.asset(
            ImageStyle.dropDown,
            height: 16,
          ),
          listValue: ['Mr.', 'Miss', 'Mrs'],
          selectedValue: "Mr.",
          onChanged: (text) {},
        ),
      ],
    );
  }
}
