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
import '../../Views/AdditionalSecurityRequired.dart';

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
                Container(
                  // margin: EdgeInsets.only(left: 16, right: 16),
                  padding: EffectStyle.padding(16, 16, 16, 16),
                  decoration: BoxDecoration(
                    color: ColorStyle.primaryWhite,
                    borderRadius: EffectStyle.radiusCustom(10),
                  ),
                  child: Column(
                    children: [
                      AdditionalSecurityRequired(),
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
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
