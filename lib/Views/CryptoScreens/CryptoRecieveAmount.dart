import 'package:advanced_capital_pay/Components/ComponentsSignUp.dart';
import 'package:advanced_capital_pay/Components/SwitchButtonCustom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notification_center/notification_center.dart';

import '../../Components/AppBarStyle.dart';
import '../../Components/BackgroundImage.dart';
import '../../Components/ButtonCustom.dart';
import '../../Styles/ColorStyle.dart';
import '../../Styles/EffectStyle.dart';
import '../../Styles/ImageStyle.dart';
import '../../Styles/TextStyles.dart';
import '../../Controllers/Crypto/CryptoRecieveAmountController.dart';
import 'CryptoScanOrTake.dart';

class CryptoRecieveAmount extends StatelessWidget {
  CryptoRecieveAmount({Key? key}) : super(key: key);

  final controller = Get.put(CryptoRecieveAmountController());

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
            title: 'Recieve Bitcoi (BTC)',
            styleTitle: TextStylesSFCompactDisplay.textStyles_20.apply(
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
                  IconButton(
                    icon: Icon(
                      Icons.info_outline,
                      size: 30,
                    ),
                    onPressed: () {},
                  )
                ],
              ),
              SizedBox(
                width: 16,
              ),
            ],
          ),
          backgroundColor: ColorStyle.darkestBlue.withOpacity(0.3),
          body: GetBuilder<CryptoRecieveAmountController>(
            init: CryptoRecieveAmountController(),
            initState: (state) {
              controller.reset();
            },
            builder: (authController) {
              return Obx(()=>SingleChildScrollView(
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
                        'BTC QR Code:',
                        style: TextStylesSFCompactDisplay.textStyles_16.apply(
                          color: ColorStyle.primaryWhite,
                          // fontWeightDelta: 2,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 200,
                        padding: EdgeInsets.all(10),
                        child: Image.asset(
                          ImageStyle.Qrcodephoto,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: ColorStyle.blueSKY, width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'USDT (Trc20) Address:',
                        style: TextStylesSFCompactDisplay.textStyles_14.apply(
                          color: ColorStyle.primaryWhite,
                          // fontWeightDelta: 2,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 40,
                        margin: EdgeInsets.only(left: 16, right: 16),
                        padding: EdgeInsets.only(left: 16, right: 16),
                        decoration: BoxDecoration(
                          color: ColorStyle.hex('#5D7FAD'),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'bc1qrtszg377mcwsdfgvpemwzvg2urutwhtmpnk4fy',
                              style: TextStylesSFCompactDisplay.textStyles_10.apply(
                                color: ColorStyle.primaryWhite,
                              ),
                            ),
                            Icon(
                              Icons.copy,
                              size: 24,
                              color: ColorStyle.primaryWhite,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                          padding: EdgeInsets.only(left: 16, right: 16),
                          child: Column(
                            children: [
                              Text(
                                'Send only Bitcoin (BTC) to this address.',
                                textAlign: TextAlign.center,
                                style:
                                TextStylesSFCompactDisplay.textStyles_11.apply(
                                  color: ColorStyle.primaryWhite,
                                ),
                              ),
                              Text(
                                'Sending any other coins may result in permanent loss.',
                                textAlign: TextAlign.center,
                                style:
                                TextStylesSFCompactDisplay.textStyles_11.apply(
                                  color: ColorStyle.primaryWhite,
                                ),
                              ),
                            ],
                          )),
                      SizedBox(
                        height: 24,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 30, right: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              child: Column(
                                children: [
                                  Container(
                                    child: Image.asset(
                                      ImageStyle.copy,
                                      height: 30,
                                    ),
                                    decoration: BoxDecoration(
                                        color: (controller.numberCopySetAmountShare.value == 1) ? ColorStyle.hex('#1478FF') : ColorStyle.hex('#5F6B90'),
                                        borderRadius: EffectStyle.radiusCustom(60)),
                                    padding: EdgeInsets.all(16),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    'Copy',
                                    style: TextStylesSFCompactDisplay.textStyles_12
                                        .apply(
                                      color: ColorStyle.primaryWhite,
                                      // fontWeightDelta: 2,
                                    ),
                                  ),
                                ],
                              ),
                              onTap: () {
                                controller.numberCopySetAmountShare.value = 1;
                              },
                            ),
                            InkWell(
                              child: Column(
                                children: [
                                  Container(
                                    child: Image.asset(
                                      ImageStyle.label,
                                      height: 30,
                                    ),
                                    decoration: BoxDecoration(
                                        color: (controller.numberCopySetAmountShare.value == 2) ? ColorStyle.hex('#1478FF') : ColorStyle.hex('#5F6B90'),
                                        borderRadius: EffectStyle.radiusCustom(60)),
                                    padding: EdgeInsets.all(16),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    'Set Amount',
                                    style: TextStylesSFCompactDisplay.textStyles_12
                                        .apply(
                                      color: ColorStyle.primaryWhite,
                                      // fontWeightDelta: 2,
                                    ),
                                  ),
                                ],
                              ),
                              onTap: () {
                                controller.numberCopySetAmountShare.value = 2;
                              },
                            ),
                            InkWell(
                              child: Column(
                                children: [
                                  Container(
                                    child: Image.asset(
                                      ImageStyle.share2,
                                      height: 30,
                                    ),
                                    decoration: BoxDecoration(
                                        color: (controller.numberCopySetAmountShare.value == 3) ? ColorStyle.hex('#1478FF') : ColorStyle.hex('#5F6B90'),
                                        borderRadius: EffectStyle.radiusCustom(60)),
                                    padding: EdgeInsets.all(16),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    'Share',
                                    style: TextStylesSFCompactDisplay.textStyles_12
                                        .apply(
                                      color: ColorStyle.primaryWhite,
                                      // fontWeightDelta: 2,
                                    ),
                                  ),
                                ],
                              ),
                              onTap: () {
                                controller.numberCopySetAmountShare.value = 3;
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  )));
            },
          )
        ),
      ],
    );
  }
}
