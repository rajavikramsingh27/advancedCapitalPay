import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:advanced_capital_pay/Controllers/SavingGoalController.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:advanced_capital_pay/Components/BackgroundImage.dart';
import 'package:advanced_capital_pay/Components/AppBarStyle.dart';
import 'package:get/utils.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
// import '../Views/InboxMessage.dart';
import 'Settings/AppSettings.dart';
import 'package:advanced_capital_pay/Views/SavingGoal2.dart';
import 'package:advanced_capital_pay/Components/ButtonChat.dart';


class SavingGoal extends StatelessWidget {
  const SavingGoal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SavingGoalController());
    return Stack(
      children: [
        Scaffold(
            backgroundColor: ColorStyle.primaryWhite,
            appBar: AppBarStyleLeadingTitleTrailing(
              backgroundColor: ColorStyle.darkestBlue,
              leadingImage: ImageStyle.ellipse2,
              nameStyle: TextStylesPoppins.textStyles_14
                  .apply(color: ColorStyle.primaryWhite, fontWeightDelta: 2),
              descriptionStyle: TextStylesPoppins.textStyles_12
                  .apply(color: ColorStyle.primaryWhite, fontWeightDelta: 1),
              nameUser: 'MR HARRISON SMITH',
              descriptionUser: 'Plus Personal Customer',
              timeLastLogin:
              'Last Successful login: ' + '02 Feb 2021' + '  ' + '13:53:41',
              trailingAction: [
                ButtonChat(),
                IconButton(
                  icon: Image.asset(
                    ImageStyle.settings,
                    height: 26,
                  ),
                  onPressed: () {
                    Get.to(AppSettings());
                  },
                ),
                SizedBox(
                  width: 6,
                ),
              ],
            ),
            body: GetBuilder<SavingGoalController>(
                init: SavingGoalController(),
                initState: (state) {
                  controller.reset();
                  // print(controller.listSelected.value);
                },
                builder: (authController) {
                  return Obx(() => Stack(
                    children: [
                      Positioned(
                        bottom: 0,
                        child: Container(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          color: ColorStyle.darkestBlue,
                        ),
                      ),
                      SingleChildScrollView(
                        child: Container(
                          // height: MediaQuery.of(context).size.height,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(39),
                              topLeft: Radius.circular(39),
                            ),
                            color: ColorStyle.primaryWhite,
                            image: DecorationImage(
                              image: AssetImage(ImageStyle.bg_Image),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  'Total saving',
                                  style: TextStylesPoppins.textStyles_20.apply(
                                      color: ColorStyle.grey,
                                      fontWeightDelta: 2),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  'S 8,187.89',
                                  style: TextStylesPoppins.textStyles_46.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 2),
                                ),
                              ),
                              SizedBox(
                                height: 28,
                              ),
                              Container(
                                margin:
                                EdgeInsets.only(left: 16, right: 16),
                                padding: EdgeInsets.only(
                                    top: 10, right: 10, bottom: 16),
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: ColorStyle.blueSKY,
                                      // spreadRadius: 10,
                                      blurRadius: 4,
                                      // offset: Offset(0, 7), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(8),
                                  color: ColorStyle.blueSKY,
                                ),
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.end,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: 12,
                                            ),
                                            Image.asset(
                                              ImageStyle.finance,
                                              height: 38,
                                            ),
                                            SizedBox(
                                              width: 24,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Text('You are doing',
                                                        style: TextStylesPoppins
                                                            .textStyles_12
                                                            .apply(
                                                          color: ColorStyle
                                                              .primaryWhite,
                                                        )),
                                                    Text(' great',
                                                        style: TextStylesPoppins
                                                            .textStyles_12
                                                            .apply(
                                                            color: ColorStyle
                                                                .primaryWhite,
                                                            fontWeightDelta:
                                                            3)),
                                                    Text(' this month',
                                                        style: TextStylesPoppins
                                                            .textStyles_12
                                                            .apply(
                                                          color: ColorStyle
                                                              .primaryWhite,
                                                        )),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      'with',
                                                      style: TextStylesPoppins
                                                          .textStyles_14
                                                          .apply(
                                                        color: ColorStyle
                                                            .primaryWhite,
                                                      ),
                                                    ),
                                                    Text(
                                                      ' S 730.4 ',
                                                      style: TextStylesPoppins
                                                          .textStyles_14
                                                          .apply(
                                                          color: ColorStyle
                                                              .primaryWhite,
                                                          fontWeightDelta:
                                                          2),
                                                    ),
                                                    Text(
                                                      ' saved',
                                                      style: TextStylesPoppins
                                                          .textStyles_14
                                                          .apply(
                                                        color: ColorStyle
                                                            .primaryWhite,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        InkWell(
                                          child: Icon(
                                            Icons.cancel_outlined,
                                            color: ColorStyle.primaryWhite,
                                          ),
                                          onTap: () {

                                          },
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 48,
                              ),
                              Container(
                                padding:
                                EdgeInsets.only(left: 22, right: 22),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Saving Goals',
                                      style: TextStylesPoppins.textStyles_24.apply(
                                          color: ColorStyle.secondryBlack,
                                          fontWeightDelta: 3),
                                    ),
                                    InkWell(
                                      child: Container(
                                        alignment: Alignment.center,
                                        child: Icon(
                                          Icons.add,
                                          color: ColorStyle.primaryWhite,
                                          size: 30,
                                        ),
                                        height: 36,
                                        width: 36,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(20),
                                          color: ColorStyle.blueSKY,
                                        ),
                                      ),
                                      onTap: () {
                                        Get.to(SavingGoal2());
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 28,
                              ),
                              Container(
                                height: 233,
                                child: ListView.separated(
                                    shrinkWrap: true,
                                    itemCount: controller.images.length,
                                    scrollDirection: Axis.horizontal,
                                    padding:
                                    EffectStyle.padding(16, 16, 0, 0),
                                    separatorBuilder:
                                        (BuildContext context, int index) {
                                      return Container(
                                        width: 16,
                                      );
                                    },
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Container(
                                          height: 240,
                                          width: 240,
                                          child: Stack(
                                            children: [
                                              Image.asset(
                                                controller.images[index],
                                              ),
                                              Positioned(
                                                left: 10,
                                                top: 10,
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Maldives',
                                                      style: TextStylesPoppins.textStyles_14.apply(
                                                        color: ColorStyle.primaryWhite,
                                                        fontWeightDelta: 1,
                                                      ),
                                                    ),
                                                    Text(
                                                      '168 days left',
                                                      style: TextStylesPoppins.textStyles_12.apply(
                                                        color: ColorStyle.primaryWhite.withOpacity(0.8),
                                                        fontWeightDelta: 0,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Positioned(
                                                left: 10,
                                                bottom: 10,
                                                right: 10,
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      '\$8,187.89',
                                                      style: TextStylesPoppins.textStyles_20.apply(
                                                        color: ColorStyle.primaryWhite,
                                                        fontWeightDelta: 2,
                                                      ),
                                                    ),
                                                    ClipRRect(
                                                      borderRadius: EffectStyle.radiusCustom(30),
                                                      // width: double.infinity,
                                                      // decoration: BoxDecoration(
                                                      //   borderRadius: EffectStyle.radiusCustom(130)
                                                      // ),
                                                      child: LinearProgressIndicator(
                                                        backgroundColor: ColorStyle.primaryWhite,
                                                        valueColor: AlwaysStoppedAnimation<Color>(ColorStyle.darkestBlueSignUp),
                                                        value: 0.6,
                                                      ),
                                                    ),
                                                    SizedBox(height: 4,),
                                                    Text(
                                                      'from \$ 10,916.00',
                                                      style: TextStylesPoppins.textStyles_12.apply(
                                                        color: ColorStyle.primaryWhite,
                                                        fontWeightDelta: 0,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          )
                                      );
                                    }),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),);
                })),
      ],
    );
  }
}
