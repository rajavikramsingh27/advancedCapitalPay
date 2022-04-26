import '../../Components/ListViewGuidlinesTerms.dart';
import '../SignUp/PersonalApplication12.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../Components/AppBarStyle.dart';
import '../../Components/ButtonCustom.dart';
import '../../Styles/ColorStyle.dart';
import '../../Styles/EffectStyle.dart';
import '../../Styles/ImageStyle.dart';
import '../../Styles/TextStyles.dart';
import '../SignUp/EffectStyleSignUp.dart';
import '../SignUp/ComponentsSignUp.dart';



class PersonalApplication11 extends StatelessWidget {
  const PersonalApplication11({Key? key}) : super(key: key);

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
                  ComponentsSignUp.topProgress(9),
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
                            style: TextStyles.textStyles_14.apply(
                              color: ColorStyle.primaryWhite,
                              fontWeightDelta: 1,
                            ),
                          ),
                          alignment: Alignment.center,
                          width: 102,
                          height: 43,
                            decoration: EffectStyleSignUp.decoration(ColorStyle.darkestBlueSignUp)
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          padding: EffectStyle.padding(16, 16, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ComponentsSignUp.title(
                                'AdvanceCapitalPay Client Declaration Form',
                              ),

                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                'In submitting this Advance Capital '
                                ' Pay ApplicationForm, I/We fully understand '
                                ' and agree for and on behalf that.',
                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              ListViewGuidlinesTerms(
                                title: '',
                                arrList: [
                                 'We have the full authority to submit this application and to on-board as a client with AdvanceCapitalPay and enter into the associated terms and conditions.'
                                ],
                              ),
                              ListViewGuidlinesTerms(
                                title: '',
                                arrList: [
                                  'We have provide all information and documentation in this application to the best of my/our knowledge and confirm that it is true and complete.'
                                ],
                              ),
                              ListViewGuidlinesTerms(
                                title: '',
                                arrList: [
                                  'We have read, understood and fully agreed to be bound at all times by applicable Terms and Conditions, Privacy Policy, Acceptable Use Policy Electronic Disclosures and consents as published within my AdvanceCapitalPay Account and on the AdvanceCapitalPay Website https://www.advancecapitalpay.com '
                                ],
                              ),
                              ListViewGuidlinesTerms(
                                title: '',
                                arrList: [
                                  'We declare that the detailed Origin of Wealth and Funds is complete true. I/We agree to provide any further information or documentation evidence upon request for any aspects outlined within or out of this application process.'
                                ],
                              ),

                              SizedBox(height: 30,),
                              Container(
                                decoration: EffectStyleSignUp.decoration(),
                                padding: EffectStyle.padding(10, 10, 10, 10),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(Icons.radio_button_off, size: 28, color: ColorStyle.darkestBlueSignUp,),
                                    SizedBox(width: 10,),
                                    Expanded(child: Text(
                                      'Click here to indicate that you have read and agree to the terms of Advance Capital Agreement',
                                      style: TextStyles.textStyles_14.apply(
                                        color: ColorStyle.secondryBlack,
                                        fontWeightDelta: 0,
                                      ),
                                    ),)
                                  ],
                                ),
                              ),
                              ComponentsSignUp.backContinue('Back to site', () {
                                
                              }, 'Continue', () {
                                Get.to(PersonalApplication12());
                              }),

                              // SizedBox(height: 30,),
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
    );
  }
}
