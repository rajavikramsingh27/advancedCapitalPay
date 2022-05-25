import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:advanced_capital_pay/Components/AppBarStyle.dart';
import 'package:advanced_capital_pay/Components/BackgroundImage.dart';
import 'package:advanced_capital_pay/Components/ButtonCustom.dart';
import 'package:advanced_capital_pay/Components/TextFieldCustom.dart';
import 'package:advanced_capital_pay/Controllers/PreferredLanguageController.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:advanced_capital_pay/Components/ButtonChat.dart';


class PreferredLanguage extends StatelessWidget {
  const PreferredLanguage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(PreferredLanguageController());


    return GetBuilder(
      init: PreferredLanguageController(),
      initState: (state) {

      },
      builder: (auth) {
        return Scaffold(
            backgroundColor: ColorStyle.darkestBlue,
            appBar: AppBarStyle(
              leadingButton: IconButton(
                icon: Image.asset(ImageStyle.back_circle, height: 30,),
                onPressed: () {
                  Get.back();
                },
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppBarStyleLeadingTitleTrailing(
                    leadingImage: ImageStyle.ellipse2,
                    nameUser: 'HARRISON SMITH',
                    descriptionUser: 'Your Personal Settings',
                    nameStyle: TextStylesPoppins.textStyles_18
                        .apply(color: ColorStyle.primaryWhite, fontWeightDelta: 1),
                    descriptionStyle: TextStylesPoppins.textStyles_12
                        .apply(color: ColorStyle.primaryWhite),
                    trailingAction: [
                      ButtonChat(),
                      IconButton(
                        icon: Image.asset(
                          ImageStyle.user_logout,
                          height: 26,
                        ),
                        onPressed: () {},
                      ),
                      SizedBox(
                        width: 6,
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      left: 20,
                    ),
                    child: Text(
                      'Preferred Language Selection',
                      style: TextStylesPoppins.textStyles_16.apply(
                          color: ColorStyle.primaryWhite,
                          fontWeightDelta: 2),
                    ),
                  ),
                  ListView.builder(
                      padding: EdgeInsets.only(
                          left: 20, right: 20, top: 10, bottom: 20),
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: controller.arrSelect.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                            padding:
                            EdgeInsets.only(left: 16),
                            margin: EdgeInsets.only(bottom: 8),
                            height: 60,
                            decoration: BoxDecoration(
                              color: ColorStyle.primaryWhite,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      controller.images[index],
                                      height: 38,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      controller
                                          .chooseLanguage[index],
                                      style: TextStylesPoppins.textStyles_14
                                          .apply(
                                          color: ColorStyle
                                              .secondryBlack,
                                          fontWeightDelta: 1),
                                    ),
                                  ],
                                ),

                                IconButton(
                                  icon: Icon(
                                    (controller.arrSelect[index]) ?
                                    Icons.check_circle : Icons.radio_button_unchecked,
                                    color: (controller.arrSelect[index]) ?
                                    ColorStyle.blueSKY : ColorStyle.grey ,
                                    size: 30,
                                  ),
                                  onPressed: () {
                                    for (int i = 0; i<controller.arrSelect.length; i++) {
                                      if (index == i) {
                                        controller.arrSelect[i] = true;
                                      } else {
                                        controller.arrSelect[i] = false;
                                      }
                                    }
                                  },
                                ),
                              ],
                            ));
                      }),
                ],
              ),
            ));
      },
    );


  }
}
