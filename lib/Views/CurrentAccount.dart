import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:advanced_capital_pay/Components/AppBarStyle.dart';
import 'package:advanced_capital_pay/Components/BackgroundImage.dart';
import 'package:advanced_capital_pay/Components/ButtonCustom.dart';
import 'package:advanced_capital_pay/Components/TextFieldCustom.dart';
import 'package:advanced_capital_pay/Controllers/CurrentAccountController.dart';
import 'package:advanced_capital_pay/Controllers/PreferredLanguageController.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';

class CurrentAccount extends StatelessWidget {
  const CurrentAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CurrentAccountController());
    return GetBuilder(
      init: CurrentAccountController(),
      initState: (state) {

      },
      builder: (auth) {
        return  Stack(
          children: [
            BackgroundImage(),
            Scaffold(
                backgroundColor: Colors.transparent,
                appBar: AppBarStyle(
                  leadingButton: BackButton(

                  ),
                  // trailingButton: IconButton(
                  //   icon: Image.asset(
                  //     ImageStyle.chat,
                  //     height: 30,
                  //   ),
                  //   onPressed: () {},
                  // ),
                ),
                body:  SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 20,),
                        child: Text(
                          'Select Account to view details',
                          style: TextStylesPoppins.textStyles_20.apply(
                              color: ColorStyle.primaryWhite,
                              fontWeightDelta: 2
                          ),
                        ),
                      ),
                      Container(

                        child:   ListView.builder(
                            padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 20),
                            shrinkWrap: true,
                            itemCount: controller.images.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                padding: EdgeInsets.only(left: 10,right: 10),
                                margin: EdgeInsets.only(bottom: 8),
                                // width: 329,
                                height: 80,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Row(

                                        children: [
                                          Image.asset(
                                            controller.images[index],
                                            height: 38,
                                          ),
                                          SizedBox(width: 10,),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 20,),
                                              Text(
                                                // 'KFC',
                                                controller.chooseSaving[index],
                                                style: TextStylesPoppins.textStyles_14.apply(
                                                    color: ColorStyle.secondryBlack,
                                                    fontWeightDelta: 2
                                                ),
                                              ),
                                              SizedBox(height: 2,),
                                              Text(
                                                // 'Spare change',
                                                controller.chooseSaving1[index],
                                                style: TextStylesPoppins.textStyles_12.apply(
                                                  color: ColorStyle.secondryBlack,
                                                  // fontWeightDelta: 2
                                                ),
                                              ),


                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        SizedBox(height: 20,),
                                        Text(
                                          // '     + S 1.90',
                                          controller.chooseSaving2[index],
                                          style: TextStylesPoppins.textStyles_12.apply(
                                            color: ColorStyle.secondryBlack,
                                            // fontWeightDelta: 2
                                          ),
                                        ),
                                        SizedBox(height: 2,),
                                        Text(
                                          // '          22:31',
                                          controller.chooseSaving3[index],
                                          style: TextStylesPoppins.textStyles_14.apply(
                                              color: ColorStyle.secondryBlack,
                                              fontWeightDelta: 2
                                          ),
                                        ),


                                      ],
                                    )
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(ImageStyle.bg_back),
                                    fit: BoxFit.cover,
                                  ),
                                  color: ColorStyle.primaryWhite,
                                  borderRadius:
                                  BorderRadius.circular(4),
                                ),
                              );



                            }),
                      )
                    ],
                  ),
                )



            )
          ],
        );
      },
    );


  }
}
