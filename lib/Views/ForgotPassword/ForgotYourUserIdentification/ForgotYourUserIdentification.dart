
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:advanced_capital_pay/Views/ForgotPassword/AccountDetails.dart';
import 'package:advanced_capital_pay/Views/ForgotPassword/ForgotYourUserIdentification/UserIdentificationUpdated.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:advanced_capital_pay/Components/AppBarStyle.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:advanced_capital_pay/Controllers/AccountDetailsRecoveryController.dart';
import 'package:advanced_capital_pay/Components/ButtonChat.dart';

import '../UserIdentification.dart';

class ForgotYourUserIdentification extends StatelessWidget {
  ForgotYourUserIdentification({Key? key}) : super(key: key);

  final controller = Get.put(AccountDetailsRecoveryController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: AccountDetailsRecoveryController(),
        initState: (state) {
          controller.reset();
        },
        builder: (auth) {
      return Obx(()=>Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                // Expanded(child: Image.asset(ImageStyle.bg_recoveryPassword,fit: BoxFit.fill,)),
                Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: ColorStyle.darkestBlue,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.4),
                                BlendMode.dstATop,
                              ),
                              image: AssetImage(ImageStyle.bg_recoveryPassword))),
                    )),
                Expanded(
                    child: Container(
                      color: ColorStyle.darkestBlue,
                    )),
              ],
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBarStyleTitle(
              title: 'Account Details Recover',
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
            body: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: ColorStyle.hex("#082561"),
                  padding: EffectStyle.padding(26, 26, 10, 10),
                  // alignment: Alignment.center,
                  child: Stack(
                    children: [
                      Expanded(
                          child: Container(
                            height: 50,
                            alignment: Alignment.center,
                            child: DottedLine(
                              direction: Axis.horizontal,
                              lineLength: double.infinity,
                              lineThickness: 2.0,
                              dashLength: 6.0,
                              dashColor: Colors.white,
                              // dashGradient: [Colors.red, Colors.blue],
                              dashRadius: 10.0,
                              dashGapLength: 5.0,
                              dashGapColor: Colors.transparent,
                              // dashGapGradient: [Colors.red, Colors.blue],
                              dashGapRadius: 0.0,
                            ),
                          )
                        // DashedLine()
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              child: Column(
                                children: [
                                  Image.asset(
                                    (controller.arrSelectOptionIcons[0])
                                        ? ImageStyle.browserBlue
                                        : ImageStyle.browserBlue,
                                    height: 50,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Enter Details',
                                    style: TextStylesPoppins.textStyles_10.apply(
                                      color: ColorStyle.primaryWhite,
                                      fontWeightDelta: 1,
                                    ),
                                  ),
                                ],
                              )),
                          Container(
                              child: Column(
                                children: [
                                  Image.asset(
                                    (controller.arrSelectOptionIcons[1])
                                        ? ImageStyle.user_1_blue
                                        : ImageStyle.user_1,
                                    height: 50,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Authentication',
                                    style: TextStylesPoppins.textStyles_10.apply(
                                      color: ColorStyle.primaryWhite,
                                      fontWeightDelta: 1,
                                    ),
                                  ),
                                ],
                              )),

                          Container(
                              child: Column(
                                children: [
                                  Image.asset(
                                    (controller.arrSelectOptionIcons[2])
                                        ? ImageStyle.login_blue
                                        : ImageStyle.login,
                                    height: 50,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    child: Text(
                                      'Login',
                                      style: TextStylesPoppins.textStyles_10.apply(
                                        color: ColorStyle.primaryWhite,
                                        fontWeightDelta: 1,
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
                if(controller.arrSelectOption[0])
                  Expanded(
                    child: SingleChildScrollView(
                      padding: EffectStyle.padding(0, 0, 0, 16),
                      child: AccountDetails(),
                    ),
                  ),
                if(controller.arrSelectOption[1])
                  Expanded(
                    child: SingleChildScrollView(
                      padding: EffectStyle.padding(0, 0, 0, 16),
                      child: UserIdentification(),
                    ),
                  ),
                // if(controller.arrSelectOption[2])
                //   Expanded(child: SingleChildScrollView(
                //     padding: EffectStyle.padding(0, 0, 0, 16),
                //     child: SetPassword(),
                //   )),
                if(controller.arrSelectOption[2])
                  Expanded(child: UserIdentificationUpdated()),
              ],
            ),
          ),
        ],
      ));
    });
  }
}
