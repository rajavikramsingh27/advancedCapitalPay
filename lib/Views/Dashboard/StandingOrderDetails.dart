
import 'package:advanced_capital_pay/Components/ButtonCustom.dart';
import 'package:advanced_capital_pay/Components/ComponentsTitleInputs.dart';
import 'package:advanced_capital_pay/Components/RadioButtonCustom.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:get/utils.dart';


import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';


class StandingOrderDetails extends StatefulWidget {
  final String? textSecond;
  final Function()? onTapEditOrder;
  const StandingOrderDetails({Key? key, this.onTapEditOrder, this.textSecond = 'Text Second'}) : super(key: key);

  @override
  _StandingOrderDetailsState createState() => _StandingOrderDetailsState();
}

class _StandingOrderDetailsState extends State<StandingOrderDetails> {

  final marginWhiteBox = EffectStyle.padding(16, 16, 0, 0);
  final paddingWhiteBox = EffectStyle.padding(16, 16, 0, 0);
  final decorationWhiteBox = BoxDecoration(
      color: ColorStyle.primaryWhite,
      borderRadius: EffectStyle.radiusCustom(6));

  bool isFurtherNotice = false;
  bool isEditOrder = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: marginWhiteBox,
      padding: paddingWhiteBox,
      decoration: decorationWhiteBox,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ComponentsTitleInputs.titleDropDown(
              'Account',
              true, 'USD | 600.00',
              [
                'USD | 800.00',
                'USD | 600.00',
                'USD | 700.00',
              ]
          ),
          SizedBox(height: 6),
          Text(
            'Standing Order',
            style: TextStylesPoppins.textStyles_14
                .apply(color: ColorStyle.secondryBlack, fontWeightDelta: 2),
          ),
          RadioButtonCustom(
            firstText: 'No',
            secondText: 'Yes',
            colorInActive: ColorStyle.grey,
            colorActive: ColorStyle.darkestBlueSignUp,
            sizeIcon: 28,
            textStyleFirst: TextStylesPoppins.textStyles_12
                .apply(color: ColorStyle.secondryBlack, fontWeightDelta: 2),
            textStyleSecond: TextStylesPoppins.textStyles_12
                .apply(color: ColorStyle.secondryBlack, fontWeightDelta: 2),
          ),
          ComponentsTitleInputs.titleDropDown(
              'Repeat Transfer Every',
              true, 'Daily',
              [
                'Daily',
                'Weekly',
                'Monthly',
              ]
          ),
          Text(
            'This transfer can be today or scheduled at a later date.',
            style: TextStylesPoppins.textStyles_10
                .apply(color: ColorStyle.secondryBlack, fontWeightDelta: 1),
          ),
          ComponentsTitleInputs.titleDropDown(
              'Transfer Starting On',
              true, 'Friday, Feburary 25th, 2021',
              [
                'Friday, Feburary 25th, 2021',
                'Friday, Feburary 30th, 2021',
                'Friday, Feburary 31st, 2021',
              ]
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Text(
                'Transfer Ending',
                style: TextStylesPoppins.textStyles_14
                    .apply(color: ColorStyle.secondryBlack, fontWeightDelta: 2),
              ),
              Text(
                '*',
                style: TextStylesPoppins.textStyles_18
                    .apply(color: Colors.red, fontWeightDelta: 2),
              ),
            ],
          ),
          TitleDatePicker(
            title: 'Date',
          ),
          ComponentsTitleInputs.textFieldsAccount(
            'After',
            false, 'I transfers have been mode',
          ),
          SizedBox(height: 16),
          InkWell(
            child: Row(
              children: [
                Icon(
                  (isFurtherNotice) ? Icons.radio_button_on : Icons.radio_button_off,
                  color: (isFurtherNotice) ? ColorStyle.darkestBlueSignUp : ColorStyle.grey,
                  size: 30,
                ),
                SizedBox(width: 2,),
                Text(
                  'Further notice has been provided',
                  style: TextStylesPoppins.textStyles_13
                      .apply(color: ColorStyle.secondryBlack, fontWeightDelta: 1),
                ),
              ],
            ),
            onTap: () {
              isFurtherNotice = !isFurtherNotice;
              setState(() {

              });
            },
          ),
          SizedBox(height: 16),
          Container(
            child: ButtonContinueCancel(
              radiusBorder: 40,
              height: 44,
              textFirst: 'Cancel',
              colorBGFirst: Colors.transparent,
              colorBorderFirst: ColorStyle.hex('#016ECF'),
              textStyleFirst: TextStylesPoppins.textStyles_14.apply(
                fontWeightDelta: 1,
                color: ColorStyle.hex('#016ECF'),
              ),
              onTapFirst: () {},
              textSecond: widget.textSecond,
              colorBGSecond: ColorStyle.hex('#016ECF'),
              colorBorderSecond: Colors.transparent,
              textStyleSecond: TextStylesPoppins.textStyles_14
                  .apply(fontWeightDelta: 1, color: ColorStyle.primaryWhite),
              onTapSecond: widget.onTapEditOrder,
            ),
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}



