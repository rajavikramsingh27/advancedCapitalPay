import 'package:advanced_capital_pay/Components/ButtonCustom.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Styles/TextStyles.dart';
import '../../Components/TextFieldCustom.dart';
import '../../Controllers/AccountDetailsRecoveryController.dart';

class UserIdentification extends StatelessWidget {
  UserIdentification({Key? key}) : super(key: key);
  final controller = Get.put(AccountDetailsRecoveryController());

  textFieldsAccount(String title, [bool isRequired = false]) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 18,
        ),
        Row(
          children: [
            Text(
              title,
              style: TextStyles.textStyles_16.apply(
                color: ColorStyle.secondryBlack,
                fontWeightDelta: 1,
              ),
            ),
            if (isRequired)
              Text(
                '*',
                style: TextStyles.textStyles_16.apply(
                  color: Colors.red,
                  fontWeightDelta: 11,
                ),
              ),
          ],
        ),
        SizedBox(
          height: 6,
        ),
        TextFieldCustomPrefix(
          hintText: '',
          prefix: Image.asset(
            ImageStyle.user,
            color: ColorStyle.darkestBlue,
          ),
          colorFill: ColorStyle.primaryWhite,
          colorBoder: ColorStyle.secondryBlack,
          textStyle: TextStyles.textStyles_14,
          radiusBorder: 30,
        ),
      ],
    );
  }

  titleDesc(String title, String desc) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 18,
        ),
        Text(
          title,
          style: TextStyles.textStyles_16.apply(
            color: ColorStyle.secondryBlack,
            fontWeightDelta: 1,
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
    return Container(
      padding: EffectStyle.padding(30, 30, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 16,
          ),
          Text(
            'User Identification',
            style: TextStyles.textStyles_20.apply(
              color: ColorStyle.primaryWhite,
              fontWeightDelta: 1,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            padding: EffectStyle.padding(16, 16, 30, 16),
            decoration: BoxDecoration(
              color: ColorStyle.primaryWhite,
              borderRadius: EffectStyle.radiusCustom(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      ImageStyle.icon_material_error,
                      width: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Text(
                        controller.isUserIdentification.value
                            ? 'Please enter the One time passcode (OTP) which has been sent to your registered number in order to continue. '
                            : 'Please provide your User Identification/E-Mail Address associated with your account to proceed.',
                        style: TextStyles.textStyles_12.apply(
                          color: ColorStyle.darkestBlue,
                          fontWeightDelta: 1,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                if (controller.isUserIdentification.value)
                textFieldsAccount('User ID/E-Mail Address', true),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Additional Security Required',
                  style: TextStyles.textStyles_16.apply(
                    color: ColorStyle.secondryBlack,
                    fontWeightDelta: 1,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
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
                  style: TextStyles.textStyles_16.apply(
                    color: ColorStyle.secondryBlack,
                    fontWeightDelta: 1,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 36,
                              width: 36,
                              decoration: BoxDecoration(
                                  color: ColorStyle.primaryWhite,
                                  borderRadius: EffectStyle.radiusCustom(36),
                                  border: Border.all(
                                      color: ColorStyle.blueSKY, width: 1)),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Container(
                              height: 36,
                              width: 36,
                              decoration: BoxDecoration(
                                  color: ColorStyle.primaryWhite,
                                  borderRadius: EffectStyle.radiusCustom(36),
                                  border: Border.all(
                                      color: ColorStyle.blueSKY, width: 1)),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Container(
                              height: 36,
                              width: 36,
                              decoration: BoxDecoration(
                                  color: ColorStyle.primaryWhite,
                                  borderRadius: EffectStyle.radiusCustom(36),
                                  border: Border.all(
                                      color: ColorStyle.blueSKY, width: 1)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Request new OTP',
                          style: TextStyles.textStyles_12.apply(
                            color: ColorStyle.secondryBlack,
                            fontWeightDelta: 1,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 36,
                              width: 36,
                              decoration: BoxDecoration(
                                  color: ColorStyle.primaryWhite,
                                  borderRadius: EffectStyle.radiusCustom(36),
                                  border: Border.all(
                                      color: ColorStyle.blueSKY, width: 1)),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Container(
                              height: 36,
                              width: 36,
                              decoration: BoxDecoration(
                                  color: ColorStyle.primaryWhite,
                                  borderRadius: EffectStyle.radiusCustom(36),
                                  border: Border.all(
                                      color: ColorStyle.blueSKY, width: 1)),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Container(
                              height: 36,
                              width: 36,
                              decoration: BoxDecoration(
                                  color: ColorStyle.primaryWhite,
                                  borderRadius: EffectStyle.radiusCustom(36),
                                  border: Border.all(
                                      color: ColorStyle.blueSKY, width: 1)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Request OTP via Call',
                          style: TextStyles.textStyles_12.apply(
                            color: ColorStyle.blueSKY,
                            fontWeightDelta: 1,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 36,
                ),
                Row(
                  children: [
                    Expanded(
                        child: ElevatedButtonCustom(
                      colorBG: ColorStyle.primaryWhite,
                      textStyle: TextStyles.textStyles_14
                          .apply(color: ColorStyle.blueSKY, fontWeightDelta: 1),
                      colorBorder: ColorStyle.blueSKY,
                      text: 'Cancel',
                      radiusBorder: 30,
                      onTap: () {},
                    )),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: ElevatedButtonCustom(
                      colorBG: ColorStyle.blueSKY,
                      text: 'Generate OTP Code',
                      radiusBorder: 30,
                      textStyle: TextStyles.textStyles_14.apply(
                          color: ColorStyle.primaryWhite, fontWeightDelta: 1),
                      onTap: () {
                        controller.arrSelectOptionIcons[2] = true;

                        for (int i = 0;
                            i < controller.arrSelectOption.length;
                            i++) {
                          if (i == 2) {
                            controller.arrSelectOption[2] = true;
                          } else {
                            controller.arrSelectOption[i] = false;
                          }
                        }
                      },
                    )),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
