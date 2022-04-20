import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:auto_size_text/auto_size_text.dart';

import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';
import '../Components/BackgroundImage.dart';
import '../Components/AppBarStyle.dart';
import '../Components/ButtonCustom.dart';
import '../Views/BioMatric_Verification.dart';
import '../Components/BioMatricAuth.dart';
import '../Controllers/BioMatric_VerificationController.dart';
import '../Views/BioMatric_Verification.dart';
import '../Views/ChooseYourCard.dart';


class BioMatric_Permission extends StatelessWidget {
  BioMatric_Permission({Key? key}) : super(key: key);

  final controller = Get.put(BioMatric_VerificationController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: BioMatric_VerificationController(),
      initState: (state) {
        controller.reset();
      },
      builder: (authController) {
        return Obx(() => Stack(
              children: [
                BackgroundImage(
                  imageName: controller.isFaceID.value
                      ? ImageStyle.bg_BioMatric
                      : ImageStyle.bg_TouchID,
                ),
                Scaffold(
                  backgroundColor: Colors.transparent,
                  appBar: AppBarStyle(
                    leadingButton: IconButton(
                      icon: Image.asset(
                        ImageStyle.user_logout,
                        height: 30,
                      ),
                      onPressed: () {},
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
                      left: 30,
                      right: 30,
                      top: 80,
                      bottom: 30,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Container(
                        //     alignment: Alignment.center,
                        //     width: MediaQuery.of(context).size.width,
                        //     child: Stack(
                        //       children: [
                        //         Image.asset(
                        //           ImageStyle.bioMatricID,
                        //           width: MediaQuery.of(context).size.width,
                        //           // height: 100,
                        //           fit: BoxFit.fill,
                        //         ),
                        //         Positioned(
                        //           top: 0,
                        //           bottom: 0,
                        //           child: Image.asset(
                        //             ImageStyle.face_scan,
                        //             width: 100,
                        //             height: 100,
                        //             fit: BoxFit.fill,
                        //           ),
                        //         ),
                        //       ],
                        //     )
                        // ),
                        SizedBox(
                          height: 160,
                        ),
                        Text(
                          controller.isFaceID.value
                              ? 'Fast and Secure access with Face ID'
                              : 'Faster Login with Touch ID',
                          textAlign: TextAlign.center,
                          style: TextStyles.textStyles_24.apply(
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
                          style: TextStyles.textStyles_14.apply(
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
                          style: TextStyles.textStyles_12.apply(
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
                                colorText: ColorStyle.secondryBlack,
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
                                if (!controller.isFaceID.value) {
                                  // Get.to(BioMatric_Verification());
                                  Get.to(ChooseYourCard());
                                }
                                controller.isFaceID.value =
                                    !controller.isFaceID.value;

                                // BioMatricAuth.authenticateWithBiometrics();
                              },
                            )),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ));
      },
    );
  }
}
