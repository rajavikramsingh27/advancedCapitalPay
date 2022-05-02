import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Controllers/MoreScreenController.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/EffectStyle.dart';
import '../Styles/TextStyles.dart';
import '../Styles/ImageStyle.dart';

class MoreScreen {
  static moreScreen() {
    final controller = Get.put(MoreScreenController());

    return Get.bottomSheet(
      Material(
          color: Colors.transparent,
          child: Container(
              alignment: Alignment.bottomCenter,
              // padding: EffectStyle.padding(20, 20, 20, 20),
              decoration: BoxDecoration(borderRadius: EffectStyle.radiusCustom(14)),
              child: Scaffold(
                backgroundColor: Colors.transparent,
                body: GetBuilder(
                  init: MoreScreenController(),
                  initState: (state) {
                    controller.reset();
                  },
                  builder: (authController) {
                    return Obx(() => Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        // IconButton(
                        //   icon: Icon(Icons.cancel, size: 36, color: Colors.red,),
                        //   onPressed: () {
                        //     Get.back();
                        //   },
                        // ),
                        // SizedBox(height: 40,),
                        ListView.separated(
                            shrinkWrap: true,
                            itemCount: controller.arrMoreTitle.length,
                            padding: EdgeInsets.only(bottom: 100),
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                height: 10,
                              );
                            },
                            itemBuilder: (context, index) {
                              return Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 216,
                                    padding: EffectStyle.padding(16, 16, 6, 6),
                                    decoration: BoxDecoration(
                                        color: ColorStyle.primaryWhite,
                                        borderRadius: EffectStyle.radiusCustom(30),
                                        border: Border.all(
                                          color: ColorStyle.hex('#0066FF'),
                                          width: 1,
                                        )),
                                    child: Row(
                                      children: [
                                        Container(
                                          child: controller.arrMoreIcons[index],
                                          height: 20,
                                        ),
                                        SizedBox(
                                          width: 6,
                                        ),
                                        Text(
                                          controller.arrMoreTitle[index],
                                          style: TextStylesPoppins.textStyles_14.apply(
                                              color: ColorStyle.hex('#0066FF'),
                                              fontWeightDelta: 0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            })
                      ],
                    ));
                  },
                ),
              ),
          )
      ),
      // isScrollControlled: true,
      isDismissible: true,
      // enableDrag: true,
    );
  }
}


