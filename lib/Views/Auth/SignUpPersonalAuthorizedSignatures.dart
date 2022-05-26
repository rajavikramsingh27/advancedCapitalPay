
import 'package:advanced_capital_pay/Components/AppBarStyle.dart';
import 'package:advanced_capital_pay/Components/ComponentsSignUp.dart';
import 'package:advanced_capital_pay/Controllers/SignUp/SignUpAuthorizedSignaturesController.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:advanced_capital_pay/Views/Auth/EffectStyleSignUp.dart';
import 'package:advanced_capital_pay/Views/Auth/SignUpPersonalEditSignature.dart';
import 'package:advanced_capital_pay/Views/Auth/SignUpPersonalOriginOfWealth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class SignUpPersonalAuthorizedSignatures extends StatelessWidget {
  final String? confirmMeDetails;

  SignUpPersonalAuthorizedSignatures({Key? key, this.confirmMeDetails}) : super(key: key);
  final controller = Get.put(SignUpAuthorizedSignaturesController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: SignUpAuthorizedSignaturesController(),
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
                      ComponentsSignUp.topProgress('46'),
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
                                      'Account authorized signatures',
                                      style: TextStylesPoppins.textStyles_20.apply(
                                        color: ColorStyle.secondryBlack,
                                        fontWeightDelta: 0,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Text(
                                      'An authorized supervisor has been appointed to their position '
                                          ' by authorized officials of the company who have been given '
                                          ' the responsibility to act on behalf of the company and provide '
                                          ' instructions for payments and submit any documentation to Advance Capital. ',
                                      style: TextStylesPoppins.textStyles_14.apply(
                                        color: ColorStyle.secondryBlack,
                                        // fontWeightDelta: 1,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 28,
                                    ),
                                    InkWell(
                                      child: Container(
                                          padding:
                                          EffectStyle.padding(19, 16, 14, 14),
                                          width: MediaQuery.of(context).size.width,
                                          child: Column(
                                            children: [
                                              Text(
                                                'This field is required',
                                                style: TextStylesPoppins.textStyles_12.apply(
                                                  color: Colors.red,
                                                  // fontWeightDelta: 1,
                                                ),
                                              ),
                                              Text(
                                                'Yes I confirm it will be me',
                                                style: TextStylesPoppins.textStyles_20.apply(
                                                  color: ColorStyle.secondryBlack,
                                                  // fontWeightDelta: 1,
                                                ),
                                              ),

                                              if (confirmMeDetails != null)
                                                SizedBox(height: 6,),
                                              if (confirmMeDetails != null)
                                                Text(
                                                  confirmMeDetails!,
                                                  style: TextStylesPoppins.textStyles_14.apply(
                                                    color: ColorStyle.secondryBlack,
                                                    fontWeightDelta: 0,
                                                  ),
                                                ),
                                            ],
                                          ),
                                          decoration: EffectStyleSignUp.decoration(
                                              Colors.transparent, 2)),
                                      onTap: () {
                                        controller.isConfirm.value = true;
                                        SignUpPersonalEditSignature
                                            .personalApplication6();
                                      },
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    InkWell(
                                      child: Container(
                                          padding: EffectStyle.padding(16, 16, 0, 0),
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Text(
                                                'Additional Authorized Signature to the Account',
                                                textAlign: TextAlign.center,
                                                style: TextStylesPoppins.textStyles_20.apply(
                                                  color: controller.isConfirm.value ? ColorStyle.secondryBlack : ColorStyle.grey,
                                                  // fontWeightDelta: 1,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                'I will enter the information for an additional person who '
                                                    ' will be responsible for providing payment and any '
                                                    ' documentation required to Advance Capital. By adding '
                                                    ' an Authorized signature to the account, you can confirm that '
                                                    ' each person has the authorized to act on behalf of the company.',
                                                textAlign: TextAlign.center,
                                                style: TextStylesPoppins.textStyles_14.apply(
                                                  color: controller.isConfirm.value ? ColorStyle.secondryBlack : ColorStyle.grey,
                                                  // fontWeightDelta: 1,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 14,
                                              ),
                                            ],
                                          ),
                                          decoration: EffectStyleSignUp.decoration(
                                              Colors.transparent, 2)),
                                      onTap: () {

                                      },
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.cancel_outlined,
                                                  size: 23,
                                                  color: ColorStyle.grey,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  'Company director',
                                                  style: TextStylesPoppins.textStyles_12
                                                      .apply(
                                                    color: ColorStyle.secondryBlack,
                                                    fontWeightDelta: 1,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.cancel_outlined,
                                                  size: 23,
                                                  color: ColorStyle.grey,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  'Shareholder (10% or more)',
                                                  style: TextStylesPoppins.textStyles_12
                                                      .apply(
                                                    color: ColorStyle.secondryBlack,
                                                    fontWeightDelta: 1,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                ComponentsSignUp.check(),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  'Authorized Signature',
                                                  style: TextStylesPoppins.textStyles_12
                                                      .apply(
                                                    color: ColorStyle.secondryBlack,
                                                    fontWeightDelta: 1,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                          ],
                                        ),
                                        InkWell(
                                          child: Text(
                                            'View Details',
                                            style: TextStylesPoppins.textStyles_12.apply(
                                              color: ColorStyle.darkestBlueSignUp,
                                              fontWeightDelta: 2,
                                            ),
                                          ),
                                          onTap: () {
                                            SignUpPersonalEditSignature
                                                .personalApplication6();
                                          },
                                        ),
                                      ],
                                    ),
                                    ComponentsSignUp.backContinue(
                                        'Back to site', () {}, 'Continue', () {
                                      Get.to(SignUpPersonalOriginOfWealth());
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
