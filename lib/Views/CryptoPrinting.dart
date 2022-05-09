import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Components/AppBarStyle.dart';
import '../Components/BackgroundImage.dart';
import '../Components/ButtonCustom.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/EffectStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';


class CryptoPrinting extends StatelessWidget {
  const CryptoPrinting({Key? key}) : super(key: key);

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
          imageName: ImageStyle.Backgrundimage,
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
              // padding: EffectStyle.padding(16, 16, 0, 16),
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
                  Container(
                    height:560,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 16,right: 16),
                          height: 50,
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Cancel',
                                style: TextStylesSFCompactDisplay.textStyles_14
                                    .apply(
                                  color: ColorStyle.hex(
                                      '#0E79E6'),
                                  // fontWeightDelta: 2,
                                ),
                              ),
                              Text(
                                'Printer Option',
                                style: TextStylesSFCompactDisplay.textStyles_14
                                    .apply(
                                  color: ColorStyle.primaryWhite,
                                  // fontWeightDelta: 2,
                                ),
                              ),
                              Text(
                                'Print',
                                style: TextStylesSFCompactDisplay.textStyles_14
                                    .apply(
                                  color: ColorStyle.hex(
                                      '#0E79E6'),
                                  // fontWeightDelta: 2,
                                ),
                              ),

                            ],
                          ),
                          decoration: BoxDecoration(
                            color: ColorStyle.hex(
                                '#272C36'),
                            borderRadius:  BorderRadius.only(
                                topRight: Radius.circular(10.0),
                                topLeft: Radius.circular(10.0))
                          )
                          ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 16,right: 16),
                          padding: EdgeInsets.only(left: 16,right: 16),
                          height: 150,
                          child:  Column(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Printer',
                                    style: TextStylesSFCompactDisplay.textStyles_14
                                        .apply(
                                      color: ColorStyle.primaryWhite,
                                      // fontWeightDelta: 2,
                                    ),
                                  ),
                                  Text(
                                    'HP PageWide Pro 477dw MFP...',
                                    style: TextStylesSFCompactDisplay.textStyles_14
                                        .apply(
                                      color: ColorStyle.grey,
                                      // fontWeightDelta: 2,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 2,
                                decoration: BoxDecoration(
                                  color: ColorStyle.hex(
                                      '#303239'),
                                  borderRadius:
                                  BorderRadius.circular(
                                      20),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '1 Copy',
                                    style: TextStylesSFCompactDisplay.textStyles_14
                                        .apply(
                                      color: ColorStyle.primaryWhite,
                                      // fontWeightDelta: 2,
                                    ),
                                  ),
                                Container(
                                  width: 70,
                                  height: 25,
                                  padding: EdgeInsets.only(left: 6,right: 6),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                          Icons.remove,
                                        size: 15,
                                        color: ColorStyle.primaryWhite,
                                      ),
                                      Container(
                                        width: 1,
                                        height: 10,
                                        decoration: BoxDecoration(
                                          color: ColorStyle.primaryWhite,
                                          borderRadius:
                                          BorderRadius.circular(
                                              20),
                                        ),
                                      ),
                                      Icon(
                                        Icons.add,
                                        size: 15,
                                        color: ColorStyle.primaryWhite,
                                      ),
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorStyle.hex(
                                        '#303239'),
                                    borderRadius:
                                    BorderRadius.circular(
                                        5),
                                  ),
                                ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 2,
                                decoration: BoxDecoration(
                                  color: ColorStyle.hex(
                                      '#303239'),
                                  borderRadius:
                                  BorderRadius.circular(
                                      20),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Options',
                                    style: TextStylesSFCompactDisplay.textStyles_14
                                        .apply(
                                      color: ColorStyle.primaryWhite,
                                      // fontWeightDelta: 2,
                                    ),
                                  ),
                                  Text(
                                    'Double-sided, Color',
                                    style: TextStylesSFCompactDisplay.textStyles_14
                                        .apply(
                                      color: ColorStyle.grey,
                                      // fontWeightDelta: 2,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: ColorStyle.hex(
                                '#272C36'),
                            borderRadius:
                            BorderRadius.circular(
                                20),
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: ColorStyle.hex(
                          '#1B2027'),
                      // border: Border.all(color: ColorStyle.blueSKY),
                      borderRadius: BorderRadius.circular(
                          10),
                    ),
                    ),
                ],
              )),
        ),
      ],
    );
  }
}
