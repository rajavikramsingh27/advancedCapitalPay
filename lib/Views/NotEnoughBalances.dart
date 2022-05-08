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
        Scaffold(
          backgroundColor: Colors.transparent,
          // backgroundColor: ColorStyle.darkestBlue.withOpacity(0.3),
          body: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 100, left: 16, right: 16),
                padding: EffectStyle.padding(86, 16, 16, 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        width: 1,
                        color: ColorStyle.primaryWhite.withOpacity(0.4)
                    ),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(ImageStyle.bgRectangle228)
                    )
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height-150,
              ),
              Container(
                // width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height-50,
                margin: EdgeInsets.only(
                  // left: 30,
                  // bottom: 30
                ),
                padding: EffectStyle.padding(34, 34, 0, 0),
                decoration: BoxDecoration(
                  color: ColorStyle.hex('#041534').withOpacity(.6),
                ),
                child: SingleChildScrollView(
                  padding: EffectStyle.padding(0, 0, 0, 16),
                  child: Column(
                    children: [
                      SizedBox(height: 60),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: 44,
                            alignment: Alignment.centerRight,
                          ),
                          Container(
                            alignment: Alignment.center,
                            // width: MediaQuery.of(context).size.width-40,
                            child: Image.asset(
                              ImageStyle.BTClogo,
                              height: 90,
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            child: IconButton(
                              icon: Icon(
                                Icons.clear,
                                color: ColorStyle.whiteDuskyCrypto,
                              ),
                              // alignment: Alignment.centerRight,
                              onPressed: () {
                                Get.back();
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 24),
                      Column(

                        children: [

                      
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
                      SizedBox(
                        height: 20,
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );



  }
}
