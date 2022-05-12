import 'package:advanced_capital_pay/Components/AppBarStyle.dart';
import 'package:advanced_capital_pay/Components/BackgroundImage.dart';
import 'package:advanced_capital_pay/Components/ButtonChat.dart';
import 'package:advanced_capital_pay/Components/ButtonCustom.dart';
import 'package:advanced_capital_pay/Components/NewTransfers.dart';
import 'package:advanced_capital_pay/Components/PayingFromAccount.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'CurrencyExchange.dart';
class Exchange extends StatelessWidget {
  const Exchange({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImageBeneficiary(),
        Scaffold(
            appBar: AppBarStyleCustomBenifi(
              title: Text(
                'Currency Exchange',
                style: TextStylesPoppins.textStyles_16.apply(
                    color: ColorStyle.primaryWhite, fontWeightDelta: 1),
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
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Please confirm the exchange details below before confirming',
                    style: TextStylesPoppins.textStyles_12.apply(
                        color: ColorStyle.primaryWhite, fontWeightDelta: 0),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  PayingFromAccount(),

                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Exchange Currency and Amount',
                    style: TextStylesPoppins.textStyles_12.apply(
                        color: ColorStyle.primaryWhite, fontWeightDelta: 2),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  NewTransferCustom(),
                  SizedBox(
                    height: 40,
                  ),
                  ButtonContinueCancel(
                    radiusBorder: 40,

                    textFirst:'Cancel',
                    colorBGFirst:Colors.transparent,
                    colorBorderFirst:ColorStyle.hex('#016ECF'),
                    textStyleFirst: TextStylesPoppins.textStyles_14.apply(
                      fontWeightDelta: 1,
                      color: ColorStyle.hex('#016ECF'),
                    ),
                    onTapFirst: () {

                    },
                    textSecond:'Exchange Now',
                    colorBGSecond: ColorStyle.hex('#016ECF'),
                    colorBorderSecond: Colors.transparent,
                    textStyleSecond: TextStylesPoppins.textStyles_14.apply(
                        fontWeightDelta: 1,
                        color: ColorStyle.primaryWhite
                    ),
                    onTapSecond: () {
                      Get.to(CurrencyExchange());
                    },
                  ),
                ],
              ),
            ))
      ],
    );
  }
}
