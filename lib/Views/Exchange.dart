import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Components/AppBarStyle.dart';
import '../Components/BackgroundImage.dart';
import '../Components/ButtonCustom.dart';
import '../Components/CountryPicker.dart';
import '../Components/DropdownButtonCustom.dart';
import '../Components/NewTransfers.dart';
import '../Components/PayingFromAccount.dart';
import '../Components/TextFieldCustom.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/EffectStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';
import '../Views/CurrencyExchange.dart';

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
                style: TextStyles.textStyles_16.apply(
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
              trailingButton: IconButton(
                icon: Image.asset(
                  ImageStyle.chat,
                  height: 30,
                ),
                onPressed: () {},
              ),
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
                    style: TextStyles.textStyles_12.apply(
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
                    style: TextStyles.textStyles_12.apply(
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
                    textStyleFirst: TextStyles.textStyles_14.apply(
                      fontWeightDelta: 1,
                      color: ColorStyle.hex('#016ECF'),
                    ),
                    onTapFirst: () {

                    },
                    textSecond:'Exchange Now',
                    colorBGSecond: ColorStyle.hex('#016ECF'),
                    colorBorderSecond: Colors.transparent,
                    textStyleSecond: TextStyles.textStyles_14.apply(
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
