import 'package:advanced_capital_pay/Components/ButtonCustom.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Styles/TextStyles.dart';
import '../../../Components/TextFieldCustom.dart';
import '../../../Controllers/AccountDetailsRecoveryController.dart';

class PasswordSetSuccessfully extends StatelessWidget {
  const PasswordSetSuccessfully({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EffectStyle.padding(30, 30, 0, 0),
      margin: EffectStyle.padding(0, 0, 30, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EffectStyle.padding(16, 16, 30, 16),
            decoration: BoxDecoration(
              color: ColorStyle.primaryWhite,
              borderRadius: EffectStyle.radiusCustom(10),
            ),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Password Successfully Updated',
                  style: TextStyles.textStyles_16.apply(
                    color: ColorStyle.secondryBlack,
                    fontWeightDelta: 1,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Image.asset(ImageStyle.setPasswordSuccessfully, width: 236, height: 174,),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Your password has been updated successfully. You can now login using your new password. If you encounter any problems please feel free to speak with one of our Customer Support Representatives.',
                  style: TextStyles.textStyles_12
                      .apply(color: ColorStyle.secondryBlack, fontWeightDelta: 1),
                ),
                SizedBox(
                  height: 16,
                ),
                ElevatedButtonCustom(
                  width: MediaQuery.of(context).size.width,
                  colorBG: ColorStyle.blueSKY,
                  text: 'Login Screen',
                  radiusBorder: 30,
                  textStyle: TextStyles.textStyles_14.apply(
                      color: ColorStyle.primaryWhite, fontWeightDelta: 1),
                  onTap: () {

                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}