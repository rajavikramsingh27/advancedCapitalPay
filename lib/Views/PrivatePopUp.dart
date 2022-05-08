import 'package:advanced_capital_pay/Controllers/SignUpController.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controllers/PrivatePopUpController.dart';
import '../Styles/TextStyles.dart';

class PrivatePopUp extends StatelessWidget {
  const PrivatePopUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(PrivatePopUpController());
    return Scaffold(
      backgroundColor: ColorStyle.blueLight.withOpacity(.6),
      body: GetBuilder<PrivatePopUpController>(
          init: PrivatePopUpController(),
          initState: (state) {
            // controller.reset();
            // print(controller.listSelected.value);
          },
          builder: (authController) {
            return Obx(() =>  Center(
              child:  Container(

                margin: EdgeInsets.only(left: 20,right: 20,),

                child: ListView.builder(
                  padding: EdgeInsets.only(left:2,bottom: 20),
                    shrinkWrap: true,
                    itemCount: controller.choosePopularImages.length,
                    // itemCount: 1,
                    // scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemBuilder:
                        (BuildContext context, int index) {
                      return Column(
                        children: [
                          SizedBox(height: 26,),
                      Row(
                      children: [
                      Image.asset(
                        controller.choosePopularImages[index],
                        height: 50,),
                          SizedBox(width: 20,),
                          Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text(
                          // 'Popular',
                          controller
                              .choosePrivate[index],
                          style: TextStylesPoppins.textStyles_18.apply(
                          color: ColorStyle.secondryBlack,
                          // fontWeightDelta: 2
                          ),
                          ),
                          SizedBox(height: 4,),
                          Text(
                          // 'Popular',
                          controller
                              .choosePrivate1[index],
                          style: TextStylesPoppins.textStyles_16.apply(
                          color: ColorStyle.secondryBlack,
                          // fontWeightDelta: 2
                          ),
                          ),
                          ],
                          )
                          ],
                          )
                        ],
                      );
                    }),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                    color: ColorStyle.primaryWhite,
                    border: Border.all(
                        width: 2,
                        color: ColorStyle.grey
                    )
                ),

              ),
            )
            );
          })

    );
  }
}
