import '../SignUp/PersonalApplication9.dart';
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



class PersonalApplication8 extends StatelessWidget {
  const PersonalApplication8({Key? key}) : super(key: key);

  selectFiles() {
    return Container(
      alignment: Alignment.topCenter,
      padding: EffectStyle.padding(20, 20, 14, 0),
      child: Container(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Icon(
                Icons.add,
                size: 18,
                color: ColorStyle.darkestBlueSignUp,
              ),
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                borderRadius:
                BorderRadius.circular(20),
                border: Border.all(
                  width: 1.8,
                  color: ColorStyle.darkestBlueSignUp,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Select Files',
              style: TextStyles.textStyles_16.apply(
                color: ColorStyle.darkestBlueSignUp,
              ),
            ),
          ],
        ),
        decoration: EffectStyleSignUp.decoration(ColorStyle.primaryWhite, 4),
      ),
      height: 150,
      decoration: EffectStyleSignUp.decoration(ColorStyle.hex('#F2FCFE'), 4),
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
                  ComponentsSignUp.topProgress(6),
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
                                'Documentation Upload',
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                'Upload the relevant Compliance Documents Below',
                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Documentation',
                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.darkestBlueSignUp,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Account Passport Holders Copy*',
                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Uploade Documents',
                                style: TextStyles.textStyles_16.apply(
                                  color: ColorStyle.secondryBlack,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              selectFiles(),
                              SizedBox(
                                height: 22,
                              ),
                              Text(
                                'Uploade Documents',
                                style: TextStyles.textStyles_16.apply(
                                  color: ColorStyle.secondryBlack,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 0.3,
                                      color: ColorStyle.secondryBlack,
                                    ),
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              SizedBox(
                                height: 24,
                              ),
                              Text(
                                'Documentation',
                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.darkestBlueSignUp,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'Account Passport Proof Of Address*',
                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'Uploade Documents',
                                style: TextStyles.textStyles_16.apply(
                                  color: ColorStyle.secondryBlack,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              selectFiles(),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Uploade Documents',
                                style: TextStyles.textStyles_16.apply(
                                  color: ColorStyle.secondryBlack,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 0.3,
                                      color: ColorStyle.secondryBlack,
                                    ),
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Documentation',
                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.darkestBlueSignUp,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'All Authorized Signatures Passport Copies',
                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'Uploade Documents',
                                style: TextStyles.textStyles_16.apply(
                                  color: ColorStyle.secondryBlack,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              selectFiles(),
                              SizedBox(
                                height: 22,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Uploade Documents',
                                style: TextStyles.textStyles_16.apply(
                                  color: ColorStyle.secondryBlack,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 0.3,
                                      color: ColorStyle.secondryBlack,
                                    ),
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Documentation',
                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.darkestBlueSignUp,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'All Authorized Signatures Passport Address',
                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'Uploade Documents',
                                style: TextStyles.textStyles_16.apply(
                                  color: ColorStyle.secondryBlack,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              selectFiles(),
                              SizedBox(
                                height: 22,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Uploade Documents',
                                style: TextStyles.textStyles_16.apply(
                                  color: ColorStyle.secondryBlack,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 0.3,
                                      color: ColorStyle.secondryBlack,
                                    ),
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Documentation',
                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.darkestBlueSignUp,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'Supporting Documents',
                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'Uploade Documents',
                                style: TextStyles.textStyles_16.apply(
                                  color: ColorStyle.secondryBlack,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              selectFiles(),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Uploade Documents',
                                style: TextStyles.textStyles_16.apply(
                                  color: ColorStyle.secondryBlack,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 0.3,
                                      color: ColorStyle.secondryBlack,
                                    ),
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              ComponentsSignUp.backContinue('Back to site', () {

                              }, 'Continue', () {
                                Get.to(PersonalApplication9());
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
    );
  }
}
