import 'package:advanced_capital_pay/Components/AppBarStyle.dart';
import 'package:advanced_capital_pay/Components/ComponentsSignUp.dart';
import 'package:advanced_capital_pay/Controllers/SignUp/SignUpAccountTypeController.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:advanced_capital_pay/Utils/Constants.dart';
import 'package:advanced_capital_pay/Views/Auth/EffectStyleSignUp.dart';
import 'package:advanced_capital_pay/Views/Auth/SignUpBusinessApplication1.dart';

import '../Auth/SignUpPersonalAccountIntentions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SignUpAccountType extends StatelessWidget {
  SignUpAccountType({Key? key}) : super(key: key);

  final controller = Get.put(SignUpAccountTypeController());

  planDetails() {
    return Column(
      children: [
        SizedBox(
          height: 26,
        ),
        Row(
          children: [
            ComponentsSignUp.check(),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text(
                'Details required through On-Boarding Application Process',
                style: TextStylesPoppins.textStyles_12.apply(
                  color: ColorStyle.secondryBlack,
                  // fontWeightDelta: 1,
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 4,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ComponentsSignUp.check(),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text(
                'Original KYC Documentation required with Offical English Versions (Certified Translations)',
                style: TextStylesPoppins.textStyles_12.apply(
                  color: ColorStyle.secondryBlack,
                  // fontWeightDelta: 1,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 4,
        ),
        Row(
          children: [
            ComponentsSignUp.check(),
            SizedBox(
              width: 10,
            ),
            Text(
              'Facial Verification',
              style: TextStylesPoppins.textStyles_12.apply(
                color: ColorStyle.secondryBlack,
                // fontWeightDelta: 1,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          children: [
            ComponentsSignUp.check(),
            SizedBox(
              width: 10,
            ),
            Text(
              'Detailed Source of Wealth',
              style: TextStylesPoppins.textStyles_12.apply(
                color: ColorStyle.secondryBlack,
                // fontWeightDelta: 1,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          children: [
            ComponentsSignUp.check(),
            SizedBox(
              width: 10,
            ),
            Text(
              'Source of Funds',
              style: TextStylesPoppins.textStyles_12.apply(
                color: ColorStyle.secondryBlack,
                // fontWeightDelta: 1,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          children: [
            ComponentsSignUp.check(),
            SizedBox(
              width: 10,
            ),
            Text(
              'Purpose of Account Opening',
              style: TextStylesPoppins.textStyles_12.apply(
                color: ColorStyle.secondryBlack,
                // fontWeightDelta: 1,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          children: [
            ComponentsSignUp.check(),
            SizedBox(
              width: 10,
            ),
            Text(
              'English Signature',
              style: TextStylesPoppins.textStyles_12.apply(
                color: ColorStyle.secondryBlack,
                // fontWeightDelta: 1,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          children: [
            ComponentsSignUp.check(),
            SizedBox(
              width: 10,
            ),
            Text(
              'Additional Details',
              style: TextStylesPoppins.textStyles_12.apply(
                color: ColorStyle.secondryBlack,
                // fontWeightDelta: 1,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          padding: EdgeInsets.only(
              left: 4,
              top: 10,
              bottom: 10
          ),
          decoration: BoxDecoration(
            color: ColorStyle.primaryWhite,
            borderRadius: BorderRadius.circular(2),
            border: Border.all(
              color: ColorStyle.grey,
              width: 0.6
            )
          ),
          child: Column(
            children: [
              InkWell(
                child: Row(
                  children: [
                    Expanded(child: Row(
                      children: [
                        Image.asset(
                          controller.arrPlanIcons[controller.indexPlan.value],
                          height: 54,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Text(
                              controller.arrPlanTitle[controller.indexPlan.value],
                              style: TextStylesPoppins.textStyles_16
                                  .apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              controller.arrPlanPrice[controller.indexPlan.value],
                              style: TextStylesPoppins.textStyles_14
                                  .apply(
                                color: ColorStyle.secondryBlack,
                                // fontWeightDelta: 2
                              ),
                            ),
                          ],
                        ))
                      ],
                    )),
                    Icon(Icons.arrow_drop_down, color: ColorStyle.grey, size: 30,)
                  ],
                ),
                onTap: () {
                  controller.isDropDown.value = !controller.isDropDown.value;
                },
              ),
              if (controller.isDropDown.value)
              Container(
                height: 0.6,
                margin: EffectStyle.padding(0, 0, 8, 0),
                color: ColorStyle.grey,
              ),
              if (controller.isDropDown.value)
              SizedBox(height: 8,),
              if (controller.isDropDown.value)
              ListView.separated(
                  shrinkWrap: true,
                  itemCount: controller.arrPlanIcons.length,
                  physics: NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 16,);
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      child: Row(
                        children: [
                          Image.asset(
                            controller.arrPlanIcons[index],
                            height: 54,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Expanded(child: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              Text(
                                controller.arrPlanTitle[index],
                                style: TextStylesPoppins.textStyles_16
                                    .apply(
                                    color: ColorStyle.secondryBlack,
                                    fontWeightDelta: 1
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                controller.arrPlanPrice[index],
                                style: TextStylesPoppins.textStyles_14
                                    .apply(
                                  color: ColorStyle.secondryBlack,
                                  // fontWeightDelta: 2
                                ),
                              ),
                            ],
                          ))
                        ],
                      ),
                      onTap: () {
                        controller.indexPlan.value = index;
                        controller.isDropDown.value = false;
                      },
                    );
                  }),
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
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
            body: GetBuilder<SignUpAccountTypeController>(
              init: SignUpAccountTypeController(),
              initState: (state) {
                controller.reset();
              },
              builder: (auth) {
                return Obx(() => SingleChildScrollView(
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
                          ComponentsSignUp.topProgress('18'),
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
                                        ComponentsSignUp.title(
                                          'What type of account would you Like to apply for?',
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Text(
                                          'Please select from below which best describes  the application you wish to apply for. ',
                                          style: TextStylesPoppins.textStyles_14
                                              .apply(
                                            color: ColorStyle.secondryBlack,
                                            // fontWeightDelta: 0,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 28,
                                        ),
                                        InkWell(
                                            child: Container(
                                              padding: EffectStyle.padding(
                                                  16, 16, 0, 16),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 40,
                                                  ),
                                                  Container(
                                                    alignment: Alignment.center,
                                                    child: Image.asset(
                                                      ImageStyle.vector,
                                                      height: 60,
                                                      color: ColorStyle
                                                          .secondryBlack,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  Text(
                                                    'Private Individual',
                                                    style: TextStylesPoppins
                                                        .textStyles_20
                                                        .apply(
                                                      color: ColorStyle
                                                          .secondryBlack,
                                                      fontWeightDelta: 1,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 4,
                                                  ),
                                                  Text(
                                                    'I am private individual',
                                                    style: TextStylesPoppins
                                                        .textStyles_14
                                                        .apply(
                                                      color: ColorStyle
                                                          .secondryBlack,
                                                      // fontWeightDelta: 1,
                                                    ),
                                                  ),
                                                  if (isPrivate.value)
                                                    planDetails(),
                                                ],
                                              ),
                                              decoration:
                                                  EffectStyleSignUp.decoration(
                                                      ColorStyle.hex('#F2FCFE'),
                                                      8),
                                            ),
                                            onTap: () {
                                              isPrivate.value = true;
                                            }),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        InkWell(
                                          child: Container(
                                            padding: EffectStyle.padding(
                                                16, 16, 0, 16),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: 40,
                                                ),
                                                Container(
                                                  alignment: Alignment.center,
                                                  child: Image.asset(
                                                    ImageStyle.vector,
                                                    height: 60,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Text(
                                                  'Business',
                                                  style: TextStylesPoppins
                                                      .textStyles_20
                                                      .apply(
                                                    color: ColorStyle
                                                        .secondryBlack,
                                                    fontWeightDelta: 1,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 4,
                                                ),
                                                Text(
                                                  'I am a business(Limited, Pte, Ltd, LLC, AG Trust, Corporated, Partnership, sole Trader or other)',
                                                  style: TextStylesPoppins
                                                      .textStyles_14
                                                      .apply(
                                                    color: ColorStyle
                                                        .secondryBlack,
                                                    // fontWeightDelta: 1,
                                                  ),
                                                ),
                                                if (!isPrivate.value)
                                                  planDetails(),
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                border: Border.all(
                                                  width: 1,
                                                  color: Colors.grey,
                                                )),
                                          ),
                                          onTap: () {
                                            isPrivate.value = false;
                                          },
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Container(
                                          padding:
                                              EffectStyle.padding(16, 16, 0, 0),
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Text(
                                                'Advance Capital Resrticted Country List',
                                                style: TextStylesPoppins
                                                    .textStyles_20
                                                    .apply(
                                                  color:
                                                      ColorStyle.secondryBlack,
                                                  fontWeightDelta: 1,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 18,
                                              ),
                                              Text(
                                                'Advance Capital follows and adheres to strict guidelines outlined by the FAFF which provides '
                                                ' restrictions for selected countries. Please be aware restricted countries outlined by the FATF'
                                                ' guidlince we are unable to open an account for or to allow transaction to occure.',
                                                style: TextStylesPoppins
                                                    .textStyles_14
                                                    .apply(
                                                  color:
                                                      ColorStyle.secondryBlack,
                                                  // fontWeightDelta: 1,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 14,
                                              ),
                                            ],
                                          ),
                                        ),
                                        ComponentsSignUp.backContinue(
                                            'Back to site', () {}, 'Continue',
                                            () {
                                          if (isPrivate.value) {
                                            Get.to(
                                                SignUpPersonalAccountIntentions());
                                          } else {
                                            Get.to(
                                                SignUpBusinessApplication1());
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
                    ));
              },
            )),
      ],
    );
  }
}
