import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Components/AppBarStyle.dart';
import '../Components/BackgroundImage.dart';
import '../Components/ButtonCustom.dart';
import '../Components/CountryPicker.dart';
import '../Components/NewBeneficiarySummary.dart';
import '../Components/TextFieldCustom.dart';
import '../Controllers/BeneficiaryInternationalController.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';

class FromAccount extends StatelessWidget {
  const FromAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImageBeneficiary(),
        Scaffold(
            appBar:     AppBarStyleCustomBenifi(
                 title: Text('FromAccount'),
              leadingButton: BackButton(

                onPressed: () {},
              ),
              trailingButton: IconButton(
                icon: Image.asset(
                  ImageStyle.chat,
                  height: 30,
                ),
                onPressed: () {},
              ),

            ),
            backgroundColor: Colors.transparent,

            body:     SingleChildScrollView(

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.only(left: 14,right: 14),
                    child:    Text(
                      'Account Selection',
                      style: TextStyles.textStyles_20.apply(
                          color: ColorStyle.primaryWhite,
                          fontWeightDelta: 2
                      ),
                    ),),

                  SizedBox(height: 20,),
                  Container(
                    margin: EdgeInsets.only(left: 14,right: 14),
                    // width: 373,
                    child:   NewBeneficiarySummary(),
                    decoration: BoxDecoration(
                        color: ColorStyle.primaryWhite,
                        borderRadius: BorderRadius.circular(16)
                    ),
                  ),
                  SizedBox(height: 20,),
                 Container(
                   padding: EdgeInsets.only(left: 14,right: 14),
                   child:  Text(
                   'Paying From Account',
                   style: TextStyles.textStyles_20.apply(
                       color: ColorStyle.primaryWhite,
                       fontWeightDelta: 2
                   ),
                 ),),
                  SizedBox(height: 20,),

                  Container(
                    // padding: EdgeInsets.only(left: 10,right: 10),
                    // color: ColorStyle.blueSKY,
                    height: 200,
                    child:   ListView.builder(
                        // padding: EdgeInsets.only(left: 10,right: 10,),
                        shrinkWrap: true,

                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return  InkWell(
                            child: Container(
                              margin: EdgeInsets.only(left: 12),
                              alignment: Alignment.center,
                              child:  Image.asset(ImageStyle.Card3),
                              // width: 174,
                              // height: 36,
                              decoration: BoxDecoration(
                                  color: ColorStyle.blueSKY.withOpacity(.4),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                            ),
                            onTap: (){

                            },
                          );



                        }),
                  ),
                  SizedBox(height: 20,),
                 Container(
                     padding: EdgeInsets.only(left: 14,right: 14),
                   child:  GradientButtonWith(),
                 ),
                  SizedBox(height: 20,),

                ],
              ),
            )


        )
      ],
    );
  }
}
