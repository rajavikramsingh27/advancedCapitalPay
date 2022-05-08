import 'package:flutter/material.dart';

import '../Components/BackgroundImage.dart';
import '../Components/ButtonCustom.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/EffectStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';
import 'CryptoScreens/CryptoDashboard.dart';


class AddContactDavid extends StatelessWidget {
  const AddContactDavid({Key? key}) : super(key: key);

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
                  Container(
                    // padding: EffectStyle.padding(16, 16, 0, 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        SizedBox(height: 8,),
                       Container(child:  Icon(
                         Icons.cancel_outlined,
                         color: ColorStyle.primaryWhite,
                       ),alignment: Alignment.centerRight,
                         padding: EffectStyle.padding(0, 16, 0, 0),),

                        SizedBox(height: 38,),
                        Container(child:   Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'All Addresses',
                              textAlign: TextAlign.center,
                              style: TextStylesSFCompactDisplay
                                  .textStyles_10
                                  .apply(
                                color: ColorStyle.primaryWhite,
                                // fontWeightDelta: 2,
                              ),
                            ),
                            Text(
                              'Favourites',
                              textAlign: TextAlign.center,
                              style: TextStylesSFCompactDisplay
                                  .textStyles_10
                                  .apply(
                                color: ColorStyle.primaryWhite,
                                // fontWeightDelta: 2,
                              ),
                            ),
                            Container(
                              width: 180,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Show Only: All Bitcoin(BTC) Contact',
                                    textAlign: TextAlign.center,
                                    style: TextStylesSFCompactDisplay
                                        .textStyles_8
                                        .apply(
                                      color: Colors.white,
                                      fontWeightDelta: 2,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_drop_down,
                                    color: ColorStyle.primaryWhite,
                                  )
                                ],
                              ),
                              decoration: BoxDecoration(
                                  color: ColorStyle.secondryBlack,
                                  borderRadius: BorderRadius.circular(18),
                                  border: Border.all(
                                      width: 1,
                                      color: ColorStyle.grey.withOpacity(0.3)
                                  )
                              ),
                            ),
                          ],
                        ),
                          padding: EffectStyle.padding(16, 16, 0, 0),),

                        SizedBox(height: 18,),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: .3,
                                  color: ColorStyle.grey
                              )
                          ),
                        ),
                        SizedBox(height: 14,),
                        Container(child:    Text(
                          'Search Address Book',
                          textAlign: TextAlign.center,
                          style: TextStylesSFCompactDisplay
                              .textStyles_14
                              .apply(
                            color: ColorStyle.primaryWhite,
                            fontWeightDelta: 1,
                          ),
                        ),
                          padding: EffectStyle.padding(16, 16, 0, 0),),

                        SizedBox(height: 28,),
                        Container(
                          child:   Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Expanded(child:  Container(
                                // margin: EdgeInsets.only(left: 4),
                                alignment: Alignment.center,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.search,
                                      color: ColorStyle.primaryWhite.withOpacity(.4),
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText:
                                          'Search by Name or Wallet Address',
                                          hintStyle: TextStylesPoppins.textStyles_12.apply(
                                            color: ColorStyle.primaryWhite.withOpacity(.4),
                                            fontWeightDelta: 0,
                                          ),
                                        ),
                                      ),
                                    )
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
                                child: Icon(
                                  Icons.add,
                                  color: ColorStyle.primaryWhite,
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
                          ),padding: EffectStyle.padding(16, 16, 0, 0),),

                        SizedBox(height: 18,),
                        Container(
                          child:     Container(
                            padding: EffectStyle.padding(16, 16, 16, 16),
                            // alignment: Alignment.center,
                            // height: 44,
                            // width: 64,
                            child: Column(

                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText:
                                    'D',
                                    hintStyle: TextStylesPoppins.textStyles_12.apply(
                                      color: ColorStyle.ligthBlue,
                                      fontWeightDelta: 0,
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: .3,
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
                                          Image.asset(ImageStyle.Icon,height: 28,),
                                          SizedBox(width: 10,),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Daniel Applebury',
                                                textAlign: TextAlign.center,
                                                style: TextStylesSFCompactDisplay
                                                    .textStyles_12
                                                    .apply(
                                                  color: Colors.white,
                                                  fontWeightDelta: 2,
                                                ),
                                              ),
                                              Text(
                                                ' BTC: Bc1qpphsvm6v9qpn4h3mfnfus0qnnd64035uz3ue',
                                                textAlign: TextAlign.center,
                                                style: TextStylesSFCompactDisplay
                                                    .textStyles_6
                                                    .apply(
                                                  color: Colors.yellow,
                                                  fontWeightDelta: 2,
                                                ),
                                              ),

                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Image.asset(ImageStyle.Vector78,height: 24,),
                                  ],
                                ),

                              ],
                            ),
                            decoration: BoxDecoration(
                                color: ColorStyle.secondryBlack.withOpacity(.4),
                                borderRadius: BorderRadius.circular(8),

                            ),
                          ),padding: EffectStyle.padding(16, 16, 0, 0),),

                        SizedBox(height: 20,),

                        SizedBox(height: 24,),
                        SizedBox(height: 10,),
                        Container(
                          child:   Column(
    children: [
      GradientButtonWithSendBitcoins(
        text: 'Cancel',

        width: MediaQuery.of(context).size.width,


        onTap: () {
          // Get.to(TabbarScreen());


        },
      ),
      SizedBox(height: 16,),
      GradientButtonWithSendBitcoinn(
        text: 'Continue',
        width: MediaQuery.of(context).size.width,


        onTap: () {
          // Get.to(TabbarScreen());
        },
      ),
    ],
    ),padding: EffectStyle.padding(16, 16, 0, 0),),

                        SizedBox(height: 40),


                      ],
                    ),
                    // height: 20,
                    decoration: BoxDecoration(
                        color: ColorStyle.hex('#041534').withOpacity(.7),
                        border: Border.all(
                            width: 1,
                            color: ColorStyle.grey.withOpacity(0.3)
                        ),
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),





                ],
              )),
        ),

      ],
    );
  }
}
