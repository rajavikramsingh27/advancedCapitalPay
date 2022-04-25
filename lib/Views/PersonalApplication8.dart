import 'package:advanced_capital_pay/Views/PersonalApplication9.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Components/AppBarStyle.dart';
import '../Components/ButtonCustom.dart';
import '../Components/DropdownButtonCustom.dart';
import '../Controllers/PersonalApplication7Controller.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/EffectStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';

class PersonalApplication8 extends StatelessWidget {
  const PersonalApplication8({Key? key}) : super(key: key);

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
                                'Documentation Upload',
                                style: TextStyles.textStyles_20.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
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
                                  color: ColorStyle.blueLight,
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
                              SizedBox(
                                height: 8
                              ),
                              Text('Uploade Documents',
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
                              Container (
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
                                          color: ColorStyle.blueSKY,
                                        ),
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(

                                          borderRadius: BorderRadius.circular(20),
                                          border: Border.all(
                                            width: 1.8,
                                            color: ColorStyle.blueSKY,

                                          ),
                                        ),

                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('Select Files',
                                        style: TextStyles.textStyles_16.apply(
                                          color: ColorStyle.blueSKY,
                                        ),
                                      ),
                                    ],
                                  ),


                                  decoration: BoxDecoration(
                                      color: ColorStyle.primaryWhite,
                                      border: Border.all(
                                        width: 1.8,
                                        color: ColorStyle.blueSKY,

                                      ),
                                      borderRadius: BorderRadius.circular(4)
                                  ),
                                ),
                                height: 150,
                                decoration: BoxDecoration(

                                    border: Border.all(
                                      width: 1.8,
                                      color: ColorStyle.blueSKY,

                                    ),
                                    borderRadius: BorderRadius.circular(4)
                                ),
                              ),
                              SizedBox(
                                height: 22,
                              ),
                              Text('Uploade Documents',
                                style: TextStyles.textStyles_16.apply(
                                  color: ColorStyle.secondryBlack,
                                ),
                              ),

                              SizedBox(
                                height: 10,
                              ),
                              Container (




                                decoration: BoxDecoration(

                                    border: Border.all(
                                      width: 0.3,
                                      color: ColorStyle.secondryBlack,

                                    ),
                                    borderRadius: BorderRadius.circular(4)
                                ),
                              ),

                              SizedBox(
                                height: 24,
                              ),
                              Text(
                                'Documentation',

                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.blueLight,
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
                              Text('Uploade Documents',
                                style: TextStyles.textStyles_16.apply(
                                  color: ColorStyle.secondryBlack,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container (
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
                                          color: ColorStyle.blueSKY,
                                        ),
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(

                                          borderRadius: BorderRadius.circular(20),
                                          border: Border.all(
                                            width: 1.8,
                                            color: ColorStyle.blueSKY,

                                          ),
                                        ),

                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('Select Files',
                                        style: TextStyles.textStyles_16.apply(
                                          color: ColorStyle.blueSKY,
                                        ),
                                      ),
                                    ],
                                  ),


                                  decoration: BoxDecoration(
                                      color: ColorStyle.primaryWhite,
                                      border: Border.all(
                                        width: 1.8,
                                        color: ColorStyle.blueSKY,

                                      ),
                                      borderRadius: BorderRadius.circular(4)
                                  ),
                                ),
                                height: 150,
                                decoration: BoxDecoration(

                                    border: Border.all(
                                      width: 1.8,
                                      color: ColorStyle.blueSKY,

                                    ),
                                    borderRadius: BorderRadius.circular(4)
                                ),
                              ),


                              SizedBox(
                                height: 20,
                              ),
                              Text('Uploade Documents',
                                style: TextStyles.textStyles_16.apply(
                                  color: ColorStyle.secondryBlack,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container (




                                decoration: BoxDecoration(

                                    border: Border.all(
                                      width: 0.3,
                                      color: ColorStyle.secondryBlack,

                                    ),
                                    borderRadius: BorderRadius.circular(4)
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Documentation',

                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.blueLight,
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
                              Text('Uploade Documents',
                                style: TextStyles.textStyles_16.apply(
                                  color: ColorStyle.secondryBlack,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container (
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
                                          color: ColorStyle.blueSKY,
                                        ),
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(

                                          borderRadius: BorderRadius.circular(20),
                                          border: Border.all(
                                            width: 1.8,
                                            color: ColorStyle.blueSKY,

                                          ),
                                        ),

                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('Select Files',
                                        style: TextStyles.textStyles_16.apply(
                                          color: ColorStyle.blueSKY,
                                        ),
                                      ),
                                    ],
                                  ),


                                  decoration: BoxDecoration(
                                      color: ColorStyle.primaryWhite,
                                      border: Border.all(
                                        width: 1.8,
                                        color: ColorStyle.blueSKY,

                                      ),
                                      borderRadius: BorderRadius.circular(4)
                                  ),
                                ),
                                height: 150,
                                decoration: BoxDecoration(

                                    border: Border.all(
                                      width: 1.8,
                                      color: ColorStyle.blueSKY,

                                    ),
                                    borderRadius: BorderRadius.circular(4)
                                ),
                              ),
                              SizedBox(
                                height: 22,
                              ),


                              SizedBox(
                                height: 20,
                              ),
                              Text('Uploade Documents',
                                style: TextStyles.textStyles_16.apply(
                                  color: ColorStyle.secondryBlack,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container (




                                decoration: BoxDecoration(

                                    border: Border.all(
                                      width: 0.3,
                                      color: ColorStyle.secondryBlack,

                                    ),
                                    borderRadius: BorderRadius.circular(4)
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Documentation',

                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.blueLight,
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
                              Text('Uploade Documents',
                                style: TextStyles.textStyles_16.apply(
                                  color: ColorStyle.secondryBlack,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container (
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
                                          color: ColorStyle.blueSKY,
                                        ),
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(

                                          borderRadius: BorderRadius.circular(20),
                                          border: Border.all(
                                            width: 1.8,
                                            color: ColorStyle.blueSKY,

                                          ),
                                        ),

                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('Select Files',
                                        style: TextStyles.textStyles_16.apply(
                                          color: ColorStyle.blueSKY,
                                        ),
                                      ),
                                    ],
                                  ),


                                  decoration: BoxDecoration(
                                      color: ColorStyle.primaryWhite,
                                      border: Border.all(
                                        width: 1.8,
                                        color: ColorStyle.blueSKY,

                                      ),
                                      borderRadius: BorderRadius.circular(4)
                                  ),
                                ),
                                height: 150,
                                decoration: BoxDecoration(

                                    border: Border.all(
                                      width: 1.8,
                                      color: ColorStyle.blueSKY,

                                    ),
                                    borderRadius: BorderRadius.circular(4)
                                ),
                              ),
                              SizedBox(
                                height: 22,
                              ),

                              SizedBox(
                                height: 20,
                              ),
                              Text('Uploade Documents',
                                style: TextStyles.textStyles_16.apply(
                                  color: ColorStyle.secondryBlack,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container (




                                decoration: BoxDecoration(

                                    border: Border.all(
                                      width: 0.3,
                                      color: ColorStyle.secondryBlack,

                                    ),
                                    borderRadius: BorderRadius.circular(4)
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Documentation',

                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.blueLight,
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
                              Text('Uploade Documents',
                                style: TextStyles.textStyles_16.apply(
                                  color: ColorStyle.secondryBlack,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container (
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
                                          color: ColorStyle.blueSKY,
                                        ),
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(

                                          borderRadius: BorderRadius.circular(20),
                                          border: Border.all(
                                            width: 1.8,
                                            color: ColorStyle.blueSKY,

                                          ),
                                        ),

                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('Select Files',
                                        style: TextStyles.textStyles_16.apply(
                                          color: ColorStyle.blueSKY,
                                        ),
                                      ),
                                    ],
                                  ),


                                  decoration: BoxDecoration(
                                      color: ColorStyle.primaryWhite,
                                      border: Border.all(
                                        width: 1.8,
                                        color: ColorStyle.blueSKY,

                                      ),
                                      borderRadius: BorderRadius.circular(4)
                                  ),
                                ),
                                height: 150,
                                decoration: BoxDecoration(

                                    border: Border.all(
                                      width: 1.8,
                                      color: ColorStyle.blueSKY,

                                    ),
                                    borderRadius: BorderRadius.circular(4)
                                ),
                              ),

                              SizedBox(
                                height: 20,
                              ),
                              Text('Uploade Documents',
                                style: TextStyles.textStyles_16.apply(
                                  color: ColorStyle.secondryBlack,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container (




                                decoration: BoxDecoration(

                                    border: Border.all(
                                      width: 0.3,
                                      color: ColorStyle.secondryBlack,

                                    ),
                                    borderRadius: BorderRadius.circular(4)
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),


                              Row(
                                children: [
                                  Expanded(
                                    child: ElevatedButtonCustom(
                                      text: 'Back',
                                      colorBG: ColorStyle.blueSKY,
                                      textStyle: TextStyles.textStyles_16
                                          .apply(color: ColorStyle.primaryWhite, fontWeightDelta: 1),
                                      onTap: () {

                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(child: ElevatedButtonCustom(
                                    text: 'Continue',
                                    colorBG: ColorStyle.grey,
                                    textStyle: TextStyles.textStyles_16
                                        .apply(color: ColorStyle.primaryWhite, fontWeightDelta: 1),
                                    onTap: () {
                                      Get.to(PersonalApplication9());
                                    },
                                  ),),
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),

                            ],

                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border:
                        Border.all(width: 2, color: ColorStyle.blueSKY)),
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
