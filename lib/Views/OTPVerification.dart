

import 'package:advanced_capital_pay/Components/ButtonCustom.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Styles/TextStyles.dart';
import '../Components/TextFieldCustom.dart';
import '../Controllers/AccountDetailsRecoveryController.dart';


class OTPVerification extends StatelessWidget {
  const OTPVerification({Key? key}) : super(key: key);

  titleDesc(String title, String desc) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 18,
        ),
        Text(
          title,
          style: TextStyles.textStyles_15.apply(
            color: ColorStyle.secondryBlack,
            fontWeightDelta: 2,
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          desc,
          style: TextStyles.textStyles_12.apply(
            color: ColorStyle.secondryBlack,
            fontWeightDelta: 1,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            ImageStyle.mobileBlueBG,
            height: 80,
          ),
        ),
        titleDesc('Step 1',
            'To continue through the Password Recovery you will first need to provide the correct User Identification/E-Mail Address, followed by clicking Generate OTP.'),
        titleDesc('Step 2',
            'A six digit code will be sent to your mobile number associated with your account, enter this into the security box below. Once the correct information has been provided you will be ableto set your new password.'),
        titleDesc('Verify One Time Passcode Below',
            'Once you have successfully entered the correct User ID/E-Mail Address click generate OTP Code below to send a One Time Passcode to your registered Mobile.'),
        SizedBox(
          height: 16,
        ),
        Text(
          'ACP',
          style: TextStyles.textStyles_15.apply(
            color: ColorStyle.secondryBlack,
            fontWeightDelta: 2,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.11,
              height: MediaQuery.of(context).size.width * 0.11,
              decoration: BoxDecoration(
                  color: ColorStyle.primaryWhite,
                  borderRadius: EffectStyle.radiusCustom(36),
                  border: Border.all(
                      color: ColorStyle.blueSKY, width: 1)),
            ),
            // SizedBox(
            //   width: 6,
            // ),
            Container(
              width: MediaQuery.of(context).size.width * 0.11,
              height: MediaQuery.of(context).size.width * 0.11,
              decoration: BoxDecoration(
                  color: ColorStyle.primaryWhite,
                  borderRadius: EffectStyle.radiusCustom(36),
                  border: Border.all(
                      color: ColorStyle.blueSKY, width: 1)),
            ),
            // SizedBox(
            //   width: 6,
            // ),
            Container(
              width: MediaQuery.of(context).size.width * 0.11,
              height: MediaQuery.of(context).size.width * 0.11,
              decoration: BoxDecoration(
                  color: ColorStyle.primaryWhite,
                  borderRadius: EffectStyle.radiusCustom(36),
                  border: Border.all(
                      color: ColorStyle.blueSKY, width: 1)),
            ),
            // SizedBox(
            //   width: 6,
            // ),
            Container(
              width: MediaQuery.of(context).size.width * 0.11,
              height: MediaQuery.of(context).size.width * 0.11,
              decoration: BoxDecoration(
                  color: ColorStyle.primaryWhite,
                  borderRadius: EffectStyle.radiusCustom(36),
                  border: Border.all(
                      color: ColorStyle.blueSKY, width: 1)),
            ),
            // SizedBox(
            //   width: 6,
            // ),
            Container(
              width: MediaQuery.of(context).size.width * 0.11,
              height: MediaQuery.of(context).size.width * 0.11,
              decoration: BoxDecoration(
                  color: ColorStyle.primaryWhite,
                  borderRadius: EffectStyle.radiusCustom(36),
                  border: Border.all(
                      color: ColorStyle.blueSKY, width: 1)),
            ),
            // SizedBox(
            //   width: 6,
            // ),
            Container(
              width: MediaQuery.of(context).size.width * 0.1,
              height: MediaQuery.of(context).size.width * 0.1,
              decoration: BoxDecoration(
                  color: ColorStyle.primaryWhite,
                  borderRadius: EffectStyle.radiusCustom(36),
                  border: Border.all(
                      color: ColorStyle.blueSKY, width: 1)),
            ),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Request new OTP',
              style: TextStyles.textStyles_12.apply(
                color: ColorStyle.secondryBlack,
                fontWeightDelta: 1,
              ),
            ),
            Text(
              'Request OTP via Call',
              style: TextStyles.textStyles_12.apply(
                color: ColorStyle.hex('#016ECF'),
                fontWeightDelta: 1,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
