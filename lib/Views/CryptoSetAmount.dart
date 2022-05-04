import 'package:advanced_capital_pay/Components/ComponentsSignUp.dart';
import 'package:advanced_capital_pay/Components/SwitchButtonCustom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notification_center/notification_center.dart';

import '../Components/AppBarStyle.dart';
import '../Components/BackgroundImage.dart';
import '../Components/ButtonCustom.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/EffectStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';
import '../Controllers/TransferBetweenAccountController.dart';



class CryptoSetAmount extends StatelessWidget {
  CryptoSetAmount({Key? key}) : super(key: key);

  final controller = Get.put(TransferBetweenAccountController());


  iconTitleSendRecieveTrade(String title, String image) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            ColorStyle.hex('#BF55D7'),
            ColorStyle.hex('#56F9F6'),
          ],
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image, color: ColorStyle.primaryWhite, height: 30
            // fit: BoxFit.cover,
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            title,
            style: TextStylesSFCompactDisplay.textStyles_12.apply(
              color: ColorStyle.primaryWhite,
              fontWeightDelta: 1,
            ),
          ),
        ],
      ),
    );
  }


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
          appBar: AppBarStyleTitle(
            title: 'Request Amount Bitcoin (BTC)',
            styleTitle:
            TextStylesSFCompactDisplay.textStyles_20.apply(
              color: ColorStyle.primaryWhite,
              fontWeightDelta: 2,
            ),
            leadingButton: IconButton(
              icon: Image.asset(
                ImageStyle.back_circle,
                height: 30,
              ),
              onPressed: () {
                Get.back();
              },
            ),
            trailingButton: [
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    child: Icon(Icons.ios_share),
                    onTap: () {},
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    child: Container(
                      height: 30,
                      padding: EffectStyle.padding(0, 0, 0, 0),
                      decoration: BoxDecoration(
                        color: ColorStyle.hex('#3B86D1'),
                        borderRadius: EffectStyle.radiusCustom(30),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: ColorStyle.hex('#3B86D1'),
                                borderRadius:
                                EffectStyle.radiusCustom(50),
                                border: Border.all(
                                    color: ColorStyle.primaryWhite,
                                    width: 1.5)),
                            child: Text(
                              '\$',
                              textAlign: TextAlign.center,
                              style: TextStylesSFCompactDisplay
                                  .textStyles_16
                                  .apply(
                                color: ColorStyle.primaryWhite,
                                fontWeightDelta: 1,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            'USD',
                            style: TextStylesSFCompactDisplay
                                .textStyles_12
                                .apply(
                                color: ColorStyle.primaryWhite,
                                fontWeightDelta: 1),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            size: 30,
                          )
                        ],
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(
                width: 16,
              ),
            ],
          ),
          backgroundColor: ColorStyle.darkestBlue.withOpacity(0.3),
          body: SingleChildScrollView(
              padding: EffectStyle.padding(16, 16, 0, 16),
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Image.asset(
                    ImageStyle.aaaaa,
                    height: 50,
                  ),

                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Enter amount to generate QR code',
                    style: TextStylesSFCompactDisplay.textStyles_16
                        .apply(
                      color: ColorStyle.primaryWhite,
                      // fontWeightDelta: 2,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                      // width: 213,
                      height: 213,
                      child: Image.asset(
                        ImageStyle.Qrcodephoto,
                      ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: ColorStyle.blueSKY,
                        width: 2
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),


                  ),
                  SizedBox(
                    height: 23,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '1.28573702',
                        style: TextStylesSFCompactDisplay.textStyles_16
                            .apply(
                          color: ColorStyle.yellow,
                          // fontWeightDelta: 2,
                        ),
                      ),
                      Text(
                        'ETH',
                        style: TextStylesSFCompactDisplay.textStyles_16
                            .apply(
                          color: ColorStyle.yellow,
                          // fontWeightDelta: 2,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    // width: 213,
                    height: 1,
                    decoration: BoxDecoration(
                      color: ColorStyle.yellow,
                      borderRadius: BorderRadius.circular(10),
                    ),


                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '52,500.50',
                        style: TextStylesSFCompactDisplay.textStyles_16
                            .apply(
                          color: ColorStyle.grey,
                          fontWeightDelta: 3,
                        ),
                      ),
                      Text(
                        'USD',
                        style: TextStylesSFCompactDisplay.textStyles_16
                            .apply(
                          color: ColorStyle.grey,
                          // fontWeightDelta: 2,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Send only Bitcoin (BTC) to this address. Sending '
                        'any other coins may result in permanent loss.',
                    // maxLines: 2,
                    style: TextStylesSFCompactDisplay.textStyles_14.apply(
                      color: ColorStyle.primaryWhite,
                      // fontWeightDelta: 2,
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Container(
                    child: ButtonContinueCancel(
                      radiusBorder: 10,
                      height: 44,
                      textFirst: 'Back to my Wallet',
                      colorBGFirst: ColorStyle.grey,
                      // colorBorderFirst: ColorStyle.greenlight,
                      textStyleFirst: TextStylesPoppins.textStyles_14.apply(
                        fontWeightDelta: 2,
                        color: ColorStyle.hex('#FFFFFF'),
                      ),
                      onTapFirst: () {},
                      textSecond: 'Done',
                      colorBGSecond: ColorStyle.hex('#EFDE64'),
                      colorBorderSecond: Colors.transparent,
                      textStyleSecond: TextStylesPoppins.textStyles_14
                          .apply(fontWeightDelta: 2, color: ColorStyle.secondryBlack),
                      onTapSecond: () {
                        controller.index.value = controller.index.value + 1;

                        NotificationCenter().notify('updateAccount',
                            data: controller.index.value);
                      },
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child:  Column(
                          children: [
                            InkWell(
                              child:   Container(
                                decoration: BoxDecoration(
                                  color: ColorStyle.hex(
                                      '#0090FA'),
                                  borderRadius:
                                  BorderRadius.circular(
                                      50),
                                ),
                                padding: EdgeInsets.all(10),
                                child: Image.asset(
                                  ImageStyle.share2,
                                  color:
                                  ColorStyle.primaryWhite,
                                  // height: 40,
                                  width: 30,
                                  // fit: BoxFit.cover,
                                ),
                              ),
                              onTap: () {
                              },
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Share',
                              style:
                              TextStylesSFCompactDisplay
                                  .textStyles_12
                                  .apply(
                                color: ColorStyle
                                    .primaryWhite,
                                // fontWeightDelta: 2,
                              ),
                            ),
                          ],
                        ),

                      ),
                      Expanded(
                        child:  Column(
                          children: [
                            InkWell(
                              child:   Container(
                                decoration: BoxDecoration(
                                  color: ColorStyle.hex(
                                      '#0090FA'),
                                  borderRadius:
                                  BorderRadius.circular(
                                      50),
                                ),
                                padding: EdgeInsets.all(10),
                                child: Image.asset(
                                  ImageStyle.label,
                                  color:
                                  ColorStyle.primaryWhite,
                                  // height: 40,
                                  width: 30,
                                  // fit: BoxFit.cover,
                                ),
                              ),
                              onTap: () {
                              },
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Set Amount',
                              style:
                              TextStylesSFCompactDisplay
                                  .textStyles_12
                                  .apply(
                                color: ColorStyle
                                    .primaryWhite,
                                // fontWeightDelta: 2,
                              ),
                            ),
                          ],
                        ),

                      ),
                      Expanded(
                        child:  Column(
                          children: [
                            InkWell(
                              child:   Container(
                                decoration: BoxDecoration(
                                  color: ColorStyle.hex(
                                      '#0090FA'),
                                  borderRadius:
                                  BorderRadius.circular(
                                      50),
                                ),
                                padding: EdgeInsets.all(10),
                                child: Image.asset(
                                  ImageStyle.IconPrint,
                                  color:
                                  ColorStyle.primaryWhite,
                                  // height: 40,
                                  width: 30,
                                  // fit: BoxFit.cover,
                                ),
                              ),
                              onTap: () {
                              },
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Print',
                              style:
                              TextStylesSFCompactDisplay
                                  .textStyles_12
                                  .apply(
                                color: ColorStyle
                                    .primaryWhite,
                                // fontWeightDelta: 2,
                              ),
                            ),
                          ],
                        ),

                      ),
                    ],
                  ),
                ],
              )),
        ),
      ],
    );
  }
}
