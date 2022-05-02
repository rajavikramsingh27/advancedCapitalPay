import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Components/AppBarStyle.dart';
import '../../Components/ButtonCustom.dart';
import '../../Styles/ColorStyle.dart';
import '../../Styles/EffectStyle.dart';
import '../../Styles/ImageStyle.dart';
import '../../Styles/TextStyles.dart';
import '../../Controllers/ProfileController.dart';

import 'package:advanced_capital_pay/Components/ButtonCustom.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import '../../Views/Profile/PersonalProfile.dart';
import '../../Views/Profile/BusinessProfile.dart';
import '../../Views/OTPVerification.dart';



class EditProfile extends StatelessWidget {
  EditProfile({Key? key}) : super(key: key);

  final controller = Get.put(ProfileController());

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
              icon: Image.asset(
                ImageStyle.back_circle,
                height: 30,
              ),
              onPressed: () {
                Get.back();
              },
            ),
          ),
          backgroundColor: Colors.transparent,
          body: GetBuilder(
            init: ProfileController(),
            initState: (state) {},
            builder: (authController) {
              return Obx(() => SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppBarStyleLeadingTitleTrailing(
                          leadingImage: ImageStyle.jewlers,
                          nameUser: 'ICED OUT JEWLLERS LTD',
                          descriptionUser: 'Your Personal Settings',
                          nameStyle: TextStylesPoppins.textStyles_18.apply(
                              color: ColorStyle.primaryWhite,
                              fontWeightDelta: 1),
                          descriptionStyle: TextStylesPoppins.textStyles_12
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
                        Container(
                          height: 80,
                          color: ColorStyle.hex('#052058'),
                          padding: EffectStyle.padding(16, 16, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Edit Personal Profile',
                                style: TextStylesPoppins.textStyles_18.apply(
                                    color: ColorStyle.primaryWhite,
                                    fontWeightDelta: 2),
                              ),
                              Stack(
                                children: [
                                  Image.asset(
                                    ImageStyle.Ellipse2,
                                    height: 66,
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    // right: 0,
                                    // left: 0,
                                    child: Container(
                                      alignment: Alignment.center,
                                      padding: EffectStyle.padding(6, 6, 0, 0),
                                      decoration: BoxDecoration(
                                          color: ColorStyle.hex('#016ECF'),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          border: Border.all(
                                              color: ColorStyle.primaryWhite,
                                              width: 1)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.edit,
                                            color: ColorStyle.primaryWhite,
                                            size: 14,
                                          ),
                                          SizedBox(
                                            width: 2,
                                          ),
                                          Text('Edit',
                                              style: TextStyle(
                                                  color:
                                                      ColorStyle.primaryWhite,
                                                  fontFamily:
                                                      TextStylesPoppins.kFontFamily,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600)),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EffectStyle.padding(16, 16, 0, 0),
                          child: Row(
                            children: [
                              Expanded(
                                child: ElevatedButtonCustom(
                                  text: 'Personal',
                                  textStyle: TextStylesPoppins.textStyles_16.apply(
                                      color: controller.isPersonal.value
                                          ? ColorStyle.primaryWhite
                                          : ColorStyle.primaryWhite
                                              .withOpacity(0.7)),
                                  colorBG: controller.isPersonal.value
                                      ? ColorStyle.hex('#0E4AF2')
                                      : ColorStyle.hex('#0535B1'),
                                  radiusBorder: 6,
                                  onTap: () {
                                    controller.isPersonal.value = true;
                                  },
                                ),
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Expanded(
                                child: ElevatedButtonCustom(
                                  text: 'Business Profile',
                                  textStyle: TextStylesPoppins.textStyles_16.apply(
                                      color: !controller.isPersonal.value
                                          ? ColorStyle.primaryWhite
                                          : ColorStyle.primaryWhite
                                              .withOpacity(0.7)),
                                  colorBG: !controller.isPersonal.value
                                      ? ColorStyle.hex('#0E4AF2')
                                      : ColorStyle.hex('#0535B1'),
                                  radiusBorder: 6,
                                  onTap: () {
                                    controller.isPersonal.value = false;
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        if (controller.isPersonal.value)
                        PersonalProfile(),
                        if (!controller.isPersonal.value)
                        BusinessProfile(),
                        SizedBox(height: 16,),
                        Container(
                          child: Text(
                            'Additional Security Required',
                            style: TextStylesPoppins.textStyles_16.apply(
                              color: ColorStyle.primaryWhite,
                              fontWeightDelta: 1,
                            ),
                          ),
                          margin: EdgeInsets.only(left: 16),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 16, right: 16),
                          padding: EffectStyle.padding(16, 16, 16, 16),
                          decoration: BoxDecoration(
                            color: ColorStyle.primaryWhite,
                            borderRadius: EffectStyle.radiusCustom(10),
                          ),
                          child: Column(
                            children: [
                              OTPVerification(),
                              SizedBox(
                                height: 36,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                      child: ElevatedButtonCustom(
                                        colorBG: ColorStyle.primaryWhite,
                                        textStyle: TextStylesPoppins.textStyles_14
                                            .apply(color: ColorStyle.blueSKY, fontWeightDelta: 1),
                                        colorBorder: ColorStyle.blueSKY,
                                        text: 'Cancel',
                                        radiusBorder: 30,
                                        onTap: () {},
                                      )),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                      child: ElevatedButtonCustom(
                                        colorBG: ColorStyle.blueSKY,
                                        text: 'Generate OTP Code',
                                        radiusBorder: 30,
                                        textStyle: TextStylesPoppins.textStyles_14.apply(
                                            color: ColorStyle.primaryWhite, fontWeightDelta: 1),
                                        onTap: () {

                                        },
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 16,),
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
