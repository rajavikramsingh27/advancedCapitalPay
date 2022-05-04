import 'package:flutter/material.dart';

import '../Components/BackgroundImage.dart';
import '../Components/ButtonCustom.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/EffectStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';
import 'CryptoDashboard.dart';



class TransactionDetails1 extends StatelessWidget {
  const TransactionDetails1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(ImageStyle.bgGradient)),


        BackgroundImage(
          imageName: ImageStyle.bgTransactionListCripto,
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
          body: SingleChildScrollView(
              padding: EffectStyle.padding(16, 16, 0, 16),
              child: Column(

                children: [


                  SizedBox(height: 70,),
                  Stack(
                    children: [


                      Container(
                        padding: EffectStyle.padding(16, 16, 0, 16),
                        child: Column(

                          children: [
                            SizedBox(height: 20,),
                            Container(

                              child: Icon(
                                Icons.cancel_outlined,
                                color: ColorStyle.primaryWhite,
                              ),
                              alignment: Alignment.centerRight,
                            ),
                            SizedBox(height: 70,),
                            Text(
                              'Transaction Details',
                              textAlign: TextAlign.center,
                              style: TextStylesSFCompactDisplay
                                  .textStyles_20
                                  .apply(
                                color: ColorStyle.primaryWhite,
                                fontWeightDelta: 2,
                              ),
                            ),
                            Text(
                              '-S 78.55 USD',
                              textAlign: TextAlign.center,
                              style: TextStylesSFCompactDisplay
                                  .textStyles_18
                                  .apply(
                                color: ColorStyle.primaryWhite,
                                // fontWeightDelta: 2,
                              ),
                            ),
                            Text(
                              '-0.00185831 BTC',
                              textAlign: TextAlign.center,
                              style: TextStylesSFCompactDisplay
                                  .textStyles_18
                                  .apply(
                                color: ColorStyle.yellow,
                                // fontWeightDelta: 2,
                              ),
                            ),
                            SizedBox(height: 38,),



                            Container(
                              padding: EffectStyle.padding(16, 16, 16, 16),
                              // alignment: Alignment.center,
                              // height: 44,
                              // width: 64,
                              child: Column(

                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Transaction Time',
                                            textAlign: TextAlign.center,
                                            style: TextStylesSFCompactDisplay
                                                .textStyles_14
                                                .apply(
                                              color: ColorStyle.primaryWhite,
                                              fontWeightDelta: 2,
                                            ),
                                          ),
                                          Text(
                                            'Friday, 21st December 2021 18:40:52',
                                            textAlign: TextAlign.center,
                                            style: TextStylesSFCompactDisplay
                                                .textStyles_12
                                                .apply(
                                              color: ColorStyle.grey,
                                              // fontWeightDelta: 2,
                                            ),
                                          ),

                                        ],
                                      ),

                                    ],
                                  ),
                                  SizedBox(height: 20,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Received From',
                                            textAlign: TextAlign.center,
                                            style: TextStylesSFCompactDisplay
                                                .textStyles_14
                                                .apply(
                                              color: ColorStyle.primaryWhite,
                                              fontWeightDelta: 2,
                                            ),
                                          ),
                                          Text(
                                            ' 0x1dd979542c5r5ee..ggrj58844hnghtt',
                                            textAlign: TextAlign.center,
                                            style: TextStylesSFCompactDisplay
                                                .textStyles_12
                                                .apply(
                                              color: ColorStyle.yellow,
                                              // fontWeightDelta: 2,
                                            ),
                                          ),

                                        ],
                                      ),
                                      Image.asset(ImageStyle.copy,height: 20,),
                                    ],
                                  ),
                                  SizedBox(height: 20,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Arrived To',
                                            textAlign: TextAlign.center,
                                            style: TextStylesSFCompactDisplay
                                                .textStyles_14
                                                .apply(
                                              color: ColorStyle.primaryWhite,
                                              fontWeightDelta: 2,
                                            ),
                                          ),
                                          Text(
                                            '0x1ngirnwdfir556..gknreby453rgrrfdng',
                                            textAlign: TextAlign.center,
                                            style: TextStylesSFCompactDisplay
                                                .textStyles_12
                                                .apply(
                                              color: ColorStyle.yellow,
                                              // fontWeightDelta: 2,
                                            ),
                                          ),

                                        ],
                                      ),
                                      Image.asset(ImageStyle.copy,height: 20,),
                                    ],
                                  ),
                                  SizedBox(height: 20,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Network Free',
                                            textAlign: TextAlign.center,
                                            style: TextStylesSFCompactDisplay
                                                .textStyles_14
                                                .apply(
                                              color: ColorStyle.primaryWhite,
                                              fontWeightDelta: 2,
                                            ),
                                          ),
                                          Text(
                                            '0.037484438 BTC (S 4.92) ',
                                            textAlign: TextAlign.center,
                                            style: TextStylesSFCompactDisplay
                                                .textStyles_12
                                                .apply(
                                              color: ColorStyle.grey,
                                              // fontWeightDelta: 2,
                                            ),
                                          ),

                                        ],
                                      ),


                                    ],
                                  ),
                                  SizedBox(height: 20,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Transaction Status',
                                            textAlign: TextAlign.center,
                                            style: TextStylesSFCompactDisplay
                                                .textStyles_14
                                                .apply(
                                              color: ColorStyle.primaryWhite,
                                              fontWeightDelta: 2,
                                            ),
                                          ),
                                          Text(
                                            'Completed',
                                            textAlign: TextAlign.center,
                                            style: TextStylesSFCompactDisplay
                                                .textStyles_12
                                                .apply(
                                              color: ColorStyle.grey,
                                              // fontWeightDelta: 2,
                                            ),
                                          ),

                                        ],
                                      ),


                                    ],
                                  ),
                                  SizedBox(height: 20,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Transaction ID',
                                            textAlign: TextAlign.center,
                                            style: TextStylesSFCompactDisplay
                                                .textStyles_14
                                                .apply(
                                              color: ColorStyle.primaryWhite,
                                              fontWeightDelta: 2,
                                            ),
                                          ),
                                          Text(
                                            '0x67e2b4c57d7..0f366ebcfc38ae6 ',
                                            textAlign: TextAlign.center,
                                            style: TextStylesSFCompactDisplay
                                                .textStyles_12
                                                .apply(
                                              color: ColorStyle.yellow,
                                              // fontWeightDelta: 2,
                                            ),
                                          ),

                                        ],
                                      ),
                                      Image.asset(ImageStyle.copy,height: 20,),

                                    ],
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  color: ColorStyle.secondryBlack.withOpacity(.4),
                                  borderRadius: BorderRadius.circular(8),
                           
                              ),
                            ),
                            SizedBox(height: 20,),
                            Text(
                              'View Transaction On Block Explorer',
                              textAlign: TextAlign.center,
                              style: TextStylesSFCompactDisplay
                                  .textStyles_14
                                  .apply(
                                color: ColorStyle.primaryWhite,
                                fontWeightDelta: 2,
                              ),
                            ),
                            SizedBox(height: 20,),
                            GradientButtonWithSendBitcoins(
                              text: 'Back to My Wallet',

                              width: MediaQuery.of(context).size.width,


                              onTap: () {
                                // Get.to(TabbarScreen());
                              },
                            ),
                            SizedBox(height: 16,),
                            GradientButtonWithSendBitcoin(
                              text: 'Share Transaction',

                              width: MediaQuery.of(context).size.width,


                              onTap: () {
                                // Get.to(TabbarScreen());
                              },
                            ),


                          ],
                        ),
                        // height: 20,
                        decoration: BoxDecoration(
                            color: ColorStyle.hex('#041534').withOpacity(.4),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                width: 1,
                                color: ColorStyle.grey.withOpacity(0.3)
                            )
                        ),
                      ),

                      Positioned(

                        child: Image.asset(
                          ImageStyle.BTClogo,
                          height: 90,
                        ),),

                    ],
                  ),





                ],
              )),
        ),

      ],
    );
  }
}
