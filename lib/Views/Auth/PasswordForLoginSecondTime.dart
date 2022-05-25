import 'package:advanced_capital_pay/Components/AppBarStyle.dart';
import 'package:advanced_capital_pay/Components/BackgroundImage.dart';
import 'package:advanced_capital_pay/Components/ButtonCustom.dart';
import 'package:advanced_capital_pay/Components/TextFieldCustom.dart';
import 'package:advanced_capital_pay/Controllers/SignUp/PasswordForLoginSecondTimeController.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:advanced_capital_pay/Views/ForgotPassword/ForgotPassword.dart';

import '../../Views/Auth/SignIn.dart';
import 'package:advanced_capital_pay/Views/TabbarScreen.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class PasswordForLoginSecondTime extends StatelessWidget {
  PasswordForLoginSecondTime({Key? key}) : super(key: key);

  final controller = Get.put(PasswordForLoginSecondTimeController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: PasswordForLoginSecondTimeController(),
      initState: (state) {

      },
      builder: (auth) {
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
                trailingButton: IconButton(
                  icon: Image.asset(
                    ImageStyle.chat,
                    height: 30,
                  ),
                  onPressed: () {},
                ),
              ),
              body: SingleChildScrollView(
                padding: EdgeInsets.only(
                  left: 26,
                  right: 30,
                  top: 40,
                  bottom: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome Back, ',
                      style: TextStylesSFCompactDisplay.textStyles_24.apply(
                        color: ColorStyle.primaryWhite,
                        fontWeightDelta: 2,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      'HARRISON SMITH,',
                      style: TextStylesSFCompactDisplay.textStyles_24.apply(
                          color: ColorStyle.primaryWhite, fontWeightDelta: 2),
                    ),
                    SizedBox(height: 0),
                    Text(
                      controller.isBioMatric.value
                          ? 'Use Thumb ID to login to your account.'
                          : 'Enter your password below to login to your account',
                      style: TextStylesSFCompactDisplay.textStyles_20.apply(
                          color: ColorStyle.whiteDuskyCrypto.withOpacity(0.6),
                          fontWeightDelta: 0),
                    ),

                    if (controller.isBioMatric.value )
                      SizedBox(height: 40),
                    if (controller.isBioMatric.value )
                      Container(
                        alignment: Alignment.center,
                        child: Container(
                          child: Image.asset(
                            ImageStyle.lock,
                            height: 170,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            // color: ColorStyle.hex('#FFFFFF').withOpacity(0.4),
                            color: ColorStyle.hex('#FFFFFF').withOpacity(0.4),
                            border: Border.all(
                              width: 0.2,
                              color: ColorStyle.blueSKY,
                            ),
                            boxShadow: [],
                          ),
                        ),
                      ),
                    SizedBox(height: 40),
                    if (controller.isBioMatric.value)
                      InkWell(
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            'Enter your password instead',
                            style: TextStylesSFCompactDisplay.textStyles_16.apply(
                                color: ColorStyle.primaryWhite, fontWeightDelta: 0),
                          ),
                        ),
                        onTap: () {
                          controller.isBioMatric.value = false;
                        },
                      ),
                    SizedBox(height: 16),
                    TextFieldPasswordCustom(
                      prefix: Container(
                          padding: EdgeInsets.only(
                            top: 6,
                            bottom: 6,
                          ),
                          height: 30,
                          child: Image.asset(ImageStyle.lock2)),
                      hintTextStyle: TextStylesSFCompactDisplay.textStyles_16.apply(
                        color: ColorStyle.grey,
                      ),
                      textStyle: TextStylesSFCompactDisplay.textStyles_16.apply(
                        color: ColorStyle.primaryWhite,
                      ),
                      colorFill: ColorStyle.hex("#236CA2").withOpacity(0.5),
                      colorSuffix: ColorStyle.primaryWhite,
                    ),
                    SizedBox(height: 16),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: InkWell(
                              child: Row(
                                children: [
                                  Image.asset(
                                    ImageStyle.Group1947,
                                    height: 22,
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: Text(
                                      'Sign In As A Different User',
                                      style: TextStylesSFCompactDisplay.textStyles_13
                                          .apply(
                                        color: ColorStyle.primaryWhite,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              onTap: () {
                                Get.offAll(SignIn());
                              },
                            )),
                        Expanded(
                            child: InkWell(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Image.asset(
                                    ImageStyle.questionMark,
                                    height: 22,
                                  ),
                                  SizedBox(width: 6),
                                  Text(
                                    'Forgot Password',
                                    style:
                                    TextStylesSFCompactDisplay.textStyles_13.apply(
                                      color: ColorStyle.primaryWhite,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ],
                              ),
                              onTap: () {
                                Get.to(ForgotPassword());
                              },
                            )),
                      ],
                    ),
                    SizedBox(height: 40),
                    Center(
                      child: GradientButton(
                        text: 'Sign in',
                        onTap: () {
                          Get.offAll(TabbarScreen());
                        },
                      ),
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              ),
            )
          ],
        );
      },
    );



  }
}
