import '../SignUp/PersonalApplication6.dart';
import '../SignUp/PersonalApplication7.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Components/AppBarStyle.dart';
import '../../Components/ButtonCustom.dart';
import '../../Styles/ColorStyle.dart';
import '../../Styles/EffectStyle.dart';
import '../../Styles/ImageStyle.dart';
import '../../Styles/TextStyles.dart';
import '../SignUp/EffectStyleSignUp.dart';
import '../../Components/ComponentsSignUp.dart';

class PersonalApplication5 extends StatelessWidget {
  const PersonalApplication5({Key? key}) : super(key: key);

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
                  ComponentsSignUp.topProgress(4),
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
                                ComponentsSignUp.title(
                                  'Account authorized signatures',
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  'An authorized supervisor has been appointed to their position '
                                  ' by authorized officials of the company who have been given '
                                  ' the responsibility to act on behalf of the company and provide '
                                  ' instructions for payments and submit any documentation to Advance Capital. ',
                                  style: TextStyles.textStyles_14.apply(
                                    color: ColorStyle.secondryBlack,
                                    fontWeightDelta: 1,
                                  ),
                                ),
                                SizedBox(
                                  height: 28,
                                ),
                                Container(
                                    padding:
                                        EffectStyle.padding(19, 16, 10, 10),
                                    width: MediaQuery.of(context).size.width,
                                    child: Text(
                                      'Yes I confirm it will be me',
                                      style: TextStyles.textStyles_20.apply(
                                        color: ColorStyle.secondryBlack,
                                        fontWeightDelta: 1,
                                      ),
                                    ),
                                    decoration: EffectStyleSignUp.decoration(
                                        Colors.transparent, 2)),
                                SizedBox(
                                  height: 12,
                                ),
                                Container(
                                    padding: EffectStyle.padding(16, 16, 0, 0),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          'Additional Authorized Signature to the Account',
                                          style: TextStyles.textStyles_20.apply(
                                            color: ColorStyle.secondryBlack,
                                            fontWeightDelta: 1,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          'I will enter the information for an additional person who '
                                          ' will be responsible for providing payment and any '
                                          ' documentation required to Advance Capital. By adding '
                                          ' an Authorized signature to the account, you can confirm that '
                                          ' each person has the authorized to act on behalf of the company.',
                                          style: TextStyles.textStyles_14.apply(
                                            color: ColorStyle.secondryBlack,
                                            fontWeightDelta: 1,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 14,
                                        ),
                                      ],
                                    ),
                                    decoration: EffectStyleSignUp.decoration(
                                        Colors.transparent, 2)),
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
                                              style: TextStyles.textStyles_12
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
                                              style: TextStyles.textStyles_12
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
                                              style: TextStyles.textStyles_12
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
                                        style: TextStyles.textStyles_12.apply(
                                          color: ColorStyle.darkestBlueSignUp,
                                          fontWeightDelta: 2,
                                        ),
                                      ),
                                      onTap: () {
                                        PersonalApplication6
                                            .personalApplication6();
                                      },
                                    ),
                                  ],
                                ),
                                ComponentsSignUp.backContinue(
                                    'Back to site', () {}, 'Continue', () {
                                  Get.to(PersonalApplication7());
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
    );
  }
}
