import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Controllers/FindATMLocatorController.dart';
import '../../../Styles/ColorStyle.dart';
import '../../../Styles/EffectStyle.dart';
import '../../../Styles/ImageStyle.dart';
import '../../../Styles/TextStyles.dart';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class FindATMLocatorMoreOption {
  static findATMLocatorMoreOption() {
    final controller = Get.put(FindATMLocatorController());

    return Get.dialog(Material(
        color: Colors.transparent,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          // appBar: AppBar(
          //   elevation: 0,
          //   backgroundColor: Colors.transparent,
          //   leading: SizedBox(),
          //   actions: [
          //     IconButton(
          //       icon: Icon(Icons.cancel, size: 44, color: Colors.red,),
          //       onPressed: () {
          //         Get.back();
          //       },
          //     ),
          //     SizedBox(width: 20,),
          //   ],
          // ),
          body: GetBuilder(
            init: FindATMLocatorController(),
            initState: (state) {},
            builder: (authController) {
              return Obx(() => Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: MediaQuery.of(Get.context!).size.width,
                        padding: EffectStyle.padding(20, 20, 20, 20),
                        decoration: BoxDecoration(
                            borderRadius: EffectStyle.radiusCustom(20),
                            color: ColorStyle.primaryWhite),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Set Radius',
                              style: TextStyles.textStyles_20.apply(
                                color: ColorStyle.secondryBlack,
                                fontWeightDelta: 1,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  icon: Image.asset(
                                    ImageStyle.minusRadius,
                                    height: 50,
                                  ),
                                  onPressed: () {},
                                ),
                                Text(
                                  '850m',
                                  style: TextStyles.textStyles_20.apply(
                                    color: ColorStyle.hex('#1478FF'),
                                    fontWeightDelta: 1,
                                  ),
                                ),
                                IconButton(
                                  icon: Image.asset(
                                    ImageStyle.plusRadius,
                                    height: 50,
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),

                            SfSlider(
                              min: 0.toInt(),
                              max: 100.toInt(),
                              value: controller.rangeValue.value,
                              // interval: 20,
                              // showTicks: true,
                              // showLabels: true,
                              enableTooltip: true,
                              minorTicksPerInterval: 1,
                              activeColor: ColorStyle.hex('#1478FF'),
                              inactiveColor: ColorStyle.hex('#707070'),
                              onChanged: (dynamic value) {
                                controller.rangeValue.value = value;
                              },
                            ),
                            Container(
                              height: 40,
                              child: ListView.separated(
                                itemCount: 6,
                                scrollDirection: Axis.horizontal,
                                separatorBuilder: (context, index) {
                                  return SizedBox(
                                    width: 16,
                                  );
                                },
                                itemBuilder: (context, index) {
                                  return Container(
                                    // width: 200,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: ColorStyle.hex('#CBE1FF'),
                                      borderRadius:
                                          EffectStyle.radiusCustom(8),
                                    ),
                                    padding: EffectStyle.padding(20, 20, 6, 6),
                                    child: Text(
                                      '100m',
                                      style: TextStyles.textStyles_16.apply(
                                        color: ColorStyle.grey,
                                        fontWeightDelta: 1,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Row(
                              children: [
                                Expanded(
                                    child: InkWell(
                                  child: Container(
                                    height: 54,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: ColorStyle.primaryWhite,
                                      borderRadius:
                                          EffectStyle.radiusCustom(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          // spreadRadius: 6,
                                          blurRadius: 6,
                                          offset: Offset(0, 0),
                                        ),
                                      ],
                                    ),
                                    child: Text(
                                      'Cancel',
                                      style: TextStyles.textStyles_16.apply(
                                        color: ColorStyle.grey,
                                        fontWeightDelta: 1,
                                      ),
                                    ),
                                  ),
                                  onTap: () {
                                    Get.back();
                                  },
                                )),
                                SizedBox(
                                  width: 30,
                                ),
                                Expanded(
                                    child: InkWell(
                                  child: Container(
                                    height: 54,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: ColorStyle.hex('#1478FF'),
                                      borderRadius:
                                          EffectStyle.radiusCustom(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          // spreadRadius: 6,
                                          blurRadius: 6,
                                          offset: Offset(0, 0),
                                        ),
                                      ],
                                    ),
                                    child: Text(
                                      'Accept',
                                      style: TextStyles.textStyles_16.apply(
                                        color: ColorStyle.primaryWhite,
                                        fontWeightDelta: 1,
                                      ),
                                    ),
                                  ),
                                  onTap: () {},
                                )),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ));
            },
          ),
        )));
  }
}
