import 'package:advanced_capital_pay/Components/ButtonCustom.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CryptoTransactionDetails extends StatelessWidget {
  const CryptoTransactionDetails({Key? key}) : super(key: key);

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
                        color: ColorStyle.primaryWhite.withOpacity(0.4)),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(ImageStyle.bgRectangle228))),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 150,
              ),
              Container(
                // width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 50,
                margin: EdgeInsets.only(
                    // left: 30,
                    // bottom: 30
                    ),
                padding: EffectStyle.padding(30, 30, 0, 0),
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
                      SizedBox(height: 16),
                      Text(
                        'Transaction Details',
                        textAlign: TextAlign.center,
                        style: TextStylesSFCompactDisplay.textStyles_20.apply(
                          color: ColorStyle.primaryWhite,
                          fontWeightDelta: 2,
                        ),
                      ),
                      Text(
                        '-S 78.55 USD',
                        textAlign: TextAlign.center,
                        style: TextStylesSFCompactDisplay.textStyles_18.apply(
                          color: ColorStyle.primaryWhite,
                          // fontWeightDelta: 2,
                        ),
                      ),
                      Text(
                        '-0.00185831 BTC',
                        textAlign: TextAlign.center,
                        style: TextStylesSFCompactDisplay.textStyles_18.apply(
                          color: ColorStyle.yellow,
                          // fontWeightDelta: 2,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        padding: EffectStyle.padding(16, 16, 16, 16),
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
                            SizedBox(
                              height: 20,
                            ),
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
                                Image.asset(
                                  ImageStyle.copy,
                                  height: 20,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
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
                                Image.asset(
                                  ImageStyle.copy,
                                  height: 20,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
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
                            SizedBox(
                              height: 20,
                            ),
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
                            SizedBox(
                              height: 20,
                            ),
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
                                Image.asset(
                                  ImageStyle.copy,
                                  height: 20,
                                ),
                              ],
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: ColorStyle.secondryBlack.withOpacity(0.36),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'View Transaction On Block Explorer',
                        textAlign: TextAlign.center,
                        style: TextStylesSFCompactDisplay.textStyles_14.apply(
                          color: ColorStyle.primaryWhite,
                          fontWeightDelta: 2,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GradientButtonWithSendBitcoins(
                        text: 'Back to My Wallet',
                        width: MediaQuery.of(context).size.width,
                        onTap: () {
                          // Get.to(TabbarScreen());
                        },
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      GradientButtonWithSendBitcoin(
                        text: 'Share Transaction',
                        width: MediaQuery.of(context).size.width,
                        onTap: () {
                          // Get.to(TabbarScreen());
                        },
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
