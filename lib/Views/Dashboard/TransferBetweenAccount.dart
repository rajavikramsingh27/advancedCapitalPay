import 'package:advanced_capital_pay/Components/AppBarStyle.dart';
import 'package:advanced_capital_pay/Components/ButtonChat.dart';
import 'package:advanced_capital_pay/Components/ComponentsTitleInputs.dart';
import 'package:advanced_capital_pay/Components/FourOptionSeries.dart';
import 'package:advanced_capital_pay/Components/RadioButtonCustom.dart';
import 'package:advanced_capital_pay/Controllers/TransferBetweenAccountController.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
// import 'package:advanced_capital_pay/Views/StandingOrderDetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notification_center/notification_center.dart';

import 'package:advanced_capital_pay/Components/ButtonCustom.dart';

import 'package:get/utils.dart';

import 'AccountSelection.dart';

import 'StandingOrderDetails.dart';
class TransferBetweenAccount extends StatelessWidget {
  TransferBetweenAccount({Key? key}) : super(key: key);

  final controller = Get.put(TransferBetweenAccountController());

  final marginWhiteBox = EffectStyle.padding(16, 16, 0, 0);
  final paddingWhiteBox = EffectStyle.padding(16, 16, 0, 0);
  final decorationWhiteBox = BoxDecoration(
      color: ColorStyle.primaryWhite,
      borderRadius: EffectStyle.radiusCustom(6));

  transferDetailsFirst() {
    return Container(
      margin: marginWhiteBox,
      padding: paddingWhiteBox,
      decoration: decorationWhiteBox,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ComponentsTitleInputs.titleDropDown('Account', true, 'USD | 600.00', [
            'USD | 800.00',
            'USD | 600.00',
            'USD | 700.00',
          ]),
          SizedBox(height: 6),
          Text(
            'Standing Order',
            style: TextStylesPoppins.textStyles_14
                .apply(color: ColorStyle.secondryBlack, fontWeightDelta: 2),
          ),
          RadioButtonCustom(
            firstText: 'No',
            secondText: 'Yes',
            colorInActive: ColorStyle.grey,
            colorActive: ColorStyle.darkestBlueSignUp,
            sizeIcon: 28,
            textStyleFirst: TextStylesPoppins.textStyles_12
                .apply(color: ColorStyle.secondryBlack, fontWeightDelta: 2),
            textStyleSecond: TextStylesPoppins.textStyles_12
                .apply(color: ColorStyle.secondryBlack, fontWeightDelta: 2),
          ),
          TitleDatePicker(
            title: 'Transfer Date and Frequecny',
            isRequired: true,
          ),
          SizedBox(height: 6),
          Text(
            'This transfer can be today or scheduled at a later date.',
            style: TextStylesPoppins.textStyles_10
                .apply(color: ColorStyle.secondryBlack, fontWeightDelta: 0),
          ),
          ComponentsTitleInputs.titleDropDown(
              'Transfer Date', true, 'Friday, Feburary 25th, 2021', [
            'Friday, Feburary 25th, 2021',
            'Friday, Feburary 30th, 2021',
            'Friday, Feburary 31st, 2021',
          ]),
          SizedBox(height: 16),
          Container(
            child: ButtonContinueCancel(
              radiusBorder: 40,
              height: 44,
              textFirst: 'Cancel',
              colorBGFirst: Colors.transparent,
              colorBorderFirst: ColorStyle.hex('#016ECF'),
              textStyleFirst: TextStylesPoppins.textStyles_14.apply(
                fontWeightDelta: 1,
                color: ColorStyle.hex('#016ECF'),
              ),
              onTapFirst: () {},
              textSecond: 'Continue',
              colorBGSecond: ColorStyle.hex('#016ECF'),
              colorBorderSecond: Colors.transparent,
              textStyleSecond: TextStylesPoppins.textStyles_14
                  .apply(fontWeightDelta: 1, color: ColorStyle.primaryWhite),
              onTapSecond: () {
                controller.index.value = controller.index.value + 1;

                NotificationCenter().notify('updateAccount',
                    data: controller.index.value);
              },
            ),
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TransferBetweenAccountController>(
        init: TransferBetweenAccountController(),
        initState: (state) {
          controller.reset();
        },
        builder: (authController) {
          return Obx(() => Scaffold(
              backgroundColor: ColorStyle.darkestBlue,
              appBar: AppBarStyleTitle(
                title: 'Account Transfer Summary',
                leadingButton: IconButton(
                  icon: Image.asset(
                    ImageStyle.back_circle,
                    height: 30,
                  ),
                  onPressed: () {
                    Get.back();
                  },
                ),
                trailingButton: [ButtonChat(),],
              ),
              body: SingleChildScrollView(
                  padding: EffectStyle.padding(0, 0, 0, 20),
                  child: Column(
                    children: [
                      FourOptionSeries(
                        arrIconsActivate: [
                          ImageStyle.browserBlue,
                          ImageStyle.transferBank_Blue,
                          ImageStyle.login_blue
                        ],
                        arrIconsInActivate: [
                          ImageStyle.browserBlue,
                          ImageStyle.transferBank,
                          ImageStyle.login
                        ],
                        arrTitles: [
                          'From Account',
                          'Transfer Details',
                          'Summary'
                        ],
                      ),
                      if (controller.index.value == 0)
                        AccountSelection(
                          onTapContinue: () {
                            controller.index.value = controller.index.value + 1;

                            NotificationCenter().notify('updateAccount',
                                data: controller.index.value);
                          },
                        ),
                      if (controller.index.value != 0)
                        Container(
                          padding: EffectStyle.padding(16, 0, 16, 16),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'TransferDetails',
                            // textAlign: TextAlign.left,
                            style: TextStylesPoppins.textStyles_16.apply(
                              fontWeightDelta: 2,
                              color: ColorStyle.primaryWhite,
                            ),
                          ),
                        ),
                      if (controller.index.value == 1)
                        transferDetailsFirst(),
                      if (controller.index.value == 2)
                        StandingOrderDetails(
                          textSecond: 'Complete Transfer',
                          onTapEditOrder: () {

                          },
                        )
                    ],
                  ))));
        });
  }
}
