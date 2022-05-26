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
import 'package:advanced_capital_pay/Components/DropdownButtonCustom.dart';

class AccountDetails extends StatelessWidget {
  AccountDetails({Key? key}) : super(key: key);

  final controller = Get.put(AccountDetailsRecoveryController());

  textFieldsAccount(String title, [bool isRequired = false, String hintText = '']) {
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
        TextFieldCustom(
          colorBoder: ColorStyle.secondryBlack,
          hintText: hintText,
          textStyle: TextStylesPoppins.textStyles_14,
          radiusBorder: 30,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: AccountDetailsRecoveryController(),
      initState: (state) {
         controller.reset();
      },
      builder: (auth) {
        return Obx(() =>Container(
          padding: EffectStyle.padding(30, 30, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 16,
              ),
              Text(
                'Account Details',
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
                            'Please make sure you enter the correct details associated with your account to proceed. If you are still having trouble completing this step click the chat icon in the top left of the page to speak with one of our customer service representatives.',
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

                    Text(
                      'Accounts Type',
                      style: TextStylesPoppins.textStyles_16.apply(
                        color: ColorStyle.secondryBlack,
                        fontWeightDelta: 1,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    DropdownButtonCustom(
                      colorBorder: ColorStyle.secondryBlack,
                      iconWidget: Icon(Icons.keyboard_arrow_down, color: ColorStyle.secondryBlack,),
                      radiusBorder: 30,
                      padding: EdgeInsets.only(
                          left: 16, right: 16
                      ),
                      onChanged: (text) {},
                      listValue: ['Current/Savings Account', 'Savings Account', 'Current Account'],
                      selectedValue: "Current/Savings Account",
                    ),

                    // textFieldsAccount('Accounts Type', true),

                    textFieldsAccount('First Name', true),
                    textFieldsAccount('Middle Name', false, 'If Applicable'),
                    textFieldsAccount('Last Names', true),
                    textFieldsAccount('Passport Number', true),
                    SizedBox(
                      height: 16,
                    ),
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
                            'Please make sure you enter your Account number, Virtual/Physical Card Number or both in order to receive the authentication code via SMS to your registered mobile.',
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
                    textFieldsAccount('Accounts Number', true),
                    textFieldsAccount('Virtual/Physical Card Number', true),
                    SizedBox(
                      height: 36,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: ElevatedButtonCustom(
                              colorBG: ColorStyle.primaryWhite,
                              textStyle: TextStylesPoppins.textStyles_16
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
                              textStyle: TextStylesPoppins.textStyles_16.apply(
                                  color: ColorStyle.primaryWhite, fontWeightDelta: 1),
                              text: 'Continue',
                              radiusBorder: 30,
                              onTap: () {
                                controller.arrSelectOptionIcons[1] = true;

                                for (int i = 0;
                                i < controller.arrSelectOption.length;
                                i++) {
                                  if (i == 1) {
                                    controller.arrSelectOption[1] = true;
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
        ));
      },
    );


  }
}
