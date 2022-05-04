import 'package:advanced_capital_pay/Views/CryptoDashboard.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Components/BackgroundImage.dart';
import '../Components/ButtonCustom.dart';
import '../Components/ComponentsTitleInputs.dart';
import '../Components/NewTransfers.dart';
import '../Controllers/OrdersButtonIsClickedController.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/EffectStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';

class OrdersButtonIsClicked extends StatelessWidget {
  const OrdersButtonIsClicked({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OrdersButtonIsClickedController());

    return Stack(
      children: [
        Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(ImageStyle.bgGradient)),


        BackgroundImage(
          imageName: ImageStyle.tiardschulzb8dA3eY5VrYunsplash,
        ),
        Scaffold(
          // appBar: AppBarStyleTitle(
          //   title: 'Bitcoin (BTC)',
          //   styleTitle:
          //   TextStylesSFCompactDisplay.textStyles_20.apply(
          //     color: ColorStyle.primaryWhite,
          //     fontWeightDelta: 2,
          //   ),
          //   leadingButton: IconButton(
          //     icon: Image.asset(
          //       ImageStyle.back_circle,
          //       height: 30,
          //     ),
          //     onPressed: () {
          //       Get.back();
          //     },
          //   ),
          //   trailingButton: [
          //     Row(
          //       children: [
          //         SizedBox(
          //           width: 20,
          //         ),
          //         InkWell(
          //           child: Icon(Icons.ios_share),
          //           onTap: () {},
          //         ),
          //         SizedBox(
          //           width: 10,
          //         ),
          //         InkWell(
          //           child: Container(
          //             height: 30,
          //             padding: EffectStyle.padding(0, 0, 0, 0),
          //             decoration: BoxDecoration(
          //               color: ColorStyle.hex('#3B86D1'),
          //               borderRadius: EffectStyle.radiusCustom(30),
          //             ),
          //             child: Row(
          //               children: [
          //                 Container(
          //                   height: 30,
          //                   width: 30,
          //                   alignment: Alignment.center,
          //                   decoration: BoxDecoration(
          //                       color: ColorStyle.hex('#3B86D1'),
          //                       borderRadius:
          //                       EffectStyle.radiusCustom(50),
          //                       border: Border.all(
          //                           color: ColorStyle.primaryWhite,
          //                           width: 1.5)),
          //                   child: Text(
          //                     '\$',
          //                     textAlign: TextAlign.center,
          //                     style: TextStylesSFCompactDisplay
          //                         .textStyles_16
          //                         .apply(
          //                       color: ColorStyle.primaryWhite,
          //                       fontWeightDelta: 1,
          //                     ),
          //                   ),
          //                 ),
          //                 SizedBox(
          //                   width: 4,
          //                 ),
          //                 Text(
          //                   'USD',
          //                   style: TextStylesSFCompactDisplay
          //                       .textStyles_12
          //                       .apply(
          //                       color: ColorStyle.primaryWhite,
          //                       fontWeightDelta: 1),
          //                 ),
          //                 Icon(
          //                   Icons.arrow_drop_down,
          //                   size: 30,
          //                 )
          //               ],
          //             ),
          //           ),
          //           onTap: () {},
          //         ),
          //       ],
          //     ),
          //     SizedBox(
          //       width: 16,
          //     ),
          //   ],
          // ),
          backgroundColor: ColorStyle.darkestBlue.withOpacity(0.3),
          body:   GetBuilder<OrdersButtonIsClickedController>(
    init: OrdersButtonIsClickedController(),
    initState: (state) {
    // controller.reset();
    // print(controller.listSelected.value);
    },
    builder: (authController) {
    return Obx(() =>  SingleChildScrollView(
      // padding: EffectStyle.padding(16, 16, 0, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 100,),
          Container(
        // color: ColorStyle.yellow,
        height: 40,
        child:     ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            // padding: EdgeInsets.only(
            //   left: 16,
            //   right: 16,
            //   top: 0,
            //   bottom: 16,
            // ),
            itemCount: 6,
            // separatorBuilder: (context, index) {
            //   return Container(
            //     height: 0.3,
            //     width: double.infinity,
            //     color: ColorStyle.whiteDuskyCrypto,
            //     margin: EdgeInsets.only(
            //         top: 16, bottom: 16),
            //   );
            // },
            itemBuilder:
                (BuildContext context, int index) {
              return InkWell(
                child: Container(
                  margin: EdgeInsets.only(left: 12),
                  alignment: Alignment.center,
                  child:    Text(
                    // '1 M',
                    controller.chooseSaving[index],
                    textAlign: TextAlign.center,
                    style: TextStylesSFCompactDisplay
                        .textStyles_12
                        .apply(
                      color: ColorStyle.primaryWhite,
                      fontWeightDelta: 2,
                    ),
                  ),
                  height: 38,
                  width: 60,
                  decoration: BoxDecoration(
                    color: ColorStyle.blueLight.withOpacity(.2),
                    borderRadius: BorderRadius.circular(14),

                  ),
                ),
                onTap: () {
                  // Get.to(CryptoTransactionList());
                },
              );
            }),
      ),
          SizedBox(height: 20,),
          Container(
            height: 1,
            decoration: BoxDecoration(
              color: ColorStyle.blueSKY.withOpacity(0.3),
              borderRadius: BorderRadius.circular(10),

            ),
          ),
          ListView.builder(
            padding: EffectStyle.padding(16, 16, 0, 0),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              // scrollDirection: Axis.horizontal,
              // padding: EdgeInsets.only(
              //   left: 16,
              //   right: 16,
              //   top: 0,
              //   bottom: 16,
              // ),
              itemCount: 12,
              // separatorBuilder: (context, index) {
              //   return Container(
              //     height: 0.3,
              //     width: double.infinity,
              //     color: ColorStyle.whiteDuskyCrypto,
              //     margin: EdgeInsets.only(
              //         top: 16, bottom: 16),
              //   );
              // },
              itemBuilder:
                  (BuildContext context, int index) {
                return  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '1,567890',
                      // controller.chooseSaving[index],
                      textAlign: TextAlign.center,
                      style: TextStylesSFCompactDisplay
                          .textStyles_14
                          .apply(
                        color: ColorStyle.primaryWhite,
                        // fontWeightDelta: 2,
                      ),
                    ),
                    Container(
                      child: Row(

                        children: [

                       Container(
                         alignment: Alignment.center,
                         child:    Text(
                           '63.300,97',
                           // controller.chooseSaving[index],
                           textAlign: TextAlign.center,
                           style: TextStylesSFCompactDisplay
                               .textStyles_14
                               .apply(
                             color: ColorStyle.green,
                             // fontWeightDelta: 2,
                           ),
                         ),

                         color: ColorStyle.green.withOpacity(0.3),
                         width: 70,
                         height: 24,
                       ),
                          Container(
                            alignment: Alignment.center,
                            width: 70,
                            height: 24,
                            child:    Text(
                              '63.300,97',
                              // controller.chooseSaving[index],
                              textAlign: TextAlign.center,
                              style: TextStylesSFCompactDisplay
                                  .textStyles_14
                                  .apply(
                                color: Colors.red,
                                // fontWeightDelta: 2,
                              ),
                            ),
                            color: Colors.red.withOpacity(0.3),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      '1,567890',
                      // controller.chooseSaving[index],
                      textAlign: TextAlign.center,
                      style: TextStylesSFCompactDisplay
                          .textStyles_14
                          .apply(
                        color: ColorStyle.primaryWhite,
                        // fontWeightDelta: 2,
                      ),
                    ),
                  ],
                );
              }),
          Container(
            height: 1,
            decoration: BoxDecoration(
              color: ColorStyle.blueSKY.withOpacity(0.3),
              borderRadius: BorderRadius.circular(10),

            ),
          ),
          SizedBox(height: 30,),
          Container(
            // color: ColorStyle.yellow,
            height: 40,
            child:     ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                // padding: EdgeInsets.only(
                //   left: 16,
                //   right: 16,
                //   top: 0,
                //   bottom: 16,
                // ),
                itemCount:  controller.chooseSaving2.length,
                // separatorBuilder: (context, index) {
                //   return Container(
                //     height: 0.3,
                //     width: double.infinity,
                //     color: ColorStyle.whiteDuskyCrypto,
                //     margin: EdgeInsets.only(
                //         top: 16, bottom: 16),
                //   );
                // },
                itemBuilder:
                    (BuildContext context, int index) {
                  return InkWell(
                    child: Container(
                      margin: EdgeInsets.only(left: 12),
                      alignment: Alignment.center,
                      child:    Text(
                        // '1 M',
                        controller.chooseSaving2[index],
                        textAlign: TextAlign.center,
                        style: TextStylesSFCompactDisplay
                            .textStyles_14
                            .apply(
                          color: ColorStyle.primaryWhite,
                          fontWeightDelta: 2,
                        ),
                      ),
                      height: 56,
                      width: 111,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.white60.withOpacity(.3),
                            Colors.green.withOpacity(.3),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(10),

                      ),
                    ),
                    onTap: () {
                      // Get.to(CryptoTransactionList());
                    },
                  );
                }),
          ),
          SizedBox(height: 14,),
          Container(
            height: 1,
            decoration: BoxDecoration(
              color: ColorStyle.blueSKY.withOpacity(0.3),
              borderRadius: BorderRadius.circular(10),

            ),
          ),
          SizedBox(height: 30,),
          Container(
            // color: ColorStyle.yellow,
            height: 40,
            child:     ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(
                  left: 22,
                  right: 22,
                  top: 0,
                  bottom: 0,
                ),
                itemCount:  controller.chooseSaving3.length,
                // separatorBuilder: (context, index) {
                //   return Container(
                //     height: 0.3,
                //     width: double.infinity,
                //     color: ColorStyle.whiteDuskyCrypto,
                //     margin: EdgeInsets.only(
                //         top: 16, bottom: 16),
                //   );
                // },
                itemBuilder:
                    (BuildContext context, int index) {
                  return InkWell(
                    child: Container(
                      margin: EdgeInsets.only(left: 12),
                      alignment: Alignment.center,
                      child:    Text(
                        // '1 M',
                        controller.chooseSaving3[index],
                        textAlign: TextAlign.center,
                        style: TextStylesSFCompactDisplay
                            .textStyles_10
                            .apply(
                          color: ColorStyle.primaryWhite,
                          fontWeightDelta: 2,
                        ),
                      ),
                      height: 60,
                      width: 72,
                      decoration: BoxDecoration(
                        color: ColorStyle.blueLight.withOpacity(.2),
                        borderRadius: BorderRadius.circular(10),

                      ),
                    ),
                    onTap: () {
                      // Get.to(CryptoTransactionList());
                    },
                  );
                }),
          ),
          SizedBox(height: 20,),
          Container(
          padding: EdgeInsets.only(
              left: 14,right: 14
          ),
          child:   Container(
            padding: EdgeInsets.only(
                left: 14,right: 14
            ),
            alignment: Alignment.center,
            child:   Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Price:',
                  // controller.chooseSaving3[index],
                  textAlign: TextAlign.center,
                  style: TextStylesSFCompactDisplay
                      .textStyles_12
                      .apply(
                    color: ColorStyle.primaryWhite,
                    // fontWeightDelta: 2,
                  ),
                ),
                Text(
                  '63,146.47',
                  // controller.chooseSaving3[index],
                  textAlign: TextAlign.center,
                  style: TextStylesSFCompactDisplay
                      .textStyles_16
                      .apply(
                    color: ColorStyle.primaryWhite,
                    // fontWeightDelta: 2,
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Text(
                        '- | +',
                        // controller.chooseSaving3[index],
                        textAlign: TextAlign.center,
                        style: TextStylesSFCompactDisplay
                            .textStyles_24
                            .apply(
                          color: ColorStyle.primaryWhite,
                          // fontWeightDelta: 2,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            height: 60,
            // width: 72,
            decoration: BoxDecoration(
              color: ColorStyle.primaryWhite.withOpacity(.2),
              borderRadius: BorderRadius.circular(10),

            ),
          ),
        ),
          SizedBox(height: 14,),
          Container(
            padding: EdgeInsets.only(
                left: 14,right: 14
            ),
            child:   Container(
              padding: EdgeInsets.only(
                  left: 14,right: 14
              ),
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Quantity:',
                        // controller.chooseSaving3[index],
                        textAlign: TextAlign.center,
                        style: TextStylesSFCompactDisplay
                            .textStyles_12
                            .apply(
                          color: ColorStyle.primaryWhite,
                          // fontWeightDelta: 2,
                        ),
                      ),
                      Text(
                        '800',
                        // controller.chooseSaving3[index],
                        textAlign: TextAlign.center,
                        style: TextStylesSFCompactDisplay
                            .textStyles_16
                            .apply(
                          color: ColorStyle.primaryWhite,
                          // fontWeightDelta: 2,
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text(
                              '- | +',
                              // controller.chooseSaving3[index],
                              textAlign: TextAlign.center,
                              style: TextStylesSFCompactDisplay
                                  .textStyles_24
                                  .apply(
                                color: ColorStyle.primaryWhite,
                                // fontWeightDelta: 2,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '0%:',
                        // controller.chooseSaving3[index],
                        textAlign: TextAlign.center,
                        style: TextStylesSFCompactDisplay
                            .textStyles_12
                            .apply(
                          color: ColorStyle.primaryWhite,
                          // fontWeightDelta: 2,
                        ),
                      ),
                      Text(
                        '50%',
                        // controller.chooseSaving3[index],
                        textAlign: TextAlign.center,
                        style: TextStylesSFCompactDisplay
                            .textStyles_16
                            .apply(
                          color: ColorStyle.primaryWhite,
                          // fontWeightDelta: 2,
                        ),
                      ),
                      Text(
                        '75%:',
                        // controller.chooseSaving3[index],
                        textAlign: TextAlign.center,
                        style: TextStylesSFCompactDisplay
                            .textStyles_12
                            .apply(
                          color: ColorStyle.primaryWhite,
                          // fontWeightDelta: 2,
                        ),
                      ),
                      Text(
                        'Max',
                        // controller.chooseSaving3[index],
                        textAlign: TextAlign.center,
                        style: TextStylesSFCompactDisplay
                            .textStyles_16
                            .apply(
                          color: ColorStyle.primaryWhite,
                          // fontWeightDelta: 2,
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: 20,),
                ],
              ),
              // height: 60,
              // width: 72,
              decoration: BoxDecoration(
                  color: ColorStyle.primaryWhite.withOpacity(.2),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 1,
                  color: ColorStyle.grey.withOpacity(.3),
                )

              ),
            ),
          ),
          SizedBox(height: 14,),
          Container(
            padding: EdgeInsets.only(
                left: 14,right: 14
            ),
            child:   Container(
              padding: EdgeInsets.only(
                  left: 14,right: 14
              ),
              alignment: Alignment.center,
              child:   Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total:',
                    // controller.chooseSaving3[index],
                    textAlign: TextAlign.center,
                    style: TextStylesSFCompactDisplay
                        .textStyles_12
                        .apply(
                      color: ColorStyle.primaryWhite,
                      // fontWeightDelta: 2,
                    ),
                  ),
                  Text(
                    '1.07',
                    // controller.chooseSaving3[index],
                    textAlign: TextAlign.center,
                    style: TextStylesSFCompactDisplay
                        .textStyles_16
                        .apply(
                      color: ColorStyle.primaryWhite,
                      // fontWeightDelta: 2,
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          '- | +',
                          // controller.chooseSaving3[index],
                          textAlign: TextAlign.center,
                          style: TextStylesSFCompactDisplay
                              .textStyles_24
                              .apply(
                            color: ColorStyle.primaryWhite,
                            // fontWeightDelta: 2,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              height: 60,
              // width: 72,
              decoration: BoxDecoration(
                color: ColorStyle.primaryWhite.withOpacity(.2),
                borderRadius: BorderRadius.circular(10),

              ),
            ),
          ),
          SizedBox(height: 14,),
          Container(
            padding: EdgeInsets.only(
                left: 14,right: 14
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Available:',
                  // controller.chooseSaving3[index],
                  textAlign: TextAlign.center,
                  style: TextStylesSFCompactDisplay
                      .textStyles_14
                      .apply(
                    color: ColorStyle.primaryWhite,
                    // fontWeightDelta: 2,
                  ),
                ),
                Text(
                  '1.02',
                  // controller.chooseSaving3[index],
                  textAlign: TextAlign.center,
                  style: TextStylesSFCompactDisplay
                      .textStyles_14
                      .apply(
                    color: ColorStyle.primaryWhite,
                    // fontWeightDelta: 2,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 14,),
          OrdersButtonIsClickedButton(
            text: 'Buy BTC',
          ),
          SizedBox(height: 30,),
          Container(
            height: 1,
            decoration: BoxDecoration(
              color: ColorStyle.blueSKY.withOpacity(0.3),
              borderRadius: BorderRadius.circular(10),

            ),
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    'Open Orders',
                    // controller.chooseSaving3[index],
                    textAlign: TextAlign.center,
                    style: TextStylesSFCompactDisplay
                        .textStyles_14
                        .apply(
                      color: ColorStyle.primaryWhite,
                      // fontWeightDelta: 2,
                    ),
                  ),
                  Container(
                    height: 20,
                    width: 170,
                    decoration: BoxDecoration(
                      // color: ColorStyle.blueSKY.withOpacity(.2),
                        boxShadow: [BoxShadow(
                          color: ColorStyle.blueSKY.withOpacity(0.4),
                      spreadRadius:3,
                          blurRadius: 5.0,
                        ),]
                    ),
                  ),
                ],
              ),
               Column(
                children: [
                  Text(
                    'Commercial history',
                    // controller.chooseSaving3[index],
                    textAlign: TextAlign.center,
                    style: TextStylesSFCompactDisplay
                        .textStyles_14
                        .apply(
                      color: ColorStyle.primaryWhite,
                      // fontWeightDelta: 2,
                    ),
                  ),
                  Container(
                    height: 20,
                    width: 170,
                    decoration: BoxDecoration(
                      // color: ColorStyle.blueSKY.withOpacity(.2),
                        boxShadow: [BoxShadow(
                          color: Colors.transparent
                          // spreadRadius:1,
                          // blurRadius: 5.0,
                        ),]
                    ),
                  ),
                ],
              )
            ],
          ),
          Container(
            height: 3,
            decoration: BoxDecoration(
              color: ColorStyle.grey.withOpacity(0.4),
              borderRadius: BorderRadius.circular(10),

            ),
          ),
          SizedBox(height: 30,),
          Container(
            // color: ColorStyle.yellow,
            height: 40,
            child:     ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                // padding: EdgeInsets.only(
                //   left: 22,
                //   right: 22,
                //   top: 0,
                //   bottom: 0,
                // ),
                itemCount:  controller.chooseSaving4.length,
                // separatorBuilder: (context, index) {
                //   return Container(
                //     height: 0.3,
                //     width: double.infinity,
                //     color: ColorStyle.whiteDuskyCrypto,
                //     margin: EdgeInsets.only(
                //         top: 16, bottom: 16),
                //   );
                // },
                itemBuilder:
                    (BuildContext context, int index) {
                  return InkWell(
                    child: Container(
                      margin: EdgeInsets.only(left: 4),
                      alignment: Alignment.center,
                      child:    Text(
                        // '1 M',
                        controller.chooseSaving4[index],
                        textAlign: TextAlign.center,
                        style: TextStylesSFCompactDisplay
                            .textStyles_10
                            .apply(
                          color: ColorStyle.primaryWhite,
                          fontWeightDelta: 2,
                        ),
                      ),
                      height: 38,
                      width: 127,
                      decoration: BoxDecoration(
                          // gradient: LinearGradient(
                          //   begin: Alignment.topCenter,
                          //   end: Alignment.bottomCenter,
                          //   colors: [
                          //     Colors.black.withOpacity(.3),
                          //     Colors.blueAccent.withOpacity(.4),
                          //   ],
                          // ),
                        borderRadius: BorderRadius.circular(22),

                      ),
                    ),
                    onTap: () {
                      // Get.to(CryptoTransactionList());
                    },
                  );
                }),
          ),
          SizedBox(height: 10,),
          Container(
            // color: ColorStyle.yellow,
            // height: 40,
            child:     ListView.builder(

                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                // scrollDirection: Axis.horizontal,
                // padding: EdgeInsets.only(
                //   left: 22,
                //   right: 22,
                //   top: 0,
                //   bottom: 0,
                // ),
                itemCount:  8,
                // separatorBuilder: (context, index) {
                //   return Container(
                //     height: 0.3,
                //     width: double.infinity,
                //     color: ColorStyle.whiteDuskyCrypto,
                //     margin: EdgeInsets.only(
                //         top: 16, bottom: 16),
                //   );
                // },
                itemBuilder:
                    (BuildContext context, int index) {
                  return InkWell(
                    child: Container(
                      padding: EdgeInsets.only(top: 10,bottom: 10,right: 10,left: 10),
                      margin: EdgeInsets.only(bottom: 10),
                      alignment: Alignment.center,
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'BTC',
                                // controller.chooseSaving4[index],
                                textAlign: TextAlign.center,
                                style: TextStylesSFCompactDisplay
                                    .textStyles_10
                                    .apply(
                                  color: ColorStyle.primaryWhite,
                                  fontWeightDelta: 2,
                                ),
                              ),
                              Text(
                                'Bitcoin',
                                // controller.chooseSaving4[index],
                                textAlign: TextAlign.center,
                                style: TextStylesSFCompactDisplay
                                    .textStyles_6
                                    .apply(
                                  color: ColorStyle.primaryWhite,
                                  fontWeightDelta: 2,
                                ),
                              ),
                              SizedBox(height: 13,),
                              Text(
                                'Buy',
                                // controller.chooseSaving4[index],
                                textAlign: TextAlign.center,
                                style: TextStylesSFCompactDisplay
                                    .textStyles_6
                                    .apply(
                                  color: ColorStyle.green,
                                  // fontWeightDelta: 2,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 45,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'price:',
                                // controller.chooseSaving4[index],
                                textAlign: TextAlign.center,
                                style: TextStylesSFCompactDisplay
                                    .textStyles_10
                                    .apply(
                                  color: ColorStyle.primaryWhite,
                                  fontWeightDelta: 2,
                                ),
                              ),
                              Text(
                                '63,146,47',
                                // controller.chooseSaving4[index],
                                textAlign: TextAlign.center,
                                style: TextStylesSFCompactDisplay
                                    .textStyles_6
                                    .apply(
                                  color: ColorStyle.primaryWhite,
                                  fontWeightDelta: 2,
                                ),
                              ),
                              SizedBox(height: 5,),
                              Text(
                                'Quantity:',
                                // controller.chooseSaving4[index],
                                textAlign: TextAlign.center,
                                style: TextStylesSFCompactDisplay
                                    .textStyles_10
                                    .apply(
                                  color: ColorStyle.primaryWhite,
                                  fontWeightDelta: 2,
                                ),
                              ),
                              Text(
                                '1.0749812 BTC',
                                // controller.chooseSaving4[index],
                                textAlign: TextAlign.center,
                                style: TextStylesSFCompactDisplay
                                    .textStyles_6
                                    .apply(
                                  color: ColorStyle.primaryWhite,
                                  fontWeightDelta: 2,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 4),
                            alignment: Alignment.center,
                            child:    Text(
                              'Cancel',
                              // controller.chooseSaving4[index],
                              textAlign: TextAlign.center,
                              style: TextStylesSFCompactDisplay
                                  .textStyles_10
                                  .apply(
                                color: ColorStyle.primaryWhite,
                                fontWeightDelta: 2,
                              ),
                            ),
                            height: 38,
                            width: 100,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.black.withOpacity(.3),
                                  Colors.blueAccent.withOpacity(.4),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(22),

                            ),
                          ),
                        ],
                      ),
                      // height: 38,
                      // width: 127,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Colors.green.withOpacity(.6),
                            Colors.white60.withOpacity(.3),
                          ],
                        ),
                        // borderRadius: BorderRadius.circular(22),

                      ),
                    ),
                    onTap: () {
                      // Get.to(CryptoTransactionList());
                    },
                  );
                }),
          ),
          SizedBox(height: 30,),
        ],
      ),
    ),);
    })


        ),

      ],
    );
  }
}
