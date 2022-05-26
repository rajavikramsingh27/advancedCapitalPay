import 'package:advanced_capital_pay/Components/AppBarStyle.dart';
import 'package:advanced_capital_pay/Components/ComponentsSignUp.dart';
import 'package:advanced_capital_pay/Components/DropdownButtonCustom.dart';
import 'package:advanced_capital_pay/Components/TextFieldCustom.dart';
import 'package:advanced_capital_pay/Components/TitleStar.dart';
import 'package:advanced_capital_pay/Controllers/SignUp/SignUpPersonalApplication1Controller.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:advanced_capital_pay/Views/Auth/EffectStyleSignUp.dart';
import 'package:advanced_capital_pay/Views/Auth/SignUpPersonalAdvanceCapitalPay.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';


class SignUpPersonalLoginInformation extends StatelessWidget {
  SignUpPersonalLoginInformation({Key? key}) : super(key: key);

  final controller = Get.put(SignUpPersonalApplication1Controller());

  securityQuestionsBox(
      String title, String selectedValue, Function(String?)? onChanged) {
    return Container(
      width: MediaQuery.of(Get.context!).size.width,
      alignment: Alignment.centerLeft,
      padding: EffectStyle.padding(10, 10, 10, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: TitleStar.titleStar(
                title,
                true,
                14, FontWeight.w500
            ),
          ),
          SizedBox(
            height: 6,
          ),
          DropdownButtonCustom(
            padding: EffectStyle.padding(10, 10, 10, 10),
            colorBorder: Colors.black12,
            radiusBorder: 2,
            textStyle: TextStylesPoppins.textStyles_14.apply(
              color: Colors.black,
              fontWeightDelta: 1,
            ),
            iconWidget: Icon(Icons.arrow_drop_down, color: ColorStyle.grey, size: 26,),
            onChanged: onChanged,
            listValue: controller.items.value,
            selectedValue: selectedValue,
          ),
          SizedBox(
            height: 10,
          ),
          TextFieldPasswordCustom(
            colorFill: ColorStyle.primaryWhite,
            radiusBorder: 4,
            colorBoder: ColorStyle.darkestBlueSignUp,
            colorSuffix: ColorStyle.grey,
            contentPadding: EdgeInsets.only(
              left: 16,
              right: 16,
              top: 16,
              bottom: 16,
            ),
          ),
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: SignUpPersonalApplication1Controller(),
      initState: (state) {
controller.reset();
      },
      builder: (auth) {
        return  Obx(() =>  Stack(
          children: [
            Image.asset(
              ImageStyle.bg_1,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            ),
            Scaffold(
                appBar: AppBarStyleStatusBar(),
                backgroundColor: Colors.transparent,
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
                      ComponentsSignUp.topProgress('-1'),
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
                                    style: TextStylesPoppins.textStyles_14.apply(
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Account login information',
                                      style: TextStylesPoppins.textStyles_22.apply(
                                        color: ColorStyle.secondryBlack,
                                        // fontWeightDelta: 1,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Text(
                                      'Please enter the register e-mail and password '
                                          ' which will be used to login to your AdvanceCapitalPay Account.'
                                          ' You will need to keep your security questions securely '
                                          ' safe as this will be used to Help if you forget your password.',
                                      style: TextStylesPoppins.textStyles_14.apply(
                                        color: ColorStyle.secondryBlack,
                                        // fontWeightDelta: 1,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 28,
                                    ),
                                    TitleStar.titleStar(
                                        'Registered Login',
                                        true,
                                        14, FontWeight.w500
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    TFLabelCustom(
                                      hintText: 'Login E-Mail Address',
                                      labelText: 'Login E-Mail Address',
                                      contentPadding: EdgeInsets.only(
                                        left: 16,
                                        right: 16,
                                        top: 16,
                                        bottom: 16,
                                      ),
                                      colorSuffix: ColorStyle.darkestBlue.withOpacity(0.4),
                                      colorFill: ColorStyle.primaryWhite,
                                      colorBoder: ColorStyle.darkestBlueSignUp,
                                      textStyle:
                                      TextStylesPoppins.textStyles_16.apply(color: ColorStyle.secondryBlack, fontWeightDelta: 0),
                                      hintTextStyle: TextStylesPoppins.textStyles_16.apply(color: ColorStyle.grey, fontWeightDelta: 0),
                                      radiusBorder: 4,
                                    ),
                                    // TextField(
                                    //   // obscureText: true,
                                    //   decoration: InputDecoration(
                                    //     border: OutlineInputBorder(),
                                    //     labelText: 'Confirm Login E-Mail Address',
                                    //     labelStyle: TextStyles.textStyles_14.apply(
                                    //       color: Colors.grey,
                                    //       fontWeightDelta: 1,
                                    //     ),
                                    //   ),
                                    // ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    TFLabelCustom(
                                      hintText: 'Confirm Login E-Mail Address',
                                      labelText: 'Confirm Login E-Mail Address',
                                      contentPadding: EdgeInsets.only(
                                        left: 16,
                                        right: 16,
                                        top: 16,
                                        bottom: 16,
                                      ),
                                      colorSuffix: ColorStyle.darkestBlue.withOpacity(0.4),
                                      colorFill: ColorStyle.primaryWhite,
                                      colorBoder: ColorStyle.darkestBlueSignUp,
                                      textStyle:
                                      TextStylesPoppins.textStyles_16.apply(color: ColorStyle.secondryBlack, fontWeightDelta: 0),
                                      hintTextStyle: TextStylesPoppins.textStyles_16.apply(color: ColorStyle.grey, fontWeightDelta: 0),
                                      radiusBorder: 4,
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    TFPasswordLabelCustom(
                                      hintText: 'Password',
                                      labelText: 'Password',
                                      contentPadding: EdgeInsets.only(
                                        left: 16,
                                        right: 16,
                                        top: 16,
                                        bottom: 16,
                                      ),
                                      colorSuffix: ColorStyle.darkestBlue.withOpacity(0.4),
                                      colorFill: ColorStyle.primaryWhite,
                                      colorBoder: ColorStyle.darkestBlueSignUp,
                                      textStyle:
                                      TextStylesPoppins.textStyles_16.apply(color: ColorStyle.secondryBlack),
                                      hintTextStyle: TextStylesPoppins.textStyles_16.apply(color: ColorStyle.grey),
                                      radiusBorder: 4,
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    TFPasswordLabelCustom(
                                      hintText: 'Confirm Password',
                                      labelText: 'Confirm Password',
                                      contentPadding: EdgeInsets.only(
                                        left: 16,
                                        right: 16,
                                        top: 16,
                                        bottom: 16,
                                      ),
                                      colorSuffix: ColorStyle.darkestBlue.withOpacity(0.4),
                                      colorFill: ColorStyle.primaryWhite,
                                      colorBoder: ColorStyle.darkestBlueSignUp,
                                      textStyle:
                                      TextStylesPoppins.textStyles_16.apply(color: ColorStyle.secondryBlack, fontWeightDelta: 0),
                                      hintTextStyle: TextStylesPoppins.textStyles_16.apply(color: ColorStyle.grey, fontWeightDelta: 0),
                                      radiusBorder: 4,
                                    ),
                                    SizedBox(
                                      height: 18,
                                    ),
                                    Text(
                                      'Password Strength',
                                      style: TextStylesPoppins.textStyles_14.apply(
                                        color: ColorStyle.secondryBlack,
                                        fontWeightDelta: 2,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    LinearProgressIndicator(
                                      backgroundColor: ColorStyle.grey,
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                          ColorStyle.darkestBlueSignUp),
                                      value: 0.6,
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 10,
                                          width: 10,
                                          decoration: BoxDecoration(
                                            color: ColorStyle.secondryBlack,
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Use 6 to 64 characters.',
                                          style: TextStylesPoppins.textStyles_14.apply(
                                            color: ColorStyle.secondryBlack,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 10,
                                          width: 10,
                                          decoration: BoxDecoration(
                                            color: ColorStyle.secondryBlack,
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 20),
                                            Text(
                                              'Besides letters, include at least a',
                                              style: TextStylesPoppins.textStyles_14.apply(
                                                color: ColorStyle.secondryBlack,
                                              ),
                                            ),
                                            Text(
                                              ' number or  symbol (!@#^&*-+)',
                                              style: TextStylesPoppins.textStyles_14.apply(
                                                color: ColorStyle.secondryBlack,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 10,
                                          width: 10,
                                          decoration: BoxDecoration(
                                            color: ColorStyle.secondryBlack,
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Password is case sensitive.',
                                          style: TextStylesPoppins.textStyles_14.apply(
                                            color: ColorStyle.secondryBlack,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 10,
                                          width: 10,
                                          decoration: BoxDecoration(
                                            color: ColorStyle.secondryBlack,
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 20),
                                            Text(
                                              'Avoid using the same password',
                                              style: TextStylesPoppins.textStyles_14.apply(
                                                color: ColorStyle.secondryBlack,
                                              ),
                                            ),
                                            Text(
                                              ' for multiple sites.',
                                              style: TextStylesPoppins.textStyles_14.apply(
                                                color: ColorStyle.secondryBlack,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),

                                    securityQuestionsBox(
                                      'Security question 1',
                                      controller.selectedValueOne.value,
                                          (newValue) {
                                        controller.selectedValueOne.value = newValue!;
                                      },
                                    ),

                                    securityQuestionsBox(
                                      'Security question 2',
                                      controller.selectedValueTwo.value,
                                          (newValue) {
                                        controller.selectedValueTwo.value = newValue!;
                                      },
                                    ),

                                    securityQuestionsBox(
                                      'Security question 3',
                                      controller.selectedValueThree.value,
                                          (newValue) {
                                        controller.selectedValueThree.value = newValue!;
                                      },
                                    ),

                                    ComponentsSignUp.backContinue(
                                        'Back to site', () {}, 'Continue', () {
                                      Get.to(SignUpPersonalAdvanceCapitalPay());
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
                )),
          ],
        ));
      },
    );


  }
}
