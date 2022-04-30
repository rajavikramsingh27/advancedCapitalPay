import 'package:advanced_capital_pay/Components/ButtonCustom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Styles/ColorStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';
import '../Views/WhileOverseas.dart';


class TravelPopUp {
  static travelPopUp() {
    return Get.dialog(
        Material(
            color: Colors.transparent,
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 18, right: 18),
                  width: MediaQuery.of(Get.context!).size.width,
                  decoration: BoxDecoration(
                    color: ColorStyle.primaryWhite,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            child: Container(
                              margin: EdgeInsets.only(right: 20),
                              width: 31,
                              height: 31,
                              child: Icon(Icons.clear),
                              decoration: BoxDecoration(
                                  color: ColorStyle.primaryWhite,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    new BoxShadow(
                                      color: Colors.black12..withOpacity(0.16),
                                      blurRadius: 50.0,
                                    ),
                                  ]),
                            ),
                            onTap: () {
                              Get.back();
                            },
                          ),

                        ],
                      ),
                      Image.asset(
                        ImageStyle.creditard,
                        width: 60,
                        height: 60,
                        // fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Text(
                        'HAVE A GREAT TRIP',
                        style: TextStyles
                            .textStyles_16
                            .apply(
                            fontWeightDelta: 2,
                            color: ColorStyle
                                .secondryBlack),
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 40, right: 40),
                      child: Text(
                          "You have successfully confirmed your travel notice. Sit back, relax and enjoy your trip.",
                          style: TextStyles
                              .textStyles_14
                              .apply(
                              fontWeightDelta: 1,
                              color: ColorStyle
                                  .secondryBlack),
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      ElevatedButtonCustom(
                        width:284,
                        text: 'Travel Dashboard',
                        colorBG: ColorStyle.darkestBlueSignUp,
                        radiusBorder: 30,
                        textStyle: TextStyles.textStyles_16.apply(
                            color: ColorStyle.primaryWhite,
                            fontWeightDelta: 1),
                        onTap: () {
                          Get.back();
                          Get.to(WhileOverseas());
                        },
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ],
            )
        )
    );
  }
}

filter() {


  return Get.dialog(
      Material(
          color: Colors.transparent,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(left: 18, right: 18),
                height: 432,
                width: MediaQuery.of(Get.context!).size.width,
                decoration: BoxDecoration(
                  color: ColorStyle.primaryWhite,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          child: Container(
                            margin: EdgeInsets.only(right: 20),
                            width: 31,
                            height: 31,
                            child: Icon(Icons.clear),
                            decoration: BoxDecoration(
                                color: ColorStyle.primaryWhite,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  new BoxShadow(
                                    color: Colors.black12..withOpacity(0.16),
                                    blurRadius: 50.0,
                                  ),
                                ]),
                          ),
                          onTap: () {
                            Get.back();
                          },
                        ),

                      ],
                    ),
                    Image.asset(
                      ImageStyle.creditard,
                      width: 100,
                      height: 100,
                      // fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      'HAVE A GREAT TRIP',
                      // controller.listApplyLeave[index],
                      style: TextStyles
                          .textStyles_16
                          .apply(
                          fontWeightDelta: 2,
                          color: ColorStyle
                              .secondryBlack),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      'You have successfully confirmed',
                      // controller.listApplyLeave[index],
                      style: TextStyles
                          .textStyles_14
                          .apply(
                          fontWeightDelta: 1,
                          color: ColorStyle
                              .secondryBlack),
                    ),
                    Text(
                      'your travel notice. Sit back, relax',
                      // controller.listApplyLeave[index],
                      style: TextStyles
                          .textStyles_14
                          .apply(
                          fontWeightDelta: 1,
                          color: ColorStyle
                              .secondryBlack),
                    ),
                    Text(
                      'and enjoy your trip.',
                      // controller.listApplyLeave[index],
                      style: TextStyles
                          .textStyles_14
                          .apply(
                          fontWeightDelta: 1,
                          color: ColorStyle
                              .secondryBlack),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    ElevatedButtonCustom(
                      width:284,
                      text: 'Travel Dashboard',
                      colorBG: ColorStyle.blueSKY,
                      radiusBorder: 30,
                      textStyle: TextStyles.textStyles_16.apply(
                          color: ColorStyle.primaryWhite,
                          fontWeightDelta: 1),
                      onTap: () {
                        // Get.to(BusinessApplication1());
                      },
                    ),

                  ],
                ),
              ),
            ],
          )
      ));
}