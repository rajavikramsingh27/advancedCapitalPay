import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:advanced_capital_pay/Views/ForgotPassword/ForgotYourUserIdentification/ForgotYourUserIdentification.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:auto_size_text/auto_size_text.dart';

import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Components/AppBarStyle.dart';
import 'package:advanced_capital_pay/Components/BackgroundImage.dart';
import 'package:advanced_capital_pay/Components/ButtonCustom.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'ForgotYourPasswordRecovery/AccountDetailsRecovery.dart';
import 'package:advanced_capital_pay/Controllers/AccountDetailsRecoveryController.dart';
import 'package:get/get.dart';
import 'package:advanced_capital_pay/Components/ButtonChat.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({Key? key}) : super(key: key);

  final controller = Get.put(AccountDetailsRecoveryController());

  @override
  Widget build(BuildContext context) {
    boxWhite(String image, String title, Function() onPressed) {
      return ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            padding: EdgeInsets.all(0),
          ),
          child: Container(
            height: 52,
            decoration: BoxDecoration(
              color: ColorStyle.primaryWhite,
              borderRadius: EffectStyle.radiusCustom(6),
            ),
            padding: EffectStyle.padding(6, 6, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Image.asset(
                        image,
                        width: 30,
                      ),
                      SizedBox(width: 6),
                      Text(
                        title,
                        style: TextStylesPoppins.textStyles_14.apply(
                          color: ColorStyle.secondryBlack,
                          fontWeightDelta: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.navigate_next,
                  size: 30,
                  color: ColorStyle.grey,
                )
              ],
            ),
          ),
          onPressed: onPressed);
    }

    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBarStyle(
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
          body: SingleChildScrollView(
            padding: EdgeInsets.only(
              // left: 30,
              // right: 30,
              top: 30,
              bottom: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: ColorStyle.darkestBlue,
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.centerLeft,
                  padding: EffectStyle.padding(30, 0, 0, 0),
                  child: Text(
                    'Account Recovery Details',
                    style: TextStylesPoppins.textStyles_20.apply(
                      color: ColorStyle.primaryWhite,
                      fontWeightDelta: 1,
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  padding: EffectStyle.padding(30, 30, 0, 0),
                  child: Column(
                    children: [
                      AutoSizeText(
                        'Select from one of the options below to recovery',
                        maxLines: 2,
                        style: TextStylesPoppins.autoSizeText.apply(
                          color: ColorStyle.primaryWhite,
                        ),
                      ),
                      SizedBox(height: 16),
                      boxWhite(ImageStyle.forgot_identification,
                          'Forgot Your User Identification', () {
                            controller.isUserIdentification.value = false;
                            Get.to(ForgotYourUserIdentification());
                          }),
                      SizedBox(height: 16),
                      boxWhite(ImageStyle.forgot_password,
                          'Forgot Your Password', () {
                            controller.isUserIdentification.value = true;
                            Get.to(AccountDetailsRecovery());
                          }),
                      SizedBox(height: 100),
                      AutoSizeText(
                        'If you have already completed your registration. Please click on Login Now below.',
                        maxLines: 2,
                        style: TextStylesPoppins.autoSizeText.apply(
                          color: ColorStyle.primaryWhite,
                        ),
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: GradientButton(
                          text: 'Login Now',
                          onTap: () {
                            Get.back();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
