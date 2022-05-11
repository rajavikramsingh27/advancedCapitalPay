import 'package:advanced_capital_pay/Views/SignUp/EffectStyleSignUp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Components/AppBarStyle.dart';
import '../../Components/BackgroundImage.dart';
import '../../Components/ButtonCustom.dart';
import '../../Styles/ColorStyle.dart';
import '../../Styles/ImageStyle.dart';
import '../../Styles/TextStyles.dart';
import '../../../../Components/ButtonChat.dart';
class ApplePay extends StatelessWidget {
  const ApplePay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImageBeneficiary(),
        Scaffold(
            appBar: AppBarStyleCustomBenifi(
              title: Text(
                'Apply Pay',
                style: TextStylesPoppins.textStyles_18
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
            body: Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: ColorStyle.primaryWhite,
              ),
              child: Container(
                padding: EdgeInsets.only(right: 16, left: 16, bottom: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              ImageStyle.applelogo,
                              height: 36,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              "Pay",
                              style: TextStylesPoppins.textStyles_24.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 2),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Image.asset(ImageStyle.card2),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Card added to Apple Wallet",
                          style: TextStylesPoppins.textStyles_14.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 2),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "You can use this card with Apple Pay to pay online. In-app and in-store whenever you see the signs.",
                          style: TextStylesPoppins.textStyles_12.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 1),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              ImageStyle.wifit_tawer,
                              height: 50,
                            ),
                            Container(
                              height: 40,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    width: 1,
                                    color: ColorStyle.secondryBlack,
                                  )),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    ImageStyle.applelogo,
                                    height: 20,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    "Pay",
                                    style: TextStylesPoppins.textStyles_16.apply(
                                        color: ColorStyle.secondryBlack,
                                        fontWeightDelta: 2),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 50,
                        ),
                      ],
                    ),



                    // ButtonContinueCancel(
                    //   radiusBorder: 40,
                    //   height: 44,
                    //   textFirst:'Cancel',
                    //   colorBGFirst:Colors.transparent,
                    //   colorBorderFirst:ColorStyle.hex('#016ECF'),
                    //   textStyleFirst: TextStyles.textStyles_14.apply(
                    //     fontWeightDelta: 1,
                    //     color: ColorStyle.hex('#016ECF'),
                    //   ),
                    //   onTapFirst: () {
                    //
                    //   },
                    //   textSecond:'Exchange Now',
                    //   colorBGSecond: ColorStyle.hex('#016ECF'),
                    //   colorBorderSecond: Colors.transparent,
                    //   textStyleSecond: TextStyles.textStyles_14.apply(
                    //       fontWeightDelta: 1,
                    //       color: ColorStyle.primaryWhite
                    //   ),
                    //   onTapSecond: () {
                    //     // Get.to(CurrencyExchange());
                    //   },
                    // ),
                  ],
                ),
              ),
            )
        )
      ],
    );
  }
}
