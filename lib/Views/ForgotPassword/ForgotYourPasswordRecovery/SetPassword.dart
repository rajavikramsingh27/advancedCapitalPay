import 'package:advanced_capital_pay/Components/ButtonCustom.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:advanced_capital_pay/Components/TextFieldCustom.dart';
import 'package:advanced_capital_pay/Controllers/AccountDetailsRecoveryController.dart';

class SetPassword extends StatelessWidget {
  SetPassword({Key? key}) : super(key: key);

  @override
  final controller = Get.put(AccountDetailsRecoveryController());

  textFieldsAccount(String title, String hint, [bool isRequired = false]) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Text(
              title,
              style: TextStylesPoppins.textStyles_16.apply(
                color: ColorStyle.secondryBlack,
                fontWeightDelta: 1,
              ),
            ),
            if (isRequired)
              Text(
                '*',
                style: TextStylesPoppins.textStyles_16.apply(
                  color: Colors.red,
                  fontWeightDelta: 11,
                ),
              ),
          ],
        ),
        SizedBox(
          height: 6,
        ),
        TextFieldPasswordCustom(
          hintText: hint,
          prefix: Container(
              padding: EdgeInsets.only(
                top: 6,
                bottom: 6,
              ),
              height: 30,
              child: Image.asset(
                ImageStyle.lock,
                color: ColorStyle.darkestBlue,
              )),
          colorSuffix: ColorStyle.darkestBlue.withOpacity(0.4),
          colorFill: ColorStyle.primaryWhite,
          colorBoder: ColorStyle.secondryBlack,
          textStyle:
              TextStylesPoppins.textStyles_12.apply(color: ColorStyle.secondryBlack),
          hintTextStyle: TextStylesPoppins.textStyles_12.apply(color: ColorStyle.grey),
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
          style: TextStylesPoppins.textStyles_16.apply(
            color: ColorStyle.secondryBlack,
            fontWeightDelta: 1,
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          desc,
          style: TextStylesPoppins.textStyles_12.apply(
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
            'New Password Details',
            style: TextStylesPoppins.textStyles_20.apply(
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
                        'Set your new password to login and access your AdvanceCapitalPay Account. Please ensure that you keep your password safe and to yourself at all times.',
                        style: TextStylesPoppins.textStyles_12.apply(
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
                textFieldsAccount(
                    'Create New Password', 'Create New Password', true),
                textFieldsAccount(
                    'Create New Password', 'Create New Password', true),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Please enter the same password as above',
                  style: TextStylesPoppins.textStyles_10
                      .apply(color: Colors.red, fontWeightDelta: 1),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Password Strength',
                  style: TextStylesPoppins.textStyles_16.apply(
                    color: ColorStyle.secondryBlack,
                    fontWeightDelta: 1,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                LinearProgressIndicator(
                  backgroundColor: ColorStyle.grey,
                  valueColor: AlwaysStoppedAnimation<Color>(ColorStyle.green),
                  value: 0.9,
                ),
                SizedBox(
                  height: 10,
                ),
                ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: controller.arrPasswordStrngh.length,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 10,
                      );
                    },
                    itemBuilder: (context, index) {
                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 10,
                            width: 10,
                            margin: EdgeInsets.only(top: 6),
                            decoration: BoxDecoration(
                                color: ColorStyle.secondryBlack,
                                borderRadius: EffectStyle.radiusCustom(10)),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Expanded(
                            child: Text(
                              controller.arrPasswordStrngh[index],
                              style: TextStylesPoppins.textStyles_14.apply(
                                color: ColorStyle.secondryBlack,
                                fontWeightDelta: 0,
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
                SizedBox(
                  height: 36,
                ),
                Row(
                  children: [
                    Expanded(
                        child: ElevatedButtonCustom(
                      colorBG: ColorStyle.primaryWhite,
                      textStyle: TextStylesPoppins.textStyles_14
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
                      text: 'Set New Password',
                      radiusBorder: 30,
                      textStyle: TextStylesPoppins.textStyles_14.apply(
                          color: ColorStyle.primaryWhite, fontWeightDelta: 1),
                      onTap: () {
                        controller.arrSelectOptionIcons[3] = true;

                        for (int i = 0;
                            i < controller.arrSelectOption.length;
                            i++) {
                          if (i == 3) {
                            controller.arrSelectOption[3] = true;
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
