import 'package:advanced_capital_pay/Views/BusinessApplication1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Components/AppBarStyle.dart';
import '../Components/ButtonCustom.dart';
import '../Components/DropdownButtonCustom.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/EffectStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';
class PersonalApplication13 extends StatelessWidget {
  const PersonalApplication13({Key? key}) : super(key: key);

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
                          decoration:
                          BoxDecoration(color: ColorStyle.blueSKY),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          padding: EffectStyle.padding(16, 16, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Text(
                                'You have successfully submitted '
                                    'Your AdvanceCapitalPay On- '
                                    'Boarding Application' ,
                                style: TextStyles.textStyles_24.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 18,
                              ),
                              Text(
                              'AdvanceCapitalPay Compliance Division '
                                  ' will review the information processed within '
                                  ' your application. You will receive an e-mail '
                                  ' shortly to confirm the status of your on-boarding '
                                  ' application. If you would like to find out the status '
                                  ' of your application please do not hesitate to contact '
                                  ' info@AdvanceCapitalPay.com',
                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 22,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButtonCustom(

                                    text: 'ACFERISVO',
                                    colorBG: ColorStyle.blueSKY,
                                    textStyle: TextStyles.textStyles_16
                                        .apply(color: ColorStyle.primaryWhite, fontWeightDelta: 1),
                                    onTap: () {
                                                 Get.to(BusinessApplication1());
                                    },
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),

                                ],
                              ),
                              SizedBox(
                                height: 22,
                              ),
                              Text(
                             'If you need any assistance or would like '
                                 ' to make any alterations towards your submitted '
                                 ' application please feel free to contact our Compliance '
                                 ' Division who will be happy to assist you '
                                 ' Compliance@AdvanceCapitalPay.com ',
                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),




                            ],

                          ),
                        ),

                      ],
                    ),
                    decoration: BoxDecoration(
                        border:
                        Border.all(width: 2, color: ColorStyle.blueSKY)),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    'Please follow the instructions provided throughout '
                        ' the application to apply to on-board as an AdvanceCapitalClient. '
                        ' If you have previously started an application.',

                    style: TextStyles.textStyles_14.apply(
                      color: ColorStyle.secondryBlack,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  InkWell(
                    child:  Text(
                      'Click Here',
                      style: TextStyles.textStyles_14.apply(
                        color: ColorStyle.blueSKY,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    onTap: (){},
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
