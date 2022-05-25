import 'package:advanced_capital_pay/Components/AppBarStyle.dart';
import 'package:advanced_capital_pay/Components/BackgroundImage.dart';
import 'package:advanced_capital_pay/Components/ButtonChat.dart';
import 'package:advanced_capital_pay/Components/ButtonCustom.dart';
import 'package:advanced_capital_pay/Controllers/BioMatric_VerificationController.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:advanced_capital_pay/Views/Auth/SignIn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:auto_size_text/auto_size_text.dart';

import '../Card/ChooseYourCard.dart';

class BioMatric_Permission extends StatelessWidget {
  BioMatric_Permission({Key? key}) : super(key: key);

  final controller = Get.put(BioMatric_VerificationController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: BioMatric_VerificationController(),
      initState: (state) {

      },
      builder: (auth) {
        return Stack(
          children: [
            BackgroundImage(
              // imageName: controller.isFaceID.value
              //     ? ImageStyle.bg_BioMatric
              //     : ImageStyle.bg_TouchID,

              imageName: controller.isFaceID.value
                  ? ImageStyle.bg_FaceID
                  : ImageStyle.bg_TouchID_2,
            ),
            Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBarStyle(
                leadingButton: IconButton(
                  icon: Image.asset(
                    ImageStyle.user_logout,
                    height: 30,
                  ),
                  onPressed: () {
                    Get.offAll(SignIn());
                  },
                ),
                trailingButton: ButtonChat(),
              ),
              body: SingleChildScrollView(
                padding: EdgeInsets.only(
                  left: 30,
                  right: 30,
                  top: controller.isFaceID.value ? 0 : 0,
                  bottom: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        // Center(
                        //   child: Image.asset(
                        //     controller.isFaceID.value ?
                        //     ImageStyle.thumb_square_icon : ImageStyle.thumb_circle_icon,
                        //     width: 230,
                        //     height: 230,
                        //     fit: BoxFit.cover,
                        //   ),
                        // ),
                        // Center(
                        //   child:
                        Container(
                          width: 230,
                          height: 230,
                          margin: EdgeInsets.only(
                              top: controller.isFaceID.value ? 14 : 14,
                              left: controller.isFaceID.value ? 46 : 46
                          ),
                          alignment: Alignment.center,
                          child: Image.asset(
                            controller.isFaceID.value ?
                            ImageStyle.face_scan : ImageStyle.touchScan,
                            width: controller.isFaceID.value ? 126 : 120,
                            height: controller.isFaceID.value ? 110 : 120,
                            fit: BoxFit.fill,
                          ),
                        ),
                        // ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      controller.isFaceID.value
                          ? 'Fast and Secure access with Face ID'
                          : 'Faster Login with Touch ID',
                      textAlign: TextAlign.center,
                      style: TextStylesPoppins.textStyles_24.apply(
                        color: ColorStyle.primaryWhite,
                        fontWeightDelta: 1,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      controller.isFaceID.value
                          ? 'Login to your AdvanceCapitalPay App faster with TouchID'
                          : 'Login to your AdvanceCapitalPay App faster with TouchID',
                      textAlign: TextAlign.center,
                      style: TextStylesPoppins.textStyles_14.apply(
                        color: ColorStyle.primaryWhite,
                        fontWeightDelta: 1,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      controller.isFaceID.value
                          ? "You can now use your Face ID stored on your device to log into the AdvanceCapitalPay app instead of using your passwor "
                          "You can continue to use the app by login in using your password Please be aware that access to some feature may still require you to enter your registered password. "
                          "You may enable or disable the Face ID feature ater in the settings of your AdvanceCapitlPay Account"
                          : 'Once Touch ID has been setup you can access certain features within your AdvanceCapitlPay app without entering your password each time. '
                          'Please be aware that access to some features may still require you to enter your registered password. '
                          'You may disable the feature later on within the settings of your AdvanaceCapitalPay App.',
                      textAlign: TextAlign.center,
                      style: TextStylesPoppins.textStyles_12.apply(
                        color: ColorStyle.primaryWhite,
                        fontWeightDelta: 0,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButtonCustom(
                            text: 'No Thanks',
                            colorBG: ColorStyle.primaryWhite,
                            textStyle: TextStylesPoppins.textStyles_16
                                .apply(color: ColorStyle.secondryBlack, fontWeightDelta: 1),
                            onTap: () {},
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Expanded(
                            child: GradientButton(
                              text: 'Yes Please',
                              onTap: () {
                                controller.isFaceID.value = !controller.isFaceID.value;
                                controller.verifyStep.value+=1;

                                if (controller.verifyStep.value>1) {
                                  Get.to(ChooseYourCard());
                                }
                              },
                            )),
                      ],
                    )
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
