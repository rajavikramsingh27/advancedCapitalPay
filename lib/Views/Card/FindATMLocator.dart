import 'package:advanced_capital_pay/Components/GoogleMapCustom.dart';
import 'package:advanced_capital_pay/Controllers/FindATMLocatorController.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:advanced_capital_pay/Views/Card/FindATMLocatorMoreOption.dart';
import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'dart:ui';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';




class FindATMLocator extends StatelessWidget {
  FindATMLocator({Key? key}) : super(key: key);

  final controller = Get.put(FindATMLocatorController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: FindATMLocatorController(),
      initState: (state) {
       controller.reset();
      },
      builder: (auth) {
        return  Obx(() => Stack(
          children: [
            Image.asset(
              ImageStyle.tiard,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            ),
            Scaffold(
                backgroundColor: Colors.transparent,
                body: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      right: 0,
                      top: 0,
                      bottom: 0,
                      child: GoogleMapCustom(),
                    ),
                    Positioned(
                        top: 0,
                        left: 10,
                        right: 10,
                        child: SafeArea(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    blurRadius: 6,
                                    offset: Offset(0, 3), // changes position of shadow
                                  ),
                                ]
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: BackdropFilter(
                                filter: ImageFilter.blur(
                                  sigmaX: 5.0,
                                  sigmaY: 5.0,
                                ),
                                child: Container(
                                  color: Colors.white.withOpacity(0.7),
                                  alignment: Alignment.center,
                                  width: MediaQuery.of(context).size.width,
                                  height: 90.0,
                                  padding: EffectStyle.padding(20, 20, 0, 0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment
                                                .start,
                                            children: [
                                              Text(
                                                'Find ATM',
                                                style: TextStylesPoppins
                                                    .textStyles_24
                                                    .apply(
                                                    color: ColorStyle
                                                        .secondryBlack,
                                                    fontWeightDelta:
                                                    1),
                                              ),
                                              Text(
                                                'Find the nearest ATM to your',
                                                style: TextStylesPoppins
                                                    .textStyles_14
                                                    .apply(
                                                    color: ColorStyle
                                                        .secondryBlack,
                                                    fontWeightDelta:
                                                    0),
                                              ),
                                            ],
                                          ),
                                          InkWell(
                                            child: Image.asset(ImageStyle.menu_dots_Tabbar, width: 26, color: ColorStyle.secondryBlack,),
                                            onTap: () {
                                              FindATMLocatorMoreOption.findATMLocatorMoreOption();
                                            },
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                    ),
                    Positioned(
                        bottom: 0,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  blurRadius: 6,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ]
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 5.0,
                                sigmaY: 5.0,
                              ),
                              child: Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width,
                                height: 240.0,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 16,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 16,
                                        ),
                                        Text(
                                          'Related Nearby',
                                          style: TextStylesPoppins.textStyles_20.apply(
                                            color: ColorStyle.secondryBlack,
                                            // fontWeightDelta: 2
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    Container(
                                      height: 150,
                                      child: ListView.separated(
                                          padding:
                                          EffectStyle.padding(16, 16, 0, 0),
                                          scrollDirection: Axis.horizontal,
                                          itemCount: controller.arrATMNames.length,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                              width: 16,
                                            );
                                          },
                                          itemBuilder: (context, index) {
                                            return Container(
                                              width: 236,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                EffectStyle.radiusCustom(10),
                                              ),
                                              child: Stack(
                                                children: [
                                                  Image.asset(
                                                    ImageStyle.bgImageATM,
                                                    fit: BoxFit.fill,
                                                    width: double.infinity,
                                                    height: double.infinity,
                                                  ),
                                                  Container(
                                                    padding: EffectStyle.padding(
                                                        10, 10, 10, 10),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                      children: [
                                                        Column(
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                          children: [
                                                            Text(
                                                              controller
                                                                  .arrATMNames[
                                                              index],
                                                              style: TextStylesPoppins
                                                                  .textStyles_20
                                                                  .apply(
                                                                  color: ColorStyle
                                                                      .primaryWhite,
                                                                  fontWeightDelta:
                                                                  2),
                                                            ),
                                                            Text(
                                                              controller
                                                                  .arrATMLocation[
                                                              index],
                                                              style: TextStylesPoppins
                                                                  .textStyles_14
                                                                  .apply(
                                                                  color: ColorStyle
                                                                      .primaryWhite,
                                                                  fontWeightDelta:
                                                                  1),
                                                            ),
                                                          ],
                                                        ),
                                                        Text(
                                                          controller.arrATMDistance[
                                                          index],
                                                          style: TextStylesPoppins
                                                              .textStyles_12
                                                              .apply(
                                                              color: ColorStyle
                                                                  .primaryWhite,
                                                              fontWeightDelta:
                                                              0),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            );
                                          }),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                    ),
                  ],
                )
            ),
          ],
        ));
      },
    );

  }
}

