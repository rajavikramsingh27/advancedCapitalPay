import 'package:advanced_capital_pay/Views/Auth/EffectStyleSignUp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:advanced_capital_pay/Components/ButtonChat.dart';
import 'package:advanced_capital_pay/Components/AppBarStyle.dart';
import 'package:advanced_capital_pay/Components/BackgroundImage.dart';
import 'package:advanced_capital_pay/Components/ButtonCustom.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';

class MyMessages extends StatelessWidget {
  const MyMessages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImageBeneficiary(),
        Scaffold(
            appBar: AppBarStyleCustomBenifi(
              title: Text(
                'My Messages',
                style: TextStylesPoppins.textStyles_16
                    .apply(color: ColorStyle.primaryWhite, fontWeightDelta: 2),
              ),
              leadingButton: IconButton(
                icon: Image.asset(
                  ImageStyle.back_circle,
                  height: 30,
                ),
                onPressed: () {
                  Get.back();
                },
              ),
              trailingButton: ButtonChat(),
            ),
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 16, left: 16),
                    decoration: BoxDecoration(
                      color: ColorStyle.primaryWhite,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              ImageStyle.Group1925,
                              height: 44,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Re: Can't Access My Account",
                                  style: TextStylesPoppins.textStyles_14.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 2),
                                ),
                                Text(
                                  "Important changes in our fees and limits effective 1st June 2022",
                                  style: TextStylesPoppins.textStyles_10.apply(
                                    color: ColorStyle.blueSKY,
                                  ),
                                ),
                              ],
                            ))
                          ],
                        ),
                        SizedBox(
                          height: 26,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              ImageStyle.Ellipse2,
                              height: 50,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Original Message:",
                                  style: TextStylesPoppins.textStyles_14.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 2),
                                ),
                                Text(
                                  "Hello, could you please assist me in",
                                  style: TextStylesPoppins.textStyles_12.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 1),
                                ),
                                Text(
                                  "getting me back access to my account",
                                  style: TextStylesPoppins.textStyles_12.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 1),
                                ),
                              ],
                            )),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Column(
                              children: [
                                Text(
                                  "AdvanceCapitalPay Response:",
                                  // textAlign: TextAlign.end,
                                  style: TextStylesPoppins.textStyles_14.apply(
                                    color: ColorStyle.secondryBlack,
                                    fontWeightDelta: 1,
                                  ),
                                ),
                                Text(
                                  "Hi Harrison, please confirm your ID card number before we procced.",
                                  textAlign: TextAlign.end,
                                  style: TextStylesPoppins.textStyles_12.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 1),
                                ),
                              ],
                                  crossAxisAlignment: CrossAxisAlignment.end,
                            )),
                            SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              ImageStyle.Group2220,
                              height: 44,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Response',
                          style: TextStylesPoppins.textStyles_16.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 2),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              top: 140, left: 10, right: 10, bottom: 10),
                          alignment: Alignment.center,
                          // height: 164,
                          child: Container(
                            height: 44,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  child: Icon(
                                    Icons.add,
                                    size: 14,
                                    color: ColorStyle.darkestBlueSignUp,
                                  ),
                                  height: 22,
                                  width: 22,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                      width: 1.8,
                                      color: ColorStyle.darkestBlueSignUp,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Add Files or Drop Files Here',
                                  style: TextStylesPoppins.textStyles_12.apply(
                                    color: ColorStyle.darkestBlueSignUp,
                                  ),
                                ),
                              ],
                            ),
                            decoration: EffectStyleSignUp.decoration(
                                ColorStyle.primaryWhite, 25),
                          ),
                          decoration: EffectStyleSignUp.decoration1(
                              ColorStyle.primaryWhite, 25),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        ButtonContinueCancel(
                          radiusBorder: 40,
                          height: 44,
                          textFirst: 'Cancel',
                          colorBGFirst: Colors.transparent,
                          colorBorderFirst: ColorStyle.hex('#016ECF'),
                          textStyleFirst: TextStylesPoppins.textStyles_12.apply(
                            fontWeightDelta: 1,
                            color: ColorStyle.hex('#016ECF'),
                          ),
                          onTapFirst: () {},
                          textSecond: 'Submit Message',
                          colorBGSecond: ColorStyle.hex('#016ECF'),
                          colorBorderSecond: Colors.transparent,
                          textStyleSecond: TextStylesPoppins.textStyles_12
                              .apply(
                                  fontWeightDelta: 1,
                                  color: ColorStyle.primaryWhite),
                          onTapSecond: () {},
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ))
      ],
    );
  }
}
