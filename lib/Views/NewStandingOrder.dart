import 'package:advanced_capital_pay/Components/ButtonCustom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Components/ComponentsTitleTFRounded.dart';
import '../Components/InfoIconDescription.dart';
import '../Components/RadioButtonCustom.dart';
import '../Controllers/StandingOrdersController.dart';
import 'package:get/utils.dart';
import '../Components/AppBarStyle.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/EffectStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';

import '../Components/ButtonCustom.dart';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../Components/AppBarStyle.dart';
import '../../Styles/ColorStyle.dart';
import '../../Styles/EffectStyle.dart';
import '../../Styles/ImageStyle.dart';
import '../../Styles/TextStyles.dart';
import '../Views/Settings/BalanceSheetCellComponenets.dart';
import '../Views/OTPVerification.dart';
import '../Views/StandingOrderDetails.dart';


class NewStandingOrder extends StatelessWidget {
  NewStandingOrder({Key? key}) : super(key: key);

  final controller = Get.put(StandingOrdersController());

  standingOrders() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EffectStyle.padding(16, 16, 0, 0),
          child: Text(
            'Standing Orders',
            style: TextStyles.textStyles_18
                .apply(color: ColorStyle.primaryWhite, fontWeightDelta: 1),
          ),
        ),
        ListView.separated(
          itemCount: 4,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          padding: EffectStyle.padding(16, 16, 16, 16),
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 10,
            );
          },
          itemBuilder: (context, index) {
            return BalanceSheetCellComponenets(
              titleOne: 'Savings Account',
              valueOne: 'Monthly Bill',
              titleTwo: 'Amount',
              valueTwo: '\$140.00',
            );
          },
        ),
      ],
    );
  }

  final marginWhiteBox = EffectStyle.padding(16, 16, 0, 0);
  final paddingWhiteBox = EffectStyle.padding(16, 16, 0, 0);
  final decorationWhiteBox = BoxDecoration(
      color: ColorStyle.primaryWhite,
      borderRadius: EffectStyle.radiusCustom(6));

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          ImageStyle.tiard,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.cover,
        ),
        Scaffold(
          appBar: AppBarStyle(
            leadingButton: IconButton(
              icon: Image.asset(ImageStyle.back_circle),
              onPressed: () {
                Get.back();
              },
            ),
          ),
          backgroundColor: Colors.transparent,
          body: GetBuilder(
            init: StandingOrdersController(),
            initState: (state) {
              controller.reset();
            },
            builder: (authController) {
              return Obx(()=> SingleChildScrollView(
                child: Column(
                  children: [
                    AppBarStyleLeadingTitleTrailing(
                      leadingImage: ImageStyle.ellipse2,
                      nameUser: 'HARRISON SMITH',
                      descriptionUser: 'Your Personal Settings',
                      nameStyle: TextStyles.textStyles_18.apply(
                          color: ColorStyle.primaryWhite,
                          fontWeightDelta: 1),
                      descriptionStyle: TextStyles.textStyles_12
                          .apply(color: ColorStyle.primaryWhite),
                      trailingAction: [
                        IconButton(
                          icon: Image.asset(
                            ImageStyle.chat,
                            height: 26,
                          ),
                          onPressed: () {
                            // Get.to(MessagePage());
                          },
                        ),
                        IconButton(
                          icon: Image.asset(
                            ImageStyle.user_logout,
                            height: 26,
                          ),
                          onPressed: () {},
                        ),
                        SizedBox(
                          width: 6,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        left: 16,
                      ),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Savings',
                        style: TextStyles.textStyles_14.apply(
                            color: ColorStyle.primaryWhite,
                            fontWeightDelta: 2),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        left: 16,
                      ),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Standing Orders',
                        style: TextStyles.textStyles_14.apply(
                            color: ColorStyle.primaryWhite,
                            fontWeightDelta: 2),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),

                    if (!controller.isEditOrder.value)
                      Container(
                        margin: marginWhiteBox,
                        padding: paddingWhiteBox,
                        decoration: decorationWhiteBox,
                        child: Column(
                          children: [
                            ComponentsTitleInputs.separtorSpace(),
                            ComponentsTitleInputs.titleDesc(
                              'From',
                              'Current Account **00624',
                              ColorStyle.grey,
                              ColorStyle.secondryBlack,
                            ),
                            ComponentsTitleInputs.separtorSpace(),
                            ComponentsTitleInputs.separatorLine(),
                            ComponentsTitleInputs.separtorSpace(),
                            ComponentsTitleInputs.titleDesc(
                              'To',
                              'Saving Account **00624',
                              ColorStyle.grey,
                              ColorStyle.secondryBlack,
                            ),
                            ComponentsTitleInputs.separtorSpace(),
                            ComponentsTitleInputs.separatorLine(),
                            ComponentsTitleInputs.separtorSpace(),
                            ComponentsTitleInputs.titleDesc(
                              'Accounts',
                              '\$800.00',
                              ColorStyle.grey,
                              ColorStyle.secondryBlack,
                            ),
                            ComponentsTitleInputs.separtorSpace(),
                            ComponentsTitleInputs.separatorLine(),
                            ComponentsTitleInputs.separtorSpace(),
                            ComponentsTitleInputs.titleDesc(
                              'Started On',
                              'Friday, Feburary, 25th, 2025',
                              ColorStyle.grey,
                              ColorStyle.secondryBlack,
                            ),
                            ComponentsTitleInputs.separtorSpace(),
                            ComponentsTitleInputs.separatorLine(),
                            ComponentsTitleInputs.separtorSpace(),
                            ComponentsTitleInputs.titleDesc(
                              'Repeat',
                              'Monthly',
                              ColorStyle.grey,
                              ColorStyle.secondryBlack,
                            ),
                            ComponentsTitleInputs.separtorSpace(),
                            ComponentsTitleInputs.separatorLine(),
                            ComponentsTitleInputs.separtorSpace(),
                            ComponentsTitleInputs.titleDesc(
                              'Continue Untill',
                              'Further Notice Has Been Provided',
                              ColorStyle.grey,
                              ColorStyle.secondryBlack,
                            ),
                            ComponentsTitleInputs.separtorSpace(),
                            ComponentsTitleInputs.separtorSpace(),
                            ButtonContinueCancel(
                              radiusBorder: 40,
                              height: 40,
                              textFirst: 'Cancel',
                              colorBGFirst: Colors.transparent,
                              colorBorderFirst: Colors.red,
                              textStyleFirst:
                              TextStyles.textStyles_12.apply(
                                fontWeightDelta: 1,
                                color: Colors.red,
                              ),
                              onTapFirst: () {},
                              textSecond: 'Edit Standing Order',
                              colorBGSecond: ColorStyle.hex('#016ECF'),
                              colorBorderSecond: Colors.transparent,
                              textStyleSecond: TextStyles.textStyles_10
                                  .apply(
                                  fontWeightDelta: 1,
                                  color: ColorStyle.primaryWhite),
                              onTapSecond: () {
                                controller.isEditOrder.value = true;
                              },
                            ),
                            ComponentsTitleInputs.separtorSpace(),
                          ],
                        ),
                      ),
                    if (controller.isEditOrder.value)
                      StandingOrderDetails(
                        onTapEditOrder: () {
                          controller.isEditOrder.value = false;
                        },
                      ),
                        if (controller.isEditOrder.value)
                    SizedBox(
                      height: 16,
                    ),
                    if (controller.isEditOrder.value)
                    Container(
                      padding: EffectStyle.padding(16, 16, 16, 20),
                      margin: EffectStyle.padding(16, 16, 0, 0),
                      decoration: BoxDecoration(
                          color: ColorStyle.primaryWhite,
                          borderRadius: EffectStyle.radiusCustom(10)
                      ),
                      child: Column(
                        children: [
                          OTPVerification(),
                          InfoIconDescription(
                            padding: EffectStyle.padding(0, 0, 16, 0),
                            description: 'By continuing with the transfer you acknowledge and confirm the applicable terms and conditions including waiting time for newly added beneficiary which may apply.',
                            descriptionStyle: TextStyles.textStyles_12
                                .apply(fontWeightDelta: 1, color: ColorStyle.secondryBlack),
                          ),
                          InfoIconDescription(
                            padding: EffectStyle.padding(0, 0, 16, 0),
                            description: 'Please note that international transfer will be processed on international business days (Monday-Friday)',
                            descriptionStyle: TextStyles.textStyles_12
                                .apply(fontWeightDelta: 1, color: ColorStyle.secondryBlack),
                          ),
                          InfoIconDescription(
                            padding: EffectStyle.padding(0, 0, 16, 0),
                            description: 'Transfers which fall on a holiday, may be processed on the next working business day.',
                            descriptionStyle: TextStyles.textStyles_12
                                .apply(fontWeightDelta: 1, color: ColorStyle.secondryBlack),
                          ),
                          SizedBox(height: 20),
                          ButtonContinueCancel(
                            radiusBorder: 40,
                            textFirst: 'Cancel',
                            colorBGFirst: Colors.transparent,
                            colorBorderFirst: ColorStyle.hex('#016ECF'),
                            textStyleFirst: TextStyles.textStyles_14.apply(
                              fontWeightDelta: 1,
                              color: ColorStyle.hex('#016ECF'),
                            ),
                            onTapFirst: () {},
                            textSecond: 'Gernerate OTP',
                            colorBGSecond: ColorStyle.hex('#016ECF'),
                            colorBorderSecond: Colors.transparent,
                            textStyleSecond: TextStyles.textStyles_14
                                .apply(fontWeightDelta: 1, color: ColorStyle.primaryWhite),
                            onTapSecond: () {

                            },
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              ));
            },
          ),
        ),
      ],
    );
  }
}
