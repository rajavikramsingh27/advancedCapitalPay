import 'package:advanced_capital_pay/Components/AppBarStyle.dart';
import 'package:advanced_capital_pay/Components/ComponentsSignUp.dart';
import 'package:advanced_capital_pay/Components/CountryPicker.dart';
import 'package:advanced_capital_pay/Components/DropdownButtonCustom.dart';
import 'package:advanced_capital_pay/Components/TextFieldCustom.dart';
import 'package:advanced_capital_pay/Components/TitleStar.dart';
import 'package:advanced_capital_pay/Controllers/SignUp/SignUpPersonalApplication1Controller.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:advanced_capital_pay/Views/Auth/EffectStyleSignUp.dart';
import 'package:advanced_capital_pay/Views/Auth/SignUpCorrespondenceAddress.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';




class SignUpPersonalApplication1 extends StatelessWidget {
  SignUpPersonalApplication1({Key? key}) : super(key: key);

  final controller = Get.put(SignUpPersonalApplication1Controller());

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: SignUpPersonalApplication1Controller(),
      initState: (state) {
                controller.reset();
      },
      builder: (auth) {
        return  Obx(() => Stack(
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
                body:SingleChildScrollView(
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
                      ComponentsSignUp.topProgress('0'),
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
                                decoration: BoxDecoration(color: ColorStyle.darkestBlueSignUp),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Container(
                                padding: EffectStyle.padding(16, 16, 0, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ComponentsSignUp.title('Welcome to Advance Capital'
                                        'On-boarding Application Form',),
                                    SizedBox(
                                      height: 12,
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
                                      style: TextStylesPoppins.textStyles_14.apply(
                                        color: ColorStyle.secondryBlack,
                                        fontWeightDelta: 1,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 28,
                                    ),
                                    TitleStar.titleStar('Your Name', true),
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
                                      listValue: ['Mr.', 'Miss', 'Mrs'],
                                      selectedValue: "Mr.",
                                      onChanged: (text) {},
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    TextFieldCustomOutline(
                                      padding: EffectStyle.padding(10, 10, 10, 10),
                                      hintText: 'First Name',
                                      textStyle: TextStylesPoppins.textStyles_14.apply(
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
                                    TextFieldCustomOutline(
                                      padding: EffectStyle.padding(10, 10, 10, 10),
                                      hintText: 'Middle Name (Optional)',
                                      textStyle: TextStylesPoppins.textStyles_14.apply(
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
                                    TextFieldCustomOutline(
                                      padding: EffectStyle.padding(10, 10, 10, 10),
                                      hintText: 'Last Name',
                                      textStyle: TextStylesPoppins.textStyles_14.apply(
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
                                        'Country of Birth',
                                        true
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),

                                    CountryPicker(
                                      colorBG: ColorStyle.primaryWhite,
                                      colorBorder: Colors.black12,
                                      icon: Icon(Icons.arrow_drop_down, color: ColorStyle.grey, size: 26,),
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    TitleStar.titleStar(
                                        'Place of Birth',
                                        true
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
                                      onChanged: (text) {

                                      },
                                      listValue: [
                                        'Place of Birth',
                                        'Jhunjhunun',
                                        'Jaipure',
                                        'Delhi'
                                      ],
                                      selectedValue: "Place of Birth",
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    TitleStar.titleStar(
                                        'Citizenship',
                                        true
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
                                      onChanged: (text) {},
                                      listValue: [
                                        'Citizenship',
                                        'Jhunjhunun',
                                        'Jaipur',
                                        'Delhi'
                                      ],
                                      selectedValue: "Citizenship",
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    TitleStar.titleStar(
                                        'Date of Birth',
                                        true
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    TextFieldCustomOutline(
                                      padding: EffectStyle.padding(10, 10, 10, 10),
                                      hintText: '1',
                                      textStyle: TextStylesPoppins.textStyles_14.apply(
                                        color: Colors.black,
                                        fontWeightDelta: 1,
                                      ),
                                      colorFill: ColorStyle.primaryWhite,
                                      colorBoder: Colors.black12,
                                      radiusBorder: 2,
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    TextFieldCustomOutline(
                                      padding: EffectStyle.padding(10, 10, 10, 10),
                                      hintText: 'January',
                                      textStyle: TextStylesPoppins.textStyles_14.apply(
                                        color: Colors.black,
                                        fontWeightDelta: 1,
                                      ),
                                      colorFill: ColorStyle.primaryWhite,
                                      colorBoder: Colors.black12,
                                      radiusBorder: 2,
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    TextFieldCustomOutline(
                                      padding: EffectStyle.padding(10, 10, 10, 10),
                                      hintText: '1941',
                                      textStyle: TextStylesPoppins.textStyles_14.apply(
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
                                    Text(
                                      'Current Occupation',
                                      style: TextStylesPoppins.textStyles_14.apply(
                                        color: ColorStyle.secondryBlack,
                                        fontWeightDelta: 1,
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
                                      onChanged: (text) {},
                                      listValue: [
                                        'Current Occupation',
                                        'Jhunjhunun',
                                        'Jaipure',
                                        'Delhi'
                                      ],
                                      selectedValue: "Current Occupation",
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    TitleStar.titleStar(
                                        'Passport Number',
                                        true
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
                                      onChanged: (text) {},
                                      listValue: [
                                        'Please enter passport number',
                                        '202',
                                        '203',
                                        '204',
                                      ],
                                      selectedValue: "Please enter passport number",
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    TitleStar.titleStar(
                                        'Telephone nomber',
                                        true
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    CountryPickerPhoneCode(
                                      colorBG: ColorStyle.primaryWhite,
                                      colorBorder: Colors.black12,
                                      icon: Icon(Icons.arrow_drop_down, color: ColorStyle.grey, size: 26,),
                                      padding: EffectStyle.padding(10, 10, 10, 10),
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    if (controller.isPhoneAddtional.value)
                                      Row(
                                        children: [
                                          Expanded(
                                            child: TextFieldCustomOutline(
                                              padding: EffectStyle.padding(10, 10, 10, 10),
                                              hintText: 'please enter your phone number without country code',
                                              textStyle: TextStylesPoppins.textStyles_14.apply(
                                                color: Colors.black,
                                                fontWeightDelta: 1,
                                              ),
                                              colorFill: ColorStyle.primaryWhite,
                                              colorBoder: Colors.black12,
                                              radiusBorder: 2,
                                            ),

                                          ),
                                          SizedBox(
                                            width: 12,
                                          ),
                                          Container(
                                            height: 25,
                                            width: 25,
                                            child: Icon(Icons.question_mark,
                                                size: 18, color: Colors.grey),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(20),
                                                border: Border.all(
                                                    width: 1, color: Colors.grey)),
                                          )
                                        ],
                                      ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: TextFieldCustomOutline(
                                            padding: EffectStyle.padding(10, 10, 10, 10),
                                            hintText: 'please enter your phone number without country code',
                                            textStyle: TextStylesPoppins.textStyles_14.apply(
                                              color: Colors.black,
                                              fontWeightDelta: 1,
                                            ),
                                            colorFill: ColorStyle.primaryWhite,
                                            colorBoder: Colors.black12,
                                            radiusBorder: 2,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 12+25,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    InkWell(
                                      child: Row(
                                        children: [
                                          Icon(
                                              !controller.isPhoneAddtional.value ?
                                              Icons.add : Icons.minimize_sharp,
                                              color: ColorStyle.darkestBlueSignUp),
                                          Text(
                                            !controller.isPhoneAddtional.value ? 'Add an additional telephone number' : 'Remove additional telephone number',
                                            style: TextStylesPoppins.textStyles_13.apply(
                                              color: ColorStyle.darkestBlueSignUp,
                                              fontWeightDelta: 1,
                                            ),
                                          ),
                                        ],
                                      ),
                                      onTap: () {
                                        controller.isPhoneAddtional.value = !controller.isPhoneAddtional.value;
                                      },
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    TitleStar.titleStar(
                                        'Private E-mail address',
                                        true
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: TextFieldCustomOutline(
                                            padding: EffectStyle.padding(10, 10, 10, 10),
                                            hintText: 'Please enter your personal email',
                                            textStyle: TextStylesPoppins.textStyles_14.apply(
                                              color: Colors.black,
                                              fontWeightDelta: 1,
                                            ),
                                            colorFill: ColorStyle.primaryWhite,
                                            colorBoder: Colors.black12,
                                            radiusBorder: 2,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 12,
                                        ),
                                        Container(
                                          height: 25,
                                          width: 25,
                                          child: Icon(Icons.question_mark,
                                              size: 18, color: Colors.grey),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),
                                              border: Border.all(
                                                  width: 1, color: Colors.grey)),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    if (controller.isEmailAddtional.value)
                                      Row(
                                        children: [
                                          Expanded(
                                            child: TextFieldCustomOutline(
                                              padding: EffectStyle.padding(10, 10, 10, 10),
                                              hintText: 'Please enter your personal email',
                                              textStyle: TextStylesPoppins.textStyles_14.apply(
                                                color: Colors.black,
                                                fontWeightDelta: 1,
                                              ),
                                              colorFill: ColorStyle.primaryWhite,
                                              colorBoder: Colors.black12,
                                              radiusBorder: 2,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 12+25,
                                          ),

                                        ],
                                      ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    InkWell(
                                      child: Row(
                                        children: [
                                          Icon(
                                              !controller.isEmailAddtional.value ?
                                              Icons.add : Icons.minimize_sharp,
                                              color: ColorStyle.darkestBlueSignUp),
                                          Text(
                                            !controller.isEmailAddtional.value ? 'Add an additional E-mail address' : 'Remove additional E-mail address',
                                            style: TextStylesPoppins.textStyles_13.apply(
                                              color: ColorStyle.darkestBlueSignUp,
                                              fontWeightDelta: 1,
                                            ),
                                          ),
                                        ],
                                      ),
                                      onTap: () {
                                        controller.isEmailAddtional.value = !controller.isEmailAddtional.value;
                                      },
                                    ),

                                    SizedBox(
                                      height: 10,
                                    ),
                                    TitleStar.titleStar(
                                        'How did you hear about us ?',
                                        true
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
                                      onChanged: (text) {},
                                      listValue: [
                                        'Referral',
                                      ],
                                      selectedValue: "Referral",
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    TextFieldCustomOutline(
                                      padding: EffectStyle.padding(10, 10, 10, 10),
                                      hintText: 'Please spcify your answer',
                                      textStyle: TextStylesPoppins.textStyles_14.apply(
                                        color: Colors.black,
                                        fontWeightDelta: 1,
                                      ),
                                      colorFill: ColorStyle.primaryWhite,
                                      colorBoder: Colors.black12,
                                      radiusBorder: 2,
                                    ),
                                    ComponentsSignUp.backContinue('Back to site', () {

                                    }, 'Continue', () {
                                      Get.to(SignUpCorrespondenceAddress(addressType: 'Personal',));
                                    })
                                  ],
                                ),
                              ),
                            ],
                          ),
                          decoration: EffectStyleSignUp.decoration()
                      ),
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
