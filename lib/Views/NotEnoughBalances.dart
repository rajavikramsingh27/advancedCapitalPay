import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Components/AppBarStyle.dart';
import '../Components/BackgroundImage.dart';
import '../Components/ButtonCustom.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/EffectStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';
import 'CryptoDashboard.dart';

class NotEnoughBalances extends StatelessWidget {
  const NotEnoughBalances({Key? key}) : super(key: key);

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
                                         child:  Icon(
                                           Icons.cancel_outlined,
                                           color: ColorStyle.primaryWhite,
                                         ),alignment: Alignment.centerRight),
                                       SizedBox(height: 70,),
                                       Text(
                                         'Send Bitcoins(BTC)',
                                         textAlign: TextAlign.center,
                                         style: TextStylesSFCompactDisplay
                                             .textStyles_20
                                             .apply(
                                           color: ColorStyle.primaryWhite,
                                           fontWeightDelta: 2,
                                         ),
                                       ),
                                       SizedBox(height: 38,),
                                       Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                         children: [
                                           Container(
                                             child: Row(
                                               children: [
                                                 Image.asset(
                                                   ImageStyle.bitcoinbtclogo,
                                                   height: 40,
                                                 ),
                                                 SizedBox(width: 10,),
                                                 Text(
                                                   'BTC',
                                                   textAlign: TextAlign.center,
                                                   style: TextStylesSFCompactDisplay
                                                       .textStyles_20
                                                       .apply(
                                                     color: ColorStyle.primaryWhite,
                                                     fontWeightDelta: 2,
                                                   ),
                                                 ),
                                               ],
                                             ),
                                           ),
                                           Text(
                                             '1,18489028',
                                             textAlign: TextAlign.center,
                                             style: TextStylesSFCompactDisplay
                                                 .textStyles_20
                                                 .apply(
                                               color: ColorStyle.yellowCrypto,
                                               // fontWeightDelta: 2,
                                             ),
                                           ),
                                         ],
                                       ),
                                       SizedBox(height: 10,),
                                       Container(
                                         decoration: BoxDecoration(
                                             border: Border.all(
                                                 width: 1,
                                                 color: ColorStyle.grey
                                             )
                                         ),
                                       ),
                                       SizedBox(height: 10,),
                                       Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                         children: [
                                           Container(
                                             child: Row(
                                               children: [
                                                 Image.asset(
                                                   ImageStyle.emojionelagforuoutlyingislands,
                                                   height: 40,
                                                 ),
                                                 SizedBox(width: 10,),
                                                 Text(
                                                   'USD',
                                                   textAlign: TextAlign.center,
                                                   style: TextStylesSFCompactDisplay
                                                       .textStyles_20
                                                       .apply(
                                                     color: ColorStyle.primaryWhite,
                                                     fontWeightDelta: 2,
                                                   ),
                                                 ),
                                               ],
                                             ),
                                           ),
                                           Text(
                                             '50,000',
                                             textAlign: TextAlign.center,
                                             style: TextStylesSFCompactDisplay
                                                 .textStyles_20
                                                 .apply(
                                               color: ColorStyle.primaryWhite,
                                               // fontWeightDelta: 2,
                                             ),
                                           ),
                                         ],
                                       ),
                                       SizedBox(height: 10,),
                                       Text(
                                         'Not Enough Balances',
                                         textAlign: TextAlign.center,
                                         style: TextStylesSFCompactDisplay
                                             .textStyles_14
                                             .apply(
                                           color: Colors.red.withOpacity(0.6),
                                           fontWeightDelta: 2,
                                         ),
                                       ),
                                       SizedBox(height: 10,),
                                       Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                         children: [
                                           Container(
                                             alignment: Alignment.center,
                                             height: 44,
                                             width: 64,
                                             child:  Text(
                                               'Custom',
                                               textAlign: TextAlign.center,
                                               style: TextStylesSFCompactDisplay
                                                   .textStyles_12
                                                   .apply(
                                                 color: Colors.white60.withOpacity(0.6),
                                                 fontWeightDelta: 2,
                                               ),
                                             ),
                                             decoration: BoxDecoration(
                                                 color: ColorStyle.secondryBlack.withOpacity(.4),
                                                 borderRadius: BorderRadius.circular(8),
                                                 border: Border.all(
                                                     width: 1,
                                                     color: ColorStyle.grey.withOpacity(0.3)
                                                 )
                                             ),
                                           ),
                                           Container(
                                             alignment: Alignment.center,
                                             height: 44,
                                             width: 64,
                                             child:  Text(
                                               'Min',
                                               textAlign: TextAlign.center,
                                               style: TextStylesSFCompactDisplay
                                                   .textStyles_12
                                                   .apply(
                                                 color: Colors.white60.withOpacity(0.6),
                                                 fontWeightDelta: 2,
                                               ),
                                             ),
                                             decoration: BoxDecoration(
                                                 color: ColorStyle.secondryBlack.withOpacity(.4),
                                                 borderRadius: BorderRadius.circular(8),
                                                 border: Border.all(
                                                     width: 1,
                                                     color: ColorStyle.grey.withOpacity(0.3)
                                                 )
                                             ),
                                           ),
                                           Container(
                                             alignment: Alignment.center,
                                             height: 44,
                                             width: 64,
                                             child:  Text(
                                               'Half',
                                               textAlign: TextAlign.center,
                                               style: TextStylesSFCompactDisplay
                                                   .textStyles_14
                                                   .apply(
                                                 color: Colors.white60.withOpacity(0.6),
                                                 fontWeightDelta: 2,
                                               ),
                                             ),
                                             decoration: BoxDecoration(
                                                 color: ColorStyle.secondryBlack.withOpacity(.4),
                                                 borderRadius: BorderRadius.circular(8),
                                                 border: Border.all(
                                                     width: 1,
                                                     color: ColorStyle.grey.withOpacity(0.3)
                                                 )
                                             ),
                                           ),
                                           Container(
                                             alignment: Alignment.center,
                                             height: 44,
                                             width: 64,
                                             child:  Text(
                                               'All',
                                               textAlign: TextAlign.center,
                                               style: TextStylesSFCompactDisplay
                                                   .textStyles_14
                                                   .apply(
                                                 color: Colors.white60.withOpacity(0.6),
                                                 fontWeightDelta: 2,
                                               ),
                                             ),
                                             decoration: BoxDecoration(
                                                 color: ColorStyle.secondryBlack.withOpacity(.4),
                                                 borderRadius: BorderRadius.circular(8),
                                                 border: Border.all(
                                                     width: 1,
                                                     color: ColorStyle.grey.withOpacity(0.3)
                                                 )
                                             ),
                                           ),
                                         ],
                                       ),
                                       SizedBox(height: 20,),
                                       Container(
                                         padding: EffectStyle.padding(16, 16, 16, 16),
                                         // alignment: Alignment.center,
                                         // height: 44,
                                         // width: 64,
                                         child: Column(

                                           crossAxisAlignment: CrossAxisAlignment.start,
                                           children: [
                                             Text(
                                               'Balance After',
                                               textAlign: TextAlign.center,
                                               style: TextStylesSFCompactDisplay
                                                   .textStyles_14
                                                   .apply(
                                                 color: Colors.white,
                                                 fontWeightDelta: 2,
                                               ),
                                             ),
                                             Row(

                                               children: [
                                                 Text(
                                                   '0.00185831 BTC | ',
                                                   textAlign: TextAlign.center,
                                                   style: TextStylesSFCompactDisplay
                                                       .textStyles_12
                                                       .apply(
                                                     color: Colors.yellow.withOpacity(0.6),
                                                     fontWeightDelta: 2,
                                                   ),
                                                 ),
                                                 Text(
                                                   ' 79.46 USD',
                                                   textAlign: TextAlign.center,
                                                   style: TextStylesSFCompactDisplay
                                                       .textStyles_12
                                                       .apply(
                                                     color: Colors.white,
                                                     fontWeightDelta: 2,
                                                   ),
                                                 ),
                                               ],
                                             ),
                                             SizedBox(height: 30,),
                                             Text(
                                               'Network Free',
                                               textAlign: TextAlign.center,
                                               style: TextStylesSFCompactDisplay
                                                   .textStyles_14
                                                   .apply(
                                                 color: Colors.white,
                                                 fontWeightDelta: 2,
                                               ),
                                             ),
                                             Row(
                                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                               children: [

                                                 Container(child: Row(
                                                   children: [
                                                     Text(
                                                       '0.0000083 BTC |',
                                                       textAlign: TextAlign.center,
                                                       style: TextStylesSFCompactDisplay
                                                           .textStyles_12
                                                           .apply(
                                                         color: Colors.yellow.withOpacity(0.6),
                                                         fontWeightDelta: 2,
                                                       ),
                                                     ),
                                                     Text(
                                                       ' 0.3514 USD',
                                                       textAlign: TextAlign.center,
                                                       style: TextStylesSFCompactDisplay
                                                           .textStyles_12
                                                           .apply(
                                                         color: Colors.white,
                                                         fontWeightDelta: 2,
                                                       ),
                                                     ),
                                                   ],
                                                 ),),
                                                 Text(
                                                   'Fast',
                                                   textAlign: TextAlign.center,
                                                   style: TextStylesSFCompactDisplay
                                                       .textStyles_14
                                                       .apply(
                                                     color: ColorStyle.blueSKY,
                                                     // fontWeightDelta: 2,
                                                   ),
                                                 ),
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
                                       Row(
                                         children: [
                                           Image.asset(ImageStyle.Path122,height: 14,),
                                           Image.asset(ImageStyle.Group221,height: 24,),
                                         ],
                                       ),
                                       SizedBox(height: 10,),
                                       Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                         children: [
                                           Text(
                                             'Slow',
                                             textAlign: TextAlign.center,
                                             style: TextStylesSFCompactDisplay
                                                 .textStyles_12
                                                 .apply(
                                               color: Colors.red.withOpacity(0.6),
                                               // fontWeightDelta: 2,
                                             ),
                                           ),
                                           Text(
                                             'Recommended',
                                             textAlign: TextAlign.center,
                                             style: TextStylesSFCompactDisplay
                                                 .textStyles_12
                                                 .apply(
                                               color: ColorStyle.blueSKY,
                                               // fontWeightDelta: 2,
                                             ),
                                           ),
                                           Text(
                                             'Fast',
                                             textAlign: TextAlign.center,
                                             style: TextStylesSFCompactDisplay
                                                 .textStyles_12
                                                 .apply(
                                               color: ColorStyle.blueSKY,
                                               fontWeightDelta: 2,
                                             ),
                                           ),
                                         ],
                                       ),
                                       SizedBox(height: 24,),

                                       GradientButtonWithSendBitcoins(
                                         text: 'Back to Address Book',

                                         width: MediaQuery.of(context).size.width,


                                         onTap: () {
                                           // Get.to(TabbarScreen());
                                         },
                                       ),
                                       SizedBox(height: 16,),
                                       GradientButtonWithSendBitcoin(
                                         text: 'Continue to Summary',

                                         width: MediaQuery.of(context).size.width,


                                         onTap: () {
                                           // Get.to(TabbarScreen());
                                         },
                                       ),
                                       SizedBox(height: 20,),


                                     ],
                                   ),
                                   // height: 20,
                                   decoration: BoxDecoration(
                                       color: ColorStyle.hex('#041534').withOpacity(.4),
                                       border: Border.all(
                                           width: 1,
                                           color: ColorStyle.grey.withOpacity(0.3)
                                       )
                                   ),
                                 ),
                                 SizedBox(height: 20,),


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
