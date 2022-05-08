import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:auto_size_text/auto_size_text.dart';

import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';
import '../Components/BackgroundImage.dart';
import '../Components/AppBarStyle.dart';
import '../Components/TextFieldCustom.dart';
import '../Controllers/SignUp/OTPScreenController.dart';
import '../Views/BioMatric_Permission.dart';
import '../Components/ButtonCustom.dart';
import 'SignUp/SignUpVerifyQuestion.dart';
import '../../../Components/ButtonChat.dart';

class OTPScreen extends StatelessWidget {
  OTPScreen({Key? key}) : super(key: key);

  final controller = Get.put(OTPScreenController());

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBarStyle(
            leadingButton: IconButton(
              icon: Image.asset(
                ImageStyle.user_logout,
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
              left: 30,
              right: 30,
              top: 105,
              bottom: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Verify your mobile no.',
                  style: TextStylesPoppins.textStyles_20.apply(
                    color: ColorStyle.primaryWhite,
                    fontWeightDelta: 1,
                  ),
                ),
                SizedBox(height: 22),
                AutoSizeText(
                  'Enter the One Time Password (OTP) send to Mobile no. 052-XXXXX-86',
                  maxLines: 2,
                  style: TextStylesPoppins.autoSizeText.apply(
                    color: ColorStyle.primaryWhite,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'ACP',
                  style: TextStylesPoppins.textStyles_14.apply(
                    color: ColorStyle.primaryWhite,
                    // fontWeightDelta: 10,
                  ),
                ),
                SizedBox(height: 10),

                Row(
                  children: [
                    Expanded(
                      child:  TextFieldOTP(
                        controller:
                        controller.txtOTP_First.value,
                        focusNode: controller.focusFirst,
                        onChanged: (text) {
                          if (controller.txtOTP_First.value.text.length > 0)
                            controller.focusSecond
                                .requestFocus();
                        },
                      ),),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: TextFieldOTP(
                          controller:
                          controller.txtOTP_Second.value,
                          focusNode: controller.focusSecond,
                          onChanged: (text) {
                            print("text text text text text text text text text text text ");
                            print(text);
                            if (controller.txtOTP_Second.value.text.length > 0)
                              controller.focusThird
                                  .requestFocus();
                            else if (controller.txtOTP_Second.value.text == '')
                              controller.focusFirst
                                  .requestFocus();
                          },
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: TextFieldOTP(
                          controller:
                          controller.txtOTP_Third.value,
                          focusNode: controller.focusThird,
                          onChanged: (text) {
                            if (controller.txtOTP_Third.value.text.length > 0)
                              controller.focusFourth
                                  .requestFocus();
                            else if (controller.txtOTP_Third.value.text == '')
                              controller.focusSecond
                                  .requestFocus();
                          },
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: TextFieldOTP(
                          controller:
                          controller.txtOTP_Fourth.value,
                          focusNode: controller.focusFourth,
                          onChanged: (text) {
                            if (controller.txtOTP_Fourth.value.text.length > 0)
                              controller.focusFive
                                  .requestFocus();
                            // debugPrint("Hello");
                            else if (controller.txtOTP_Fourth.value.text == '')
                              controller.focusThird
                                  .requestFocus();
                            // else
                          },
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: TextFieldOTP(
                          controller:
                          controller.txtOTP_Five.value,
                          focusNode: controller.focusFive,
                          onChanged: (text) {
                            if (controller.txtOTP_Five.value.text.length > 0)
                              controller.focusSix
                                  .requestFocus();
                            else if (controller.txtOTP_Five.value.text == '')
                              controller.focusFourth
                                  .requestFocus();
                          },
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextFieldOTP(
                        controller:
                        controller.txtOTP_Six.value,
                        focusNode: controller.focusSix,
                        onChanged: (text) {
                          if (controller.txtOTP_Six.value.text.length > 0)
                            // controller.focusSix
                            //     .requestFocus();
                            print("OTP is filled");
                          else if (controller.txtOTP_Six.value.text == '')
                            controller.focusFive
                                .requestFocus();
                        },
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 10),
                Container(
                  height: 50,
                  child: Text(
                    'You have entered the incorrect OTP code. Please try again.',
                    style: TextStylesPoppins.textStyles_14.apply(
                      color: Colors.red,
                      // fontWeightDelta: 1,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: Row(
                        children: [
                          Container(
                            height: 36,
                            width: 36,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                    color: ColorStyle.blueSKY, width: 2)),
                            child: Text(
                              '50',
                              style: TextStylesPoppins.textStyles_14.apply(
                                color: ColorStyle.blueSKY,
                                fontWeightDelta: 2,
                              ),
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Request new OTP',
                            style: TextStylesPoppins.textStyles_14.apply(
                              color: ColorStyle.blueSKY,
                              fontWeightDelta: 1,
                            ),
                          ),
                        ],
                      ),
                      onTap: () {},
                    ),
                    InkWell(
                      child: Text(
                        'Use other',
                        style: TextStylesPoppins.textStyles_14.apply(
                          color: ColorStyle.blueSKY,
                          fontWeightDelta: 1,
                        ),
                      ),
                      onTap: () {
                        Get.to(SignUpVerifyQuestion());
                      },
                    ),
                  ],
                ),
                SizedBox(height: 130),
                Center(
                  child: GradientButton(
                    text: 'Sign in',
                    onTap: () {
                      Get.to(BioMatric_Permission());
                    },
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
