import 'package:advanced_capital_pay/Controllers/CryptoDashboardController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Components/AppBarStyle.dart';
import '../Components/BackgroundImage.dart';
import '../Components/ButtonCustom.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';

class CryptoDashboard extends StatelessWidget {
  const CryptoDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CryptoDashboardController());
    return Stack(
      children: [
        BackgroundImageBeneficiary(),
        Scaffold(
            appBar:   AppBarStyleCryptoDashboard(
              leadingButton: Row(
                children: [

                  SizedBox(width: 14,),
                Image.asset(ImageStyle.settings,height: 28,),
                  SizedBox(width: 10,),
                  Image.asset(ImageStyle.bell,height: 28,color: ColorStyle.primaryWhite,)
                ],
              ),
              trailingButton: Row(

                children: [
                  // SizedBox(width: 20,),
               Image.asset(ImageStyle.settings_sliders,height: 28,),
                  SizedBox(width: 14,),
                  Image.asset(ImageStyle.chat,height: 28,),
                  // SizedBox(width: 4,),
                ],
              ),
            ),
            backgroundColor: Colors.transparent,

            body:    GetBuilder<CryptoDashboardController>(
    init: CryptoDashboardController(),
    initState: (state) {
    // controller.reset();
    // print(controller.listSelected.value);
    },
    builder: (authController) {
    return Obx(() =>
        SingleChildScrollView(
          // padding: EdgeInsets.only(left: 24,right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(

                    "TOTAL CRYPTO BALANCE",
                    style: TextStyles.textStyles_12.apply(
                      color: ColorStyle.primaryWhite,
                      // fontWeightDelta: 1
                    ),
                  ),
                  SizedBox(width: 10,),
                  Icon(Icons.remove_red_eye_outlined,color: ColorStyle.primaryWhite,)
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.attach_money,color: ColorStyle.primaryWhite,size: 34,),
                  Text(

                    "21,048.13",
                    style: TextStyles.textStyles_32.apply(
                      color: ColorStyle.primaryWhite,
                      // fontWeightDelta: 1
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text(

                    "USD",
                    style: TextStyles.textStyles_20.apply(
                      color: ColorStyle.primaryWhite,
                      // fontWeightDelta: 1
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text(

                    "+7.47%",
                    style: TextStyles.textStyles_12.apply(
                      color: ColorStyle.green.withOpacity(.4),
                      // fontWeightDelta: 1
                    ),
                  ),
                  Text(

                    " |",
                    style: TextStyles.textStyles_20.apply(
                      color: ColorStyle.grey,
                      // fontWeightDelta: 1
                    ),
                  ),

                  Text(

                    "  +",
                    style: TextStyles.textStyles_12.apply(
                      color: ColorStyle.green.withOpacity(.4),
                      // fontWeightDelta: 1
                    ),
                  ),
                  Icon(Icons.attach_money,color: ColorStyle.green.withOpacity(.4),size: 12,),
                  Text(

                    "2,414.62",
                    style: TextStyles.textStyles_12.apply(
                      color: ColorStyle.green.withOpacity(.4),
                      // fontWeightDelta: 1
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.only(left: 24,right: 24),

                child:   Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(

                      decoration: BoxDecoration(
                          color: ColorStyle.blueSKY.withOpacity(.2),
                          border: Border.all(
                              width: 1,
                              color: ColorStyle.ligthBlue
                          ),
                          borderRadius: BorderRadius.circular((30))
                      ),
                      height: 60,
                      width: 60,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(ImageStyle.chartss,height: 24,),
                          Text(

                            "Send",
                            style: TextStyles.textStyles_10.apply(
                                color: ColorStyle.primaryWhite,
                                fontWeightDelta: 2
                            ),
                          ),
                        ],
                      ),
                      // alignment: Alignment.center,
                    ),
                    Container(

                      decoration: BoxDecoration(
                          color: ColorStyle.blueSKY.withOpacity(.2),
                          border: Border.all(
                              width: 1,
                              color: ColorStyle.ligthBlue
                          ),
                          borderRadius: BorderRadius.circular((40))
                      ),
                      height: 60,
                      width: 60,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(ImageStyle.charttts,height: 24,),
                          Text(

                            "Receive",
                            style: TextStyles.textStyles_10.apply(
                                color: ColorStyle.primaryWhite,
                                fontWeightDelta: 2
                            ),
                          ),
                        ],
                      ),
                      // alignment: Alignment.center,
                    ),
                    Container(

                      decoration: BoxDecoration(
                          color: ColorStyle.blueSKY.withOpacity(.2),
                          border: Border.all(
                              width: 1,
                              color: ColorStyle.ligthBlue
                          ),
                          borderRadius: BorderRadius.circular((40))
                      ),
                      height: 60,
                      width: 60,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(ImageStyle.chartdd,height: 24,),
                          Text(

                            "Trade",
                            style: TextStyles.textStyles_10.apply(
                                color: ColorStyle.primaryWhite,
                                fontWeightDelta: 2
                            ),
                          ),
                        ],
                      ),
                      // alignment: Alignment.center,
                    ),
                    Container(

                      decoration: BoxDecoration(
                          color: ColorStyle.blueSKY.withOpacity(.2),
                          border: Border.all(
                              width: 1,
                              color: ColorStyle.ligthBlue
                          ),
                          borderRadius: BorderRadius.circular((40))
                      ),
                      height: 60,
                      width: 60,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(ImageStyle.chart,height: 24,),
                          Text(

                            "Wallets",
                            style: TextStyles.textStyles_10.apply(
                                color: ColorStyle.primaryWhite,
                                fontWeightDelta: 2
                            ),
                          ),
                        ],
                      ),
                      // alignment: Alignment.center,
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.only(left: 24,right: 24),

                child:    Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(

                      decoration: BoxDecoration(
                          color: ColorStyle.blueSKY.withOpacity(.2),
                          border: Border.all(
                              width: 1,
                              color: ColorStyle.ligthBlue
                          ),
                          borderRadius: BorderRadius.circular((30))
                      ),
                      height: 60,
                      width: 60,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(ImageStyle.charts,height: 24,),
                          Text(

                            "Orders",
                            style: TextStyles.textStyles_10.apply(
                                color: ColorStyle.primaryWhite,
                                fontWeightDelta: 2
                            ),
                          ),
                        ],
                      ),
                      // alignment: Alignment.center,
                    ),
                    Container(

                      decoration: BoxDecoration(
                          color: ColorStyle.blueSKY.withOpacity(.2),
                          border: Border.all(
                              width: 1,
                              color: ColorStyle.ligthBlue
                          ),
                          borderRadius: BorderRadius.circular((40))
                      ),
                      height: 60,
                      width: 60,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(ImageStyle.chartErn,height: 24,),
                          Text(

                            "Earn",
                            style: TextStyles.textStyles_10.apply(
                                color: ColorStyle.primaryWhite,
                                fontWeightDelta: 2
                            ),
                          ),
                        ],
                      ),
                      // alignment: Alignment.center,
                    ),
                    Container(

                      decoration: BoxDecoration(
                          color: ColorStyle.blueSKY.withOpacity(.2),
                          border: Border.all(
                              width: 1,
                              color: ColorStyle.ligthBlue
                          ),
                          borderRadius: BorderRadius.circular((40))
                      ),
                      height: 60,
                      width: 60,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(ImageStyle.markets,height: 24,),
                          Text(

                            "Markets",
                            style: TextStyles.textStyles_10.apply(
                                color: ColorStyle.primaryWhite,
                                fontWeightDelta: 2
                            ),
                          ),
                        ],
                      ),
                      // alignment: Alignment.center,
                    ),
                    Container(

                      decoration: BoxDecoration(
                          color: ColorStyle.blueSKY.withOpacity(.2),
                          border: Border.all(
                              width: 1,
                              color: ColorStyle.ligthBlue
                          ),
                          borderRadius: BorderRadius.circular((40))
                      ),
                      height: 60,
                      width: 60,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(ImageStyle.NFT,height: 24,),
                          Text(

                            "NTF",
                            style: TextStyles.textStyles_10.apply(
                                color: ColorStyle.primaryWhite,
                                fontWeightDelta: 2
                            ),
                          ),
                        ],
                      ),
                      // alignment: Alignment.center,
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.only(left: 24,right: 24),

                child:  Container(

                  decoration: BoxDecoration(
                      color: ColorStyle.blueSKY.withOpacity(.3),

                      borderRadius: BorderRadius.circular((40))
                  ),
                  height: 1,


                  // alignment: Alignment.center,
                ),
              ),

              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.only(left: 24,right: 24),

                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(

                      "MY FAVORITES",
                      style: TextStyles.textStyles_16.apply(
                        color: ColorStyle.primaryWhite,
                        // fontWeightDelta: 1
                      ),
                    ),
                    InkWell(
                      child: Column(
                        children: [
                          Text(

                            "See All",
                            style: TextStyles.textStyles_12.apply(
                                color: ColorStyle.blueSKY,
                                fontWeightDelta: 2
                            ),
                          ),
                          Container(

                            decoration: BoxDecoration(
                                color: ColorStyle.blueSKY,

                                borderRadius: BorderRadius.circular((40))
                            ),
                            height: 1,
                            width: 40,


                            // alignment: Alignment.center,
                          ),
                        ],
                      ),
                      onTap: (){},
                    )
                  ],
                ),
              ),

              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.only(left: 24,right: 24),

                child:  Container(
                  // padding: EdgeInsets.only(left: 10,right: 10),
                  // color: ColorStyle.secondryBlack,
                  // height: 233,
                  child:   ListView.builder(
                    // padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 20),
                      shrinkWrap: true,
                      itemCount: controller.images.length,
                      // itemCount: 1,
                      // scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          padding: EdgeInsets.only(left: 10,right: 10),
                          margin: EdgeInsets.only(bottom: 8),
                          // width: 329,
                          // height: 90,
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
                                          style: TextStyles.textStyles_14.apply(
                                              color: ColorStyle.primaryWhite,
                                              fontWeightDelta: 2
                                          ),
                                        ),
                                        SizedBox(height: 2,),
                                        Text(
                                          // 'Spare change',
                                          controller.chooseSaving1[index],
                                          style: TextStyles.textStyles_14.apply(
                                              color: ColorStyle.primaryWhite,
                                              fontWeightDelta: 2
                                          ),
                                        ),
                                        Text(
                                          // 'Spare change',
                                          controller.chooseSaving2[index],
                                          style: TextStyles.textStyles_12.apply(
                                            color: Colors.red,
                                            // fontWeightDelta: 2
                                          ),
                                        ),


                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Image.asset(
                                ImageStyle.light2,
                                height: 38,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  SizedBox(height: 20,),
                                  Text(
                                    // '     + S 1.90',
                                    controller.chooseSaving3[index],
                                    style: TextStyles.textStyles_14.apply(
                                        color: ColorStyle.primaryWhite,
                                        fontWeightDelta: 2
                                    ),
                                  ),
                                  SizedBox(height: 2,),
                                  Text(
                                    // '          22:31',
                                    controller.chooseSaving4[index],
                                    style: TextStyles.textStyles_12.apply(
                                      color: ColorStyle.primaryWhite,
                                      // fontWeightDelta: 2
                                    ),
                                  ),


                                ],
                              )


                            ],
                          ),
                          decoration: BoxDecoration(

                            color: ColorStyle.blueLight.withOpacity(.1),
                            borderRadius:
                            BorderRadius.circular(4),
                          ),
                        );



                      }),
                ),
              ),

              SizedBox(height: 20,),
              Column(
                children: [
                  Text(

                    "Show My Full Portfolio",
                    style: TextStyles.textStyles_12.apply(
                        color: ColorStyle.blueSKY,
                        fontWeightDelta: 2
                    ),
                  ),
                  Container(

                    decoration: BoxDecoration(
                        color: ColorStyle.blueSKY,

                        borderRadius: BorderRadius.circular((40))
                    ),
                    height: 1,
                    width: 130,


                    // alignment: Alignment.center,
                  ),
                  SizedBox(height: 20,)
                ],
              ),
              // SizedBox(height: 8,),
              Container(
                padding: EdgeInsets.only(left: 24,right: 24),

                child:  Container(

                  decoration: BoxDecoration(
                      color: ColorStyle.blueSKY.withOpacity(.3),

                      borderRadius: BorderRadius.circular((40))
                  ),
                  height: 1,
                  // width: 130,


                  // alignment: Alignment.center,
                ),
              ),

              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.only(left: 24,right: 24),

                child:   Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(

                      "MY FAVORITES",
                      style: TextStyles.textStyles_16.apply(
                        color: ColorStyle.primaryWhite,
                        // fontWeightDelta: 1
                      ),
                    ),
                    InkWell(
                      child: Column(
                        children: [
                          Text(

                            "See All",
                            style: TextStyles.textStyles_12.apply(
                                color: ColorStyle.blueSKY,
                                fontWeightDelta: 2
                            ),
                          ),
                          Container(

                            decoration: BoxDecoration(
                                color: ColorStyle.blueSKY,

                                borderRadius: BorderRadius.circular((40))
                            ),
                            height: 1,
                            width: 40,


                            // alignment: Alignment.center,
                          ),
                        ],
                      ),
                      onTap: (){},
                    )
                  ],
                ),
              ),

              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.only(left: 24,right: 24),

                child:    Container(
                  // padding: EdgeInsets.only(left: 10,right: 10),
                  // color: ColorStyle.secondryBlack,
                  // height: 233,
                  child:   ListView.builder(
                    // padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 20),
                      shrinkWrap: true,
                      itemCount: controller.images1.length,
                      // itemCount: 1,
                      // scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          padding: EdgeInsets.only(left: 10,right: 10),
                          margin: EdgeInsets.only(bottom: 8),
                          // width: 329,
                          height: 90,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(

                                  children: [
                                    Image.asset(
                                      controller.images1[index],
                                      height: 38,
                                    ),
                                    SizedBox(width: 10,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 20,),
                                        Text(
                                          // 'KFC',
                                          controller.chooseSaving5[index],
                                          style: TextStyles.textStyles_14.apply(
                                              color: ColorStyle.primaryWhite,
                                              fontWeightDelta: 2
                                          ),
                                        ),
                                        SizedBox(height: 2,),
                                        Text(
                                          // 'Spare change',
                                          controller.chooseSaving6[index],
                                          style: TextStyles.textStyles_14.apply(
                                              color: ColorStyle.primaryWhite,
                                              fontWeightDelta: 2
                                          ),
                                        ),



                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Image.asset(
                                ImageStyle.light2,
                                height: 38,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  SizedBox(height: 20,),
                                  Text(
                                    // '     + S 1.90',
                                    controller.chooseSaving7[index],
                                    style: TextStyles.textStyles_14.apply(
                                        color: ColorStyle.primaryWhite,
                                        fontWeightDelta: 2
                                    ),
                                  ),
                                  SizedBox(height: 2,),
                                  Text(
                                    // '          22:31',
                                    controller.chooseSaving8[index],
                                    style: TextStyles.textStyles_12.apply(
                                        color: Colors.red
                                      // fontWeightDelta: 2
                                    ),
                                  ),


                                ],
                              )


                            ],
                          ),
                          decoration: BoxDecoration(

                            color: ColorStyle.blueSKY.withOpacity(.1),
                            borderRadius:
                            BorderRadius.circular(4),
                          ),
                        );



                      }),
                ),
              ),

              Container(
                padding: EdgeInsets.only(left: 24,right: 24),

                child:    Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(

                      "TOP GAINERS",
                      style: TextStyles.textStyles_16.apply(
                        color: ColorStyle.primaryWhite,
                        // fontWeightDelta: 1
                      ),
                    ),

                    Image.asset(ImageStyle.fire,height: 14,)

                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.only(left: 24,right: 24),

                child:     Container(
                  // padding: EdgeInsets.only(left: 10,right: 10),
                  // color: ColorStyle.secondryBlack,
                  // height: 233,
                  child:   ListView.builder(
                    // padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 20),
                      shrinkWrap: true,
                      itemCount: controller.images2.length,
                      // itemCount: 1,
                      // scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          padding: EdgeInsets.only(left: 10,right: 10),
                          margin: EdgeInsets.only(bottom: 8),
                          // width: 329,
                          height: 90,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(

                                  children: [
                                    Image.asset(
                                      controller.images2[index],
                                      height: 38,
                                    ),
                                    SizedBox(width: 10,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 20,),
                                        Text(
                                          // 'KFC',
                                          controller.chooseSaving9[index],
                                          style: TextStyles.textStyles_14.apply(
                                              color: ColorStyle.primaryWhite,
                                              fontWeightDelta: 2
                                          ),
                                        ),
                                        SizedBox(height: 2,),
                                        Text(
                                          // 'Spare change',
                                          controller.chooseSaving10[index],
                                          style: TextStyles.textStyles_14.apply(
                                              color: ColorStyle.primaryWhite,
                                              fontWeightDelta: 2
                                          ),
                                        ),



                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                // 'Spare change',
                                controller.chooseSaving11[index],
                                style: TextStyles.textStyles_14.apply(
                                    color: ColorStyle.primaryWhite,
                                    fontWeightDelta: 2
                                ),
                              ),
                              Text(
                                // 'Spare change',
                                controller.chooseSaving12
                                [index],
                                style: TextStyles.textStyles_14.apply(
                                    color: Colors.green,
                                    fontWeightDelta: 2
                                ),
                              ),
                              Image.asset(ImageStyle.bell,color: ColorStyle.primaryWhite,height: 24,)


                            ],
                          ),
                          decoration: BoxDecoration(

                            color: ColorStyle.blueSKY.withOpacity(.1),
                            borderRadius:
                            BorderRadius.circular(4),
                          ),
                        );



                      }),
                ),
              ),
              SizedBox(height: 20,),

              SizedBox(height: 8,),
              Container(
                padding: EdgeInsets.only(left: 24,right: 24),

                child:  Container(

                  decoration: BoxDecoration(
                      color: ColorStyle.blueSKY.withOpacity(.3),

                      borderRadius: BorderRadius.circular((40))
                  ),
                  height: 1,
                  // width: 130,


                  // alignment: Alignment.center,
                ),
              ),

              SizedBox(height: 8,),
              Container(
                padding: EdgeInsets.only(left: 24,right: 24),

                child:   Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(

                      "CRYPTO NEWS",
                      style: TextStyles.textStyles_16.apply(
                        color: ColorStyle.primaryWhite,
                        // fontWeightDelta: 1
                      ),
                    ),
                    SizedBox(width: 8,),
                    InkWell(
                      child:  Container(
                        alignment: Alignment.center,
                        width: 44,
                        child:   Text(

                          "NEW",
                          style: TextStyles.textStyles_12.apply(
                            color: ColorStyle.primaryWhite,
                            // fontWeightDelta: 1
                          ),
                        ),

                        decoration: BoxDecoration(
                            color: ColorStyle.ligthBlue,
                            borderRadius: BorderRadius.circular(4)
                        ),
                      ),
                      onTap: (){

                      },
                    )

                  ],
                ),
              ),

              SizedBox(height: 20,),

              Container(
                // padding: EdgeInsets.only(left: 10,right: 10),
                // color: ColorStyle.secondryBlack,
                height: 440,
                child:   ListView.builder(
                  // padding: EdgeInsets.only(left: 20,right: 20,),
                    shrinkWrap: true,
                    // itemCount: controller.images2.length,
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(

                                width: MediaQuery.of(context).size.width-64,
                      margin: EdgeInsets.only(left: 20,),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              ImageStyle.YMTKEDALYRCAFE2BT2SVQCS6ZI,
                              height: 180,
                              fit: BoxFit.fitHeight,
                            ),
                            SizedBox(height: 10,),
                           Container(child:  Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text(

                                 "Excessive Volatility Hindering",
                                 style: TextStyles.textStyles_20.apply(
                                     color: ColorStyle.primaryWhite,
                                     fontWeightDelta: 1
                                 ),
                               ),
                               Text(

                                 "Further Mainstream Adoption",
                                 style: TextStyles.textStyles_20.apply(
                                     color: ColorStyle.primaryWhite,
                                     fontWeightDelta: 1
                                 ),
                               ),
                               Text(

                                 "of Bitcoin, JPMorgan Says",
                                 style: TextStyles.textStyles_20.apply(
                                     color: ColorStyle.primaryWhite,
                                     fontWeightDelta: 1
                                 ),
                               ),
                             ],
                           ),padding: EdgeInsets.only(left: 14,right: 14),),
                            SizedBox(height: 20,),
                            Container(child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(

                                  'Bitcoin’s biggest challenge is its volatility and ',


                                  style: TextStyles.textStyles_10.apply(
                                      color: ColorStyle.primaryWhite,
                                      fontWeightDelta: 1
                                  ),
                                ),
                                Text(

                                  'the boom and bust cycles that hinder further ',
                                  style: TextStyles.textStyles_10.apply(
                                      color: ColorStyle.primaryWhite,
                                      fontWeightDelta: 1
                                  ),
                                ),
                                Text(

                                  'institutional adoption, JPMorgan said in a research report.',
                                  style: TextStyles.textStyles_10.apply(
                                      color: ColorStyle.primaryWhite,
                                      fontWeightDelta: 1
                                  ),
                                ),
                              ],
                            ),padding: EdgeInsets.only(left: 14,right: 14),),
                            SizedBox(height: 20,),
                            Container(child:   Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(

                                  "cointelegraph.com",
                                  style: TextStyles.textStyles_10.apply(
                                    color: ColorStyle.blueSKY,
                                    // fontWeightDelta: 1
                                  ),
                                ),
                                // SizedBox(width: 8,),
                                Text(

                                  "One day ago",
                                  style: TextStyles.textStyles_10.apply(
                                    color: ColorStyle.grey,
                                    // fontWeightDelta: 1
                                  ),
                                ),

                              ],
                            ),padding: EdgeInsets.only( left: 14,right: 14 ),),
                          ],
                        ),
                        decoration: BoxDecoration(
                          // color: Colors.green,
                          // color: ColorStyle.blueSKY.withOpacity(.2),
                          color: HexColor('#FFFFFF').withOpacity(0.2),
                          borderRadius:
                          BorderRadius.circular(4),
                        ),
                      );



                    }),
              ),
              SizedBox(height: 20,),



            ],
          ),
        )


    );
    })





        )
      ],
    );
  }
}


class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}