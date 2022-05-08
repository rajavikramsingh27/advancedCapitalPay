import 'package:advanced_capital_pay/Components/SwitchButtonCustom.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:notification_center/notification_center.dart';

import '../../Components/AppBarStyle.dart';
import '../../Components/ButtonCustom.dart';
import '../../Components/DropdownButtonCustom.dart';
import '../../Styles/ColorStyle.dart';
import '../../Styles/EffectStyle.dart';
import '../../Styles/ImageStyle.dart';
import '../../Styles/TextStyles.dart';
import '../../Components/BackgroundImage.dart';
import 'dart:ui';

class CryptoScanOrTake extends StatelessWidget {
  const CryptoScanOrTake({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // BackgroundImage(
        //   imageName: ImageStyle.bgTransactionListCripto,
        // ),
        // BackdropFilter(
        //   filter: ImageFilter.blur(
        //     sigmaX: 6.0,
        //     sigmaY: 6.0,
        //   ),
        //   child: Container(
        //     width: MediaQuery.of(context).size.width,
        //     height: MediaQuery.of(context).size.height,
        //     decoration: BoxDecoration(
        //         color: ColorStyle.hex('#263767').withOpacity(0.2),
        //         ),
        //     // color: Colors.red,
        //   ),
        // ),
        Scaffold(
          backgroundColor: Colors.transparent,
            // backgroundColor: ColorStyle.darkestBlue.withOpacity(0.8),
            body: Container(
              padding: EdgeInsets.only(
                left: 14,
                right: 14,
              ),
              child: Center(
                  child: Container(
                width: double.infinity,
                height: 550,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: ColorStyle.primaryWhite.withOpacity(0.3),
                  ),
                  image: DecorationImage(
                    image: AssetImage(ImageStyle.bgRectangle228),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                        top: 0,
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          // width: MediaQuery.of(context).size.width,
                          // height: MediaQuery.of(context).size.height,
                          decoration: BoxDecoration(
                            color: ColorStyle.hex('#263767').withOpacity(0.5),
                          ),
                          // color: Colors.red,
                        )),
                    Container(
                      padding: EdgeInsets.only(left: 16,right:16,top: 16, bottom: 50),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: ColorStyle.primaryWhite.withOpacity(0.3),
                        ),
                        // image: DecorationImage(
                        //   image: AssetImage(ImageStyle.bgRectangle228),
                        //   fit: BoxFit.cover,
                        // ),
                        // gradient: LinearGradient(
                        //   begin: Alignment.topCenter,
                        //   end: Alignment.topCenter,
                        //   colors: [
                        //     ColorStyle.hex('#041534'),
                        //     ColorStyle.hex('#02397C'),
                        //   ],
                        // )
                      ),
                      child: Column(
                        children: [
                          InkWell(
                            child: Container(
                              padding: EdgeInsets.only(right: 10),
                              alignment: Alignment.centerRight,
                              child: Icon(
                                Icons.clear,
                                color: ColorStyle.whiteDuskyCrypto,
                              ),
                            ),
                            onTap: () {
                              Get.back();
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Take or Upload Wallet QR Scan',
                            style:
                                TextStylesSFCompactDisplay.textStyles_16.apply(
                              color: ColorStyle.primaryWhite,
                              fontWeightDelta: 2,
                            ),
                          ),
                          SizedBox(
                            height: 46,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                  child: Container(
                                padding: EdgeInsets.only(left: 14, right: 14),
                                height: 272,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: ColorStyle.primaryWhite
                                          .withOpacity(0.4),
                                      width: 0.4),
                                  image: DecorationImage(
                                    image:
                                        AssetImage(ImageStyle.bgRectangle2282),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 35,
                                    ),
                                    Image.asset(
                                      ImageStyle.QRcodescan,
                                      height: 80,
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      'Upload QR code',
                                      style: TextStylesSFCompactDisplay
                                          .textStyles_14
                                          .apply(
                                        color: ColorStyle.primaryWhite,
                                        // fontWeightDelta: 2,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 14,
                                    ),
                                    Text(
                                      'Select to upload '
                                      'wallet QR code  '
                                      'from a file or image',
                                      textAlign: TextAlign.center,
                                      // maxLines: 3,
                                      style: TextStylesSFCompactDisplay
                                          .textStyles_12
                                          .apply(
                                        color: ColorStyle.primaryWhite
                                            .withOpacity(0.6),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                              SizedBox(
                                width: 6,
                              ),
                              Expanded(
                                  child: Container(
                                padding: EdgeInsets.only(left: 14, right: 14),
                                height: 272,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: ColorStyle.primaryWhite
                                          .withOpacity(0.4),
                                      width: 0.4),
                                  image: DecorationImage(
                                    image:
                                    AssetImage(ImageStyle.bgRectangle2282),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 35,
                                    ),
                                    Image.asset(
                                      ImageStyle.antdesigncameraoutlined,
                                      height: 80,
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      'Camera Scan',
                                      style: TextStylesSFCompactDisplay
                                          .textStyles_14
                                          .apply(
                                        color: ColorStyle.primaryWhite,
                                        // fontWeightDelta: 2,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 14,
                                    ),
                                    Text(
                                      'Select to scan '
                                      'wallet QR using '
                                      ' your camera',
                                      textAlign: TextAlign.center,
                                      // maxLines: 3,
                                      style: TextStylesSFCompactDisplay
                                          .textStyles_12
                                          .apply(
                                        color: ColorStyle.primaryWhite
                                            .withOpacity(0.6),
                                        // fontWeightDelta: 2,
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                            ],
                          ),
                          SizedBox(
                            height: 35,
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width,
                            height: 54,
                            margin: EdgeInsets.only(left: 16, right: 16),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: ColorStyle.hex('#AED1EB'),
                            ),
                            child: Text(
                              'Cancel',
                              style: TextStylesSFCompactDisplay.textStyles_14
                                  .apply(
                                color: ColorStyle.primaryWhite,
                                fontWeightDelta: 2,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
            )),
      ],
    );
  }
}
