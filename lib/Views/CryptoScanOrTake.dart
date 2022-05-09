import 'package:advanced_capital_pay/Components/SwitchButtonCustom.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:notification_center/notification_center.dart';

import '../Components/AppBarStyle.dart';
import '../Components/ButtonCustom.dart';
import '../Components/DropdownButtonCustom.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/EffectStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';
import '../Components/BackgroundImage.dart';



class CryptoScanOrTake extends StatelessWidget {
  const CryptoScanOrTake({Key? key}) : super(key: key);

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
          backgroundColor: ColorStyle.darkestBlue.withOpacity(0.8),
          body: Container(
            padding: EdgeInsets.only(left: 14,right: 14,top: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Container(
                  padding: EdgeInsets.only(left: 10,right:10,top: 10),
                  width: double.infinity,
                  height: 537,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 10),
                      alignment: Alignment.centerRight,
                      child:
                        Icon(
                          Icons.clear,
                          color: ColorStyle.whiteDuskyCrypto,
                        ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Take or Upload Wallet QR Scan',
                      style: TextStylesSFCompactDisplay.textStyles_16
                          .apply(
                        color: ColorStyle.primaryWhite,
                        fontWeightDelta: 1,
                      ),
                    ),
                    SizedBox(
                      height: 46,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 14,right: 14),
                          width: 151,
                          height: 272,
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
                                style: TextStylesSFCompactDisplay.textStyles_14
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
                                style: TextStylesSFCompactDisplay.textStyles_12
                                    .apply(
                                  color: ColorStyle.grey,
                                  // fontWeightDelta: 2,
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                ColorStyle.hex('#092F76').withOpacity(0.6),
                                ColorStyle.hex('#025ECB').withOpacity(0.6),
                              ],
                            ),
                            image: DecorationImage(
                              image: AssetImage("assets/images/bgTransactionListCripto.pn"),
                              fit: BoxFit.cover,
                            ),
                          ),

                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 14,right: 14),
                          width: 151,
                          height: 272,
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
                                'Upload QR code',
                                style: TextStylesSFCompactDisplay.textStyles_14
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
                                style: TextStylesSFCompactDisplay.textStyles_12
                                    .apply(
                                  color: ColorStyle.grey,
                                  // fontWeightDelta: 2,
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                ColorStyle.hex('#092F76').withOpacity(0.6),
                                ColorStyle.hex('#025ECB').withOpacity(0.6),
                              ],
                            ),
                            // image: DecorationImage(
                            //   image: AssetImage("assets/images/bgTransactionListCripto.png"),
                            //   fit: BoxFit.cover,
                            // ),
                          ),

                        ),
                      ],
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 280,
                      height: 54,
                      child:Text(
                        'Cancel',
                        style: TextStylesSFCompactDisplay.textStyles_14
                            .apply(
                          color: ColorStyle.primaryWhite,
                          fontWeightDelta: 2,
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorStyle.hex('#AED1EB'),
                        // image: DecorationImage(
                        //   // image: AssetImage("assets/images/bgTransactionListCripto.png"),
                        //   fit: BoxFit.cover,
                        // ),
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: ColorStyle.blueSKY,
                  ),
                  // image: DecorationImage(
                  //   // image: AssetImage("assets/images/bgTransactionListCripto.png"),
                  //   fit: BoxFit.cover,
                  // ),
                ),
                ),
              ],
            ),
          )
        ),
      ],
    );
  }
}
