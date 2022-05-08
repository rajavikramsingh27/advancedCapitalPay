import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../Controllers/SignUp/SignUpPersonalFacialVerificationController.dart';

import '../SignUp/SignUpPersonalLoginInformation.dart';

import '../../Components/AppBarStyle.dart';
import '../../Components/ButtonCustom.dart';
import '../../Styles/ColorStyle.dart';
import '../../Styles/EffectStyle.dart';
import '../../Styles/ImageStyle.dart';
import '../../Styles/TextStyles.dart';
import '../SignUp/EffectStyleSignUp.dart';
import '../../Components/ComponentsSignUp.dart';

class SignUpPersonalFacialVerification extends StatelessWidget {
  SignUpPersonalFacialVerification({Key? key}) : super(key: key);

  final controller = Get.put(SignUpPersonalFacialVerificationController());

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
            body: GetBuilder(
              init: SignUpPersonalFacialVerificationController(),
              initState: (state) {
                controller.reset();
              },
              builder: (auth) {
                return Obx(()=>SingleChildScrollView(
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
                      ComponentsSignUp.topProgress('90'),
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
                                      'Facial Verification Process',
                                      style: TextStylesPoppins.textStyles_20.apply(
                                        color: ColorStyle.secondryBlack,
                                        // fontWeightDelta: 1,
                                      ),
                                    ),
                                    SizedBox(height: 16,),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: ColorStyle.primaryWhite,
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 40,
                                          ),
                                          Text(
                                            "Let's Get Your Verified",
                                            style: TextStylesPoppins
                                                .textStyles_14
                                                .apply(
                                                color:
                                                ColorStyle.hex('#1D75BD'),
                                                fontWeightDelta: 1
                                            ),
                                          ),
                                          SizedBox(
                                            height: 14,
                                          ),
                                          Container(
                                            padding: EffectStyle.padding(30, 30, 0, 0),
                                            child: Text(
                                              'Before you start please prepare your '
                                                  ' identity  document and make sure it is '
                                                  ' valid. We also '
                                                  ' require to agree to '
                                                  ' your processing of your  personal'
                                                  '  data.',
                                              textAlign: TextAlign.center,
                                              style: TextStylesPoppins
                                                  .textStyles_14
                                                  .apply(
                                                  color: ColorStyle.secondryBlack,
                                                  fontWeightDelta: 1
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 40,
                                          ),
                                          Container(
                                              padding: EffectStyle.padding(30, 30, 0, 0),
                                              child: InkWell(
                                                child: Row(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Icon(
                                                      controller.isAgree.value ? Icons.check_box : Icons.check_box_outline_blank_sharp,
                                                      color: ColorStyle.darkestBlueSignUp, size: 26,),
                                                    SizedBox(width: 6,),
                                                    Expanded(child: Column(
                                                      children: [
                                                        Text.rich(
                                                          TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                text: 'I agree to the processing of my personal data, as described in ',
                                                                style: TextStylesPoppins.textStyles_12.apply(
                                                                    color: ColorStyle.secondryBlack,
                                                                    fontWeightDelta: 1
                                                                ),
                                                              ),
                                                              TextSpan(
                                                                text: 'the Consent to Personal Data Processing.',
                                                                style: TextStylesPoppins.textStyles_12.apply(
                                                                    color: Colors.red,
                                                                    fontWeightDelta: 1
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ))
                                                  ],
                                                ),
                                                onTap: () {
                                                  controller.isAgree.value = !controller.isAgree.value;
                                                },
                                              )
                                          ),
                                          SizedBox(
                                            height: 40,
                                          ),
                                          ElevatedButtonCustom(
                                            text: 'Next',
                                            textStyle: TextStylesPoppins
                                                .textStyles_14
                                                .apply(
                                                color: ColorStyle
                                                    .primaryWhite,
                                                fontWeightDelta: 2),
                                            colorBG: ColorStyle.secondryBlack,
                                            width: 160,
                                            height: 44,
                                            radiusBorder: 2,
                                            onTap: () {},
                                          ),
                                          SizedBox(
                                            height: 40,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 16,),

                                    ComponentsSignUp.backContinue(
                                        'Back', () {}, 'Continue', () {
                                      Get.to(SignUpPersonalLoginInformation());
                                    })
                                  ],
                                ),
                              ),
                            ],
                          ),
                          decoration: EffectStyleSignUp.decoration()),
                      SizedBox(
                        height: 18,
                      ),

                      ComponentsSignUp.bottomUI(),

                      SizedBox(
                        height: 8,
                      ),
                    ],
                  ),
                ));
              },
            )),
      ],
    );
  }
}
