import 'package:advanced_capital_pay/Components/ButtonCustom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Controllers/StandingOrdersController.dart';
import 'package:get/utils.dart';
import '../Components/AppBarStyle.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/EffectStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';

import '../Components/ButtonCustom.dart';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../Components/AppBarStyle.dart';
import '../../Styles/ColorStyle.dart';
import '../../Styles/EffectStyle.dart';
import '../../Styles/ImageStyle.dart';
import '../../Styles/TextStyles.dart';
import '../Views/Settings/BalanceSheetCellComponenets.dart';
import '../Views/NewStandingOrder.dart';

class StandingOrders extends StatelessWidget {
  StandingOrders({Key? key}) : super(key: key);

  final controller = Get.put(StandingOrdersController());

  standingOrders() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EffectStyle.padding(16, 16, 0, 0),
          child: Text(
            'Standing Orders',
            style: TextStylesPoppins.textStyles_18
                .apply(color: ColorStyle.primaryWhite, fontWeightDelta: 1),
          ),
        ),
        ListView.separated(
          itemCount: 4,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          padding: EffectStyle.padding(16, 16, 16, 16),
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 10,
            );
          },
          itemBuilder: (context, index) {
            return BalanceSheetCellComponenets(
              titleOne: 'Savings Account',
              valueOne: 'Monthly Bill',
              titleTwo: 'Amount',
              valueTwo: '\$140.00',
            );
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          ImageStyle.tiard,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.cover,
        ),
        Scaffold(
          appBar: AppBarStyle(
            leadingButton: IconButton(
              icon: Image.asset(ImageStyle.back_circle),
              onPressed: () {
                Get.back();
              },
            ),
          ),
          backgroundColor: Colors.transparent,
          body: GetBuilder(
            init: StandingOrdersController(),
            initState: (state) {
              controller.reset();
            },
            builder: (authController) {
              return Obx(() => SingleChildScrollView(
                child: Column(
                  children: [
                    AppBarStyleLeadingTitleTrailing(
                      leadingImage: ImageStyle.ellipse2,
                      nameUser: 'HARRISON SMITH',
                      descriptionUser: 'Your Personal Settings',
                      nameStyle: TextStylesPoppins.textStyles_18.apply(
                          color: ColorStyle.primaryWhite, fontWeightDelta: 1),
                      descriptionStyle: TextStylesPoppins.textStyles_12
                          .apply(color: ColorStyle.primaryWhite),
                      trailingAction: [
                        IconButton(
                          icon: Image.asset(
                            ImageStyle.chat,
                            height: 26,
                          ),
                          onPressed: () {
                            // Get.to(MessagePage());
                          },
                        ),
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
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        left: 16,
                      ),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Active Standing Orders',
                        style: TextStylesPoppins.textStyles_14.apply(
                            color: ColorStyle.primaryWhite,
                            fontWeightDelta: 2),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EffectStyle.padding(16, 16, 0, 0),
                      child: Row(
                        children: [
                          Expanded(
                            child: ElevatedButtonCustom(
                              text: 'Sorty By Payment Date',
                              textStyle: TextStylesPoppins.textStyles_12.apply(
                                  color: controller.isPersonal.value
                                      ? ColorStyle.primaryWhite
                                      : ColorStyle.primaryWhite
                                      .withOpacity(0.7)),
                              colorBG: controller.isPersonal.value
                                  ? ColorStyle.hex('#0E4AF2')
                                  : ColorStyle.hex('#0535B1'),
                              height: 40,
                              radiusBorder: 6,
                              onTap: () {
                                controller.isPersonal.value = true;
                              },
                            ),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Expanded(
                            child: ElevatedButtonCustom(
                              text: 'Sort by A to Z',
                              textStyle: TextStylesPoppins.textStyles_12.apply(
                                  color: !controller.isPersonal.value
                                      ? ColorStyle.primaryWhite
                                      : ColorStyle.primaryWhite
                                      .withOpacity(0.7)),
                              colorBG: !controller.isPersonal.value
                                  ? ColorStyle.hex('#0E4AF2')
                                  : ColorStyle.hex('#0535B1'),
                              radiusBorder: 6,
                              height: 40,
                              onTap: () {
                                controller.isPersonal.value = false;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    standingOrders(),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButtonCustom(
                      text: 'New Standing Order',
                      textStyle: TextStylesPoppins.textStyles_14.apply(
                          color: ColorStyle.primaryWhite,
                      ),
                      colorBG: ColorStyle.darkestBlueSignUp,
                      height: 50,
                      width: MediaQuery.of(context).size.width-32,
                      radiusBorder: 50,
                      onTap: () {
                        Get.to(NewStandingOrder());
                      },
                    ),
                  ],
                ),
              ));
            },
          ),
        ),
      ],
    );
  }
}
