import 'package:advanced_capital_pay/Components/ButtonCustom.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SendBitcoins extends StatelessWidget {
  const SendBitcoins({Key? key}) : super(key: key);

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

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

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
                                color: ColorStyle.hex('#041534').withOpacity(.4),
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




                        ],
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
                        text: 'Continue',
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
