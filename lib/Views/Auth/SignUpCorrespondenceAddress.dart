import 'package:advanced_capital_pay/Components/AppBarStyle.dart';
import 'package:advanced_capital_pay/Components/ComponentsSignUp.dart';
import 'package:advanced_capital_pay/Components/CountryPicker.dart';
import 'package:advanced_capital_pay/Components/TextFieldCustom.dart';
import 'package:advanced_capital_pay/Components/TitleStar.dart';
import 'package:advanced_capital_pay/Controllers/SignUp/SignUpCorrespondenceAddressController.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:advanced_capital_pay/Views/Auth/EffectStyleSignUp.dart';
import 'package:advanced_capital_pay/Views/Auth/SignUpOwnerVerification.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'SignUpAccountType.dart';

class SignUpCorrespondenceAddress extends StatelessWidget {
  final String? addressType;

  SignUpCorrespondenceAddress({Key? key, required this.addressType})
      : super(key: key);

  final controller = Get.put(SignUpCorrespondenceAddressController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: SignUpCorrespondenceAddressController(),
      initState: (state) {
                 controller.reset();
      },
      builder: (auth) {
        return   Obx(() => Stack(
          children: [
            Image.asset(
              ImageStyle.bg_1,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            ),
            Scaffold(
                backgroundColor: Colors.transparent,
                appBar: AppBarStyleStatusBar(),
                body: SingleChildScrollView(
                  padding: EffectStyle.padding(16, 16, 0, 16),
                  child: Column(
                    children: [
                      Image.asset(
                        ImageStyle.application,
                        width: MediaQuery.of(context).size.width,
                        // fit: BoxFit.fill,
                        // height: heightAppBar,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      ComponentsSignUp.topProgress('8'),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        // padding: EdgeInsets.only(left: 20, right: 20),
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                  child: Text(
                                    'ACFVC8JTJ',
                                    style: TextStylesPoppins.textStyles_14
                                        .apply(
                                      color: ColorStyle.primaryWhite,
                                      fontWeightDelta: 1,
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                  width: 102,
                                  height: 43,
                                  decoration: EffectStyleSignUp.decoration(
                                      ColorStyle.darkestBlueSignUp)),
                              SizedBox(
                                height: 12,
                              ),
                              Container(
                                padding: EffectStyle.padding(16, 16, 0, 0),
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'What is your ${addressType} & Correspondence Address',
                                      style: TextStylesPoppins.textStyles_20
                                          .apply(
                                        color: ColorStyle.secondryBlack,
                                        // fontWeightDelta: 1,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Text(
                                      'Please complete the sections below '
                                          'for the client profile Information, '
                                          'we can only accept answers provided '
                                          'in English. If you required any '
                                          'assistance throughout the application '
                                          'process simply click the Live Help Button '
                                          'where one of our Customer Support Representatives '
                                          'will be happy to assist you with any queries',
                                      style: TextStylesPoppins.textStyles_14
                                          .apply(
                                        color: ColorStyle.secondryBlack,
                                        // fontWeightDelta: 1,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 28,
                                    ),
                                    Text(
                                      'Residential Address',
                                      style: TextStylesPoppins.textStyles_20
                                          .apply(
                                        color: ColorStyle.secondryBlack,
                                        fontWeightDelta: 1,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 28,
                                    ),
                                    TitleStar.titleStar('Country', true, 14,
                                        FontWeight.w500),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    CountryPicker(
                                      colorBG: ColorStyle.primaryWhite,
                                      colorBorder: Colors.black12,
                                      icon: Icon(
                                        Icons.arrow_drop_down,
                                        color: ColorStyle.grey,
                                        size: 26,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    TitleStar.titleStar('Address Line 1',
                                        true, 14, FontWeight.w500),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    TextFieldCustomOutline(
                                      padding: EffectStyle.padding(
                                          10, 10, 10, 10),
                                      hintText: '',
                                      textStyle: TextStylesPoppins
                                          .textStyles_14
                                          .apply(
                                        color: Colors.black,
                                        fontWeightDelta: 1,
                                      ),
                                      colorFill: ColorStyle.primaryWhite,
                                      colorBoder: Colors.black12,
                                      radiusBorder: 2,
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    TitleStar.titleStar(
                                        'Address Line 2 (Optional)',
                                        false,
                                        14,
                                        FontWeight.w500),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    TextFieldCustomOutline(
                                      padding: EffectStyle.padding(
                                          10, 10, 10, 10),
                                      hintText: '',
                                      textStyle: TextStylesPoppins
                                          .textStyles_14
                                          .apply(
                                        color: Colors.black,
                                        fontWeightDelta: 1,
                                      ),
                                      colorFill: ColorStyle.primaryWhite,
                                      colorBoder: Colors.black12,
                                      radiusBorder: 2,
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    TitleStar.titleStar(
                                        'City', true, 14, FontWeight.w500),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    TextFieldCustomOutline(
                                      padding: EffectStyle.padding(
                                          10, 10, 10, 10),
                                      hintText: '',
                                      textStyle: TextStylesPoppins
                                          .textStyles_14
                                          .apply(
                                        color: Colors.black,
                                        fontWeightDelta: 1,
                                      ),
                                      colorFill: ColorStyle.primaryWhite,
                                      colorBoder: Colors.black12,
                                      radiusBorder: 2,
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    TitleStar.titleStar(
                                        'Country / State / Province (Optional)',
                                        false,
                                        14,
                                        FontWeight.w500),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    TextFieldCustomOutline(
                                      padding: EffectStyle.padding(
                                          10, 10, 10, 10),
                                      hintText: '',
                                      textStyle: TextStylesPoppins
                                          .textStyles_14
                                          .apply(
                                        color: Colors.black,
                                        fontWeightDelta: 1,
                                      ),
                                      colorFill: ColorStyle.primaryWhite,
                                      colorBoder: Colors.black12,
                                      radiusBorder: 2,
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    TitleStar.titleStar('Post Zip Code',
                                        true, 14, FontWeight.w500),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    TextFieldCustomOutline(
                                      padding: EffectStyle.padding(
                                          10, 10, 10, 10),
                                      hintText: '',
                                      textStyle: TextStylesPoppins
                                          .textStyles_14
                                          .apply(
                                        color: Colors.black,
                                        fontWeightDelta: 1,
                                      ),
                                      colorFill: ColorStyle.primaryWhite,
                                      colorBoder: Colors.black12,
                                      radiusBorder: 2,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    InkWell(
                                      child: Row(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          controller.isCheck.value
                                              ? Icon(
                                            Icons.check_box,
                                            color: ColorStyle
                                                .darkestBlueSignUp,
                                          )
                                              : Icon(
                                              Icons
                                                  .check_box_outline_blank_sharp,
                                              color: ColorStyle
                                                  .darkestBlueSignUp),
                                          SizedBox(
                                            width: 6,
                                          ),
                                          Expanded(
                                            child: Text(
                                              'My Correspondence Address is same as my ${addressType} address',
                                              style: TextStylesPoppins
                                                  .textStyles_12
                                                  .apply(
                                                color: ColorStyle
                                                    .secondryBlack,
                                                fontWeightDelta: 0,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      onTap: () {
                                        controller.isCheck.value =
                                        !controller.isCheck.value;
                                      },
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      'Correspondence Address',
                                      style: TextStylesPoppins.textStyles_20
                                          .apply(
                                        color: ColorStyle.secondryBlack,
                                        fontWeightDelta: 1,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    TitleStar.titleStar('Address Line 1',
                                        true, 14, FontWeight.w500),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    TextFieldCustomOutline(
                                      padding: EffectStyle.padding(
                                          10, 10, 10, 10),
                                      hintText: '',
                                      textStyle: TextStylesPoppins
                                          .textStyles_14
                                          .apply(
                                        color: Colors.black,
                                        fontWeightDelta: 1,
                                      ),
                                      colorFill: ColorStyle.primaryWhite,
                                      colorBoder: Colors.black12,
                                      radiusBorder: 2,
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    TitleStar.titleStar(
                                        'Address Line 2 (Optional)',
                                        false,
                                        14,
                                        FontWeight.w500),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    TextFieldCustomOutline(
                                      padding: EffectStyle.padding(
                                          10, 10, 10, 10),
                                      hintText: '',
                                      textStyle: TextStylesPoppins
                                          .textStyles_14
                                          .apply(
                                        color: Colors.black,
                                        fontWeightDelta: 1,
                                      ),
                                      colorFill: ColorStyle.primaryWhite,
                                      colorBoder: Colors.black12,
                                      radiusBorder: 2,
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    TitleStar.titleStar(
                                        'City', true, 14, FontWeight.w500),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    TextFieldCustomOutline(
                                      padding: EffectStyle.padding(
                                          10, 10, 10, 10),
                                      hintText: '',
                                      textStyle: TextStylesPoppins
                                          .textStyles_14
                                          .apply(
                                        color: Colors.black,
                                        fontWeightDelta: 1,
                                      ),
                                      colorFill: ColorStyle.primaryWhite,
                                      colorBoder: Colors.black12,
                                      radiusBorder: 2,
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    TitleStar.titleStar(
                                        'Country / State / Province (Optional)',
                                        false,
                                        14,
                                        FontWeight.w500),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    TextFieldCustomOutline(
                                      padding: EffectStyle.padding(
                                          10, 10, 10, 10),
                                      hintText: '',
                                      textStyle: TextStylesPoppins
                                          .textStyles_14
                                          .apply(
                                        color: Colors.black,
                                        fontWeightDelta: 1,
                                      ),
                                      colorFill: ColorStyle.primaryWhite,
                                      colorBoder: Colors.black12,
                                      radiusBorder: 2,
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    TitleStar.titleStar('Post Zip Code',
                                        true, 14, FontWeight.w500),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    TextFieldCustomOutline(
                                      padding: EffectStyle.padding(
                                          10, 10, 10, 10),
                                      hintText: '',
                                      textStyle: TextStylesPoppins
                                          .textStyles_14
                                          .apply(
                                        color: Colors.black,
                                        fontWeightDelta: 1,
                                      ),
                                      colorFill: ColorStyle.primaryWhite,
                                      colorBoder: Colors.black12,
                                      radiusBorder: 2,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    TitleStar.titleStar('Country', true, 14,
                                        FontWeight.w500),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    CountryPicker(
                                      colorBG: ColorStyle.primaryWhite,
                                      colorBorder: Colors.black12,
                                      icon: Icon(
                                        Icons.arrow_drop_down,
                                        color: ColorStyle.grey,
                                        size: 26,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    ComponentsSignUp.backContinue(
                                        'Back to site', () {}, 'Continue',
                                            () {
                                          if (addressType!
                                              .toLowerCase()
                                              .contains('personal')) {
                                            Get.to(SignUpAccountType());
                                          } else {
                                            Get.to(SignUpOwnerVerification());
                                          }
                                        })
                                  ],
                                ),
                              ),
                            ],
                          ),
                          decoration: EffectStyleSignUp.decoration()),
                      ComponentsSignUp.bottomUI(),
                    ],
                  ),
                )
            ),
          ],
        ));
      },
    );

  }
}
