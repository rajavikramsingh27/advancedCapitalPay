import 'package:flutter/material.dart';

import '../Components/BackgroundImage.dart';
import '../Components/ButtonCustom.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/EffectStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';
import 'CryptoDashboard.dart';

class SendBitcoins extends StatelessWidget {
  const SendBitcoins({Key? key}) : super(key: key);

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
                        // padding: EffectStyle.padding(16, 16, 0, 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20,),
                            Container(
                              padding: EffectStyle.padding(0,24, 0,0,),
                              child: Icon(
                                Icons.cancel_outlined,
                                color: ColorStyle.primaryWhite,
                              ),
                              alignment: Alignment.centerRight,
                            ),
                            SizedBox(height: 70,),
                            Container(

                           child:  Text(
                             'Send Bitcoins (BTC)',
                             textAlign: TextAlign.center,
                             style: TextStylesSFCompactDisplay
                                 .textStyles_20
                                 .apply(
                               color: ColorStyle.primaryWhite,
                               fontWeightDelta: 2,
                             ),
                           ),
                              alignment: Alignment.center,

                            ),
                            SizedBox(height: 4,),
                            Container(
                              padding: EffectStyle.padding(14, 14, 0, 0),
                              child:     Text(
                                'Enter, Paste, Scan or Select a recipient from your address book.',
                                textAlign: TextAlign.center,
                                style: TextStylesSFCompactDisplay
                                    .textStyles_14
                                    .apply(
                                  color: ColorStyle.primaryWhite,
                                  // fontWeightDelta: 2,
                                ),
                              ),
                              alignment: Alignment.center,

                            ),
                            SizedBox(height: 20,),

                              Container(
  decoration: BoxDecoration(
      color: HexColor('#041534').withOpacity(.4),
      borderRadius: BorderRadius.circular(8),
      border: Border.all(
          width: .6,
          color: ColorStyle.grey.withOpacity(0.3)
      )
  ),
),
                            SizedBox(height: 20,),
                            Container(
                              padding: EffectStyle.padding(20,20, 0,0,),
                              child:    Text(
                                'Enter Bitcoin (BTC) Address',
                                textAlign: TextAlign.center,
                                style: TextStylesSFCompactDisplay
                                    .textStyles_14
                                    .apply(
                                  color: ColorStyle.primaryWhite,
                                  fontWeightDelta: 2,
                                ),
                              ),
                              // alignment: Alignment.centerRight,
                            ),
                            SizedBox(height: 20,),
                            Container(
                              padding: EffectStyle.padding(20,20, 0,0,),
                              child:    Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  Expanded(child:  Container(
                                    padding: EffectStyle.padding(8,8, 0,0,),
                                    alignment: Alignment.center,
                                    child:  Row(
                                      children: [
                                        Expanded(child: TextField(
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText:
                                            'Enter Bitcoin (BTC) Address',
                                            hintStyle: TextStylesPoppins.textStyles_12.apply(
                                              color: ColorStyle.primaryWhite.withOpacity(.4),
                                              fontWeightDelta: 0,
                                            ),
                                          ),
                                        ),),
                                        SizedBox(width: 5,),
                                        Image.asset(ImageStyle.copy,height: 20,color: ColorStyle.primaryWhite.withOpacity(.4),),
                                      ],
                                    ),
                                    // width: 174,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: ColorStyle.secondryBlack.withOpacity(.3),
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                            width: 1,
                                            color: ColorStyle.grey.withOpacity(0.3)
                                        )
                                    ),
                                  ),),
                                  SizedBox(width: 10,),
                                  Container(
                                    alignment: Alignment.center,
                                    height: 50,
                                    width: 50,
                                    child: Image.asset(ImageStyle.Vector4,height: 20,),
                                    decoration: BoxDecoration(
                                        color: ColorStyle.secondryBlack.withOpacity(.3),
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                            width: 1,
                                            color: ColorStyle.grey.withOpacity(0.3)
                                        )
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Container(
                                    alignment: Alignment.center,
                                    height: 50,
                                    width: 50,
                                    child: Image.asset(ImageStyle.biqrcodescan,height: 20,),
                                    decoration: BoxDecoration(
                                        color: ColorStyle.secondryBlack.withOpacity(.3),
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                            width: 1,
                                            color: ColorStyle.yellow
                                        )
                                    ),
                                  ),

                                ],
                              ),
                              // alignment: Alignment.centerRight,
                            ),

                            SizedBox(height: 38,),
                            Container(
                              padding: EffectStyle.padding(20,20, 0,0,),
                              child:    Column(
                                children: [
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
                              )
                              // alignment: Alignment.centerRight,
                            ),
                            SizedBox(height: 50),



                          ],
                        ),
                        // height: 20,
                        decoration: BoxDecoration(
                            color: HexColor('#041534').withOpacity(.4),
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
