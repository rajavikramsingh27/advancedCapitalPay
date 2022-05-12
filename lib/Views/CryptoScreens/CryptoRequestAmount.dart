


import 'package:advanced_capital_pay/Components/AppBarStyle.dart';
import 'package:advanced_capital_pay/Components/BackgroundImage.dart';
import 'package:advanced_capital_pay/Components/ButtonCustom.dart';
import 'package:advanced_capital_pay/Controllers/Crypto/CryptoRecieveAmountController.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:advanced_capital_pay/Views/CryptoScreens/CryptoScanOrTake.dart';
// import 'package:advanced_capital_pay/Views/SignUp/BioMatric_Permission.dart';



class CryptoRequestAmount extends StatelessWidget {
  CryptoRequestAmount({Key? key}) : super(key: key);

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
            maxLinesTitle: 2,
            title: 'Request Amount Bitcoin (BTC)',
            styleTitle:
            TextStylesSFCompactDisplay.textStyles_18.apply(
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
          body: GetBuilder<CryptoRecieveAmountController>(
            init: CryptoRecieveAmountController(),
            initState: (state) {

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
                        'Enter amount to generate QR code',
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
                        height: 23,
                      ),

                      SizedBox(
                        height: 9,
                      ),

                      Container(
                        margin: EdgeInsets.only(left: 16, right: 16),
                        child: Column(
                          children: [
                            Container(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(
                                    borderSide: BorderSide(color: ColorStyle.hex('#EFDE64')),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: ColorStyle.hex('#EFDE64')),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: ColorStyle.hex('#EFDE64')),
                                  ),
                                  hintText: '1.28573702',
                                  hintStyle: TextStylesSFCompactDisplay.textStyles_16.apply(
                                    color: ColorStyle.hex('#EFDE64'),
                                  ),
                                  contentPadding: EdgeInsets.only(bottom: 16),
                                  suffixText: 'ETH',
                                  suffixStyle: TextStylesSFCompactDisplay.textStyles_16.apply(
                                    color: ColorStyle.hex('#EFDE64'),
                                    fontWeightDelta: 2,
                                  ),
                                  prefixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
                                ), style: TextStylesSFCompactDisplay.textStyles_16.apply(
                                color: ColorStyle.hex('#EFDE64'),
                              ),),
                              height: 30,
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '52,500.50',
                                  style: TextStylesSFCompactDisplay.textStyles_16
                                      .apply(
                                    color: ColorStyle.grey,
                                    fontWeightDelta: 2,
                                  ),
                                ),
                                Text(
                                  'USD',
                                  style: TextStylesSFCompactDisplay.textStyles_16
                                      .apply(
                                    color: ColorStyle.grey,
                                    fontWeightDelta: 1
                                  ),
                                ),
                              ],
                            ),

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
                                TextStylesSFCompactDisplay.textStyles_12.apply(
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
                        height: 18,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 16, right: 16),
                        child: ButtonContinueCancel(
                          radiusBorder: 10,
                          height: 50,
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
                            Get.to(CryptoScanOrTake());
                          },
                        ),
                      ),
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
                                      ImageStyle.share2,
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
          ),
        ),
      ],
    );
  }
}
