import 'package:advanced_capital_pay/Views/PersonalApplication6.dart';
import 'package:advanced_capital_pay/Views/PersonalApplication8.dart';
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

class PersonalApplication7 extends StatelessWidget {
  const PersonalApplication7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(PersonalApplication7Controller());
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
                                'Origin of Wealth/Funds',
                                style: TextStyles.textStyles_20.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                              'Clients are required to provide us with detailed information where funds and wealth has come from',

                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                'Please select multiple options below if applicable which best describes where you funds and wealth come from.',

                                style: TextStyles.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 1,
                                ),
                              ),

                              SizedBox(
                                height: 12,
                              ),
                              GridView.builder(
                                  itemCount: controller.chooseOriginofWealth.length,
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 10,
                                    mainAxisSpacing: 10,
                                    mainAxisExtent: 120,
                                  ),
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Container(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Container(

                                            child: Icon(
                                              Icons.check,
                                              size: 18,
                                              color: ColorStyle.primaryWhite,
                                            ),
                                            height: 25,
                                            width: 25,
                                            decoration: BoxDecoration(
                                              color: ColorStyle.green,
                                              borderRadius: BorderRadius.circular(20),

                                            ),

                                          ),
                                          SizedBox(height: 8,),
                                         Container(

                                           child:  Text(
                                             controller.chooseOriginofWealth[index],
                                             style: TextStyles.textStyles_12.apply(
                                               color: ColorStyle.secondryBlack,
                                             ),
                                             textAlign: TextAlign.center,
                                           ),
                                         ),

                                        ],
                                      ),
                                      decoration: BoxDecoration(  color: ColorStyle.primaryWhite,
                                          borderRadius:
                                          BorderRadius.circular(10),
                                          border: Border.all(
                                              width: 1,
                                              color: Colors.grey
                                          )

                                      ),
                                    );
                                  }),
                              SizedBox(
                                height: 18,
                              ),
                              Text('Origin of Funds/Wealth Explanation :',
                                style: TextStyles.textStyles_16.apply(
                                  color: ColorStyle.secondryBlack,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container (
                                child: TextField (
                                  decoration: InputDecoration(

                                      border: InputBorder.none,
                                      // labelText: 'Enter Name',
                                      // hintText: 'Enter Your Name'
                                  ),
                                ) ,
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
                                height: 18,
                              ),
                              Text('Upload Bank Statement',
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
                                height: 22,
                              ),
                              Text('Additional DocuMentation',
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
                                height: 22,
                              ),
                              Text('Advance Capital SOF/SOW Accepted Guidelines',
                                style: TextStyles.textStyles_16.apply(
                                  color: ColorStyle.secondryBlack,
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),

                              Row(
                                children: [
                                  Container(

                                    child: Icon(
                                      Icons.check,
                                      size: 18,
                                      color: ColorStyle.primaryWhite,
                                    ),
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                      color: ColorStyle.blueLight,
                                      borderRadius: BorderRadius.circular(20),

                                    ),

                                  ),
                                  SizedBox(width: 10,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Details required through On-Boarding ',
                                        style: TextStyles.textStyles_12.apply(
                                          color: ColorStyle.secondryBlack,
                                          fontWeightDelta: 1,
                                        ),
                                      ),
                                      Text(
                                        ' Application Process',
                                        style: TextStyles.textStyles_12.apply(
                                          color: ColorStyle.secondryBlack,
                                          fontWeightDelta: 1,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Row(
                                children: [
                                  Container(

                                    child: Icon(
                                      Icons.check,
                                      size: 18,
                                      color: ColorStyle.primaryWhite,
                                    ),
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                      color: ColorStyle.blueLight,
                                      borderRadius: BorderRadius.circular(20),

                                    ),

                                  ),
                                  SizedBox(width: 10,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Original KYC Documentation required',
                                        style: TextStyles.textStyles_12.apply(
                                          color: ColorStyle.secondryBlack,
                                          fontWeightDelta: 1,
                                        ),
                                      ),
                                      Text(
                                        'with Offical English Versions',
                                        style: TextStyles.textStyles_12.apply(
                                          color: ColorStyle.secondryBlack,
                                          fontWeightDelta: 1,
                                        ),
                                      ),
                                      Text(
                                        '(Certified Translations)',
                                        style: TextStyles.textStyles_12.apply(
                                          color: ColorStyle.secondryBlack,
                                          fontWeightDelta: 1,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Row(
                                children: [
                                  Container(

                                    child: Icon(
                                      Icons.check,
                                      size: 18,
                                      color: ColorStyle.primaryWhite,
                                    ),
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                      color: ColorStyle.blueLight,
                                      borderRadius: BorderRadius.circular(20),

                                    ),

                                  ),
                                  SizedBox(width: 10,),
                                  Text(
                                    'Facial Verification',
                                    style: TextStyles.textStyles_12.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 1,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  Container(

                                    child: Icon(
                                      Icons.check,
                                      size: 18,
                                      color: ColorStyle.primaryWhite,
                                    ),
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                      color: ColorStyle.blueLight,
                                      borderRadius: BorderRadius.circular(20),

                                    ),

                                  ),
                                  SizedBox(width: 10,),
                                  Text(
                                    'Detailed Source of Wealth',
                                    style: TextStyles.textStyles_12.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 1,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  Container(

                                    child: Icon(
                                      Icons.check,
                                      size: 18,
                                      color: ColorStyle.primaryWhite,
                                    ),
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                      color: ColorStyle.blueLight,
                                      borderRadius: BorderRadius.circular(20),

                                    ),

                                  ),
                                  SizedBox(width: 10,),
                                  Text(
                                    'Source of Funds',
                                    style: TextStyles.textStyles_12.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 1,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  Container(

                                    child: Icon(
                                      Icons.check,
                                      size: 18,
                                      color: ColorStyle.primaryWhite,
                                    ),
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                      color: ColorStyle.blueLight,
                                      borderRadius: BorderRadius.circular(20),

                                    ),

                                  ),
                                  SizedBox(width: 10,),
                                  Text(
                                    'Purpose of Account Opening',
                                    style: TextStyles.textStyles_12.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 1,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  Container(

                                    child: Icon(
                                      Icons.check,
                                      size: 18,
                                      color: ColorStyle.primaryWhite,
                                    ),
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                      color: ColorStyle.blueLight,
                                      borderRadius: BorderRadius.circular(20),

                                    ),

                                  ),
                                  SizedBox(width: 10,),
                                  Text(
                                    'English Signature',
                                    style: TextStyles.textStyles_12.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 1,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  Container(

                                    child: Icon(
                                      Icons.check,
                                      size: 18,
                                      color: ColorStyle.primaryWhite,
                                    ),
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                      color: ColorStyle.blueLight,
                                      borderRadius: BorderRadius.circular(20),

                                    ),

                                  ),
                                  SizedBox(width: 10,),
                                  Text(
                                    'Additional Details',
                                    style: TextStyles.textStyles_12.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 1,
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(
                                height: 22,
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
                                    text: 'Submit',
                                    colorBG: ColorStyle.blueSKY,
                                    textStyle: TextStyles.textStyles_16
                                        .apply(color: ColorStyle.primaryWhite, fontWeightDelta: 1),
                                    onTap: () {
                                      Get.to(PersonalApplication8());
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
