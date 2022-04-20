import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:flutter/material.dart';

import '../Components/AppBarStyle.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/EffectStyle.dart';

class PersonalApplication1 extends StatelessWidget {
  const PersonalApplication1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(ImageStyle.bg_1, width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height,fit: BoxFit.cover,),
        Scaffold(
            appBar: AppBarStyleStatusBar(),
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              padding: EffectStyle.padding(16, 16, 0, 0),
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
                  Row(
                    children: [
                      Text(
                        'Your progress',
                        style: TextStyles.textStyles_14.apply(
                          color: ColorStyle.secondryBlack,
                          fontWeightDelta: 1,
                        ),
                      ),
                      Text(
                        ' 0%',
                        style: TextStyles.textStyles_14.apply(
                          color: ColorStyle.blueLight,
                          fontWeightDelta: 1,
                        ),
                      ),
                      Text(
                        ' complete',
                        style: TextStyles.textStyles_14.apply(
                          color: ColorStyle.secondryBlack,
                          fontWeightDelta: 1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 4,
                      width: 14,
                      decoration: BoxDecoration(color: ColorStyle.blueLight),
                    ),
                    height: 4,
                    decoration: BoxDecoration(color: Colors.black12),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
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
                          decoration: BoxDecoration(color: ColorStyle.blueLight),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          // color: Colors.red,

                          child: Text(
                            'Welcome to Advance Capital'
                            'On-boarding Application Form',
                            style: TextStyles.textStyles_16.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 1,
                            ),
                          ),
                          alignment: Alignment.center,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          // color: Colors.red,

                          child: Text(
                            'Please complete the sections below '
                            'for the client profile Information, '
                            'we can only accept answers provided '
                            'in English. If you required any '
                            'assistance throughout the application '
                            'process simply click the Live Help Button '
                            'where one of our Customer Support Representatives '
                            'will be happy to assist you with any queries',
                            style: TextStyles.textStyles_14.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 1,
                            ),
                          ),
                          alignment: Alignment.center,
                        ),
                        SizedBox(
                          height: 28,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Your Name',
                            style: TextStyles.textStyles_14.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 1,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        TextField(
                          // obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Mr.',
                            labelStyle: TextStyles.textStyles_14.apply(
                              color: Colors.grey,
                              fontWeightDelta: 1,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        TextField(
                          // obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'First Name',
                            labelStyle: TextStyles.textStyles_14.apply(
                              color: Colors.grey,
                              fontWeightDelta: 1,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        TextField(
                          // obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Middle Name',
                            labelStyle: TextStyles.textStyles_14.apply(
                              color: Colors.grey,
                              fontWeightDelta: 1,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        TextField(
                          // obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Last Name',
                            labelStyle: TextStyles.textStyles_14.apply(
                              color: Colors.grey,
                              fontWeightDelta: 1,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Country of Birth',
                            style: TextStyles.textStyles_14.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 1,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 56,
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: [
                              Image.asset(
                                ImageStyle.Flag,
                                height: 22,
                              ),
                              Text(
                                'Country of Birth',
                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            border: Border.all(
                              width: 1,
                              color: Colors.grey
                            )
                          ),
                        ),

                      ],
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: ColorStyle.blueLight)),
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
