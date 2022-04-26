import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';

import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';
import '../Components/BackgroundImage.dart';
import '../Components/AppBarStyle.dart';
import '../Components/TextFieldCustom.dart';
import '../Controllers/ChooseYourCardController.dart';
import '../Views/BioMatric_Permission.dart';
import '../Components/ButtonCustom.dart';
import '../Views/VerifyQuestion.dart';
import '../Styles/ColorStyle.dart';
import '../Views/SignIn.dart';
import '../Views/TabbarScreen.dart';



class ChooseYourCard extends StatelessWidget {
  ChooseYourCard({Key? key}) : super(key: key);

  SwiperController _controller = SwiperController();

  final controller = Get.put(ChooseYourCardController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: ChooseYourCardController(),
        initState: (state) {},
        builder: (authController) {
          return Obx(() => Stack(
                children: [
                  BackgroundImage(),
                  Scaffold(
                    backgroundColor: Colors.transparent,
                    appBar: AppBarStyle(
                      leadingButton: IconButton(
                        icon: Image.asset(
                          ImageStyle.user_logout,
                          height: 30,
                        ),
                        onPressed: () {},
                      ),
                      trailingButton: IconButton(
                        icon: Image.asset(
                          ImageStyle.chat,
                          height: 30,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    body: SingleChildScrollView(
                      padding: EdgeInsets.only(
                        // left: 30,
                        // right: 30,
                        top: 80,
                        bottom: 30,
                      ),
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Choose your card',
                            style: TextStyles.textStyles_20.apply(
                              color: ColorStyle.primaryWhite,
                              fontWeightDelta: 1,
                            ),
                          ),
                          SizedBox(height: 22),
                          Container(
                            height: 300,
                            child: Swiper(
                              autoplay: false,
                              loop: false,
                              itemCount: controller.arrCardsImage.length,
                              scrollDirection: Axis.horizontal,
                              pagination: SwiperPagination(
                                margin: EdgeInsets.only(top: 100),
                                builder: new DotSwiperPaginationBuilder(
                                  color: ColorStyle.grayColor,
                                  activeColor: ColorStyle.primaryWhite,
                                ),
                              ),
                              control: SwiperControl(
                                padding: EdgeInsets.only(left: 6, right: 6),
                                size: 26,
                                color: Colors.white,
                                disableColor: Colors.white,
                                iconPrevious: Icons.arrow_back_ios_outlined,
                                iconNext: Icons.arrow_forward_ios,
                              ),
                              controller: _controller,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  padding: EdgeInsets.only(left: 40, right: 40),
                                  child: Image.asset(
                                    controller.arrCardsImage[index],
                                    // fit: BoxFit.contain,
                                    width: MediaQuery.of(context).size.width,
                                    height: 250,
                                  ),
                                );
                              },
                              onIndexChanged: (index) {
                                controller.indexPage.value = index;
                              },
                            ),
                          ),
                          Container(
                            padding: EffectStyle.padding(30, 30, 0, 0),
                            child: Column(
                              children: [
                                SizedBox(height: 50),
                                Text(
                                  controller.arrTitles[controller.indexPage.value],
                                  style: TextStyles.textStyles_20.apply(
                                    color: ColorStyle.primaryWhite,
                                    fontWeightDelta: 1,
                                  ),
                                ),
                                SizedBox(height: 10),
                                AutoSizeText(
                                  controller.arrDescription[controller.indexPage.value],
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                  style: TextStyles.autoSizeText.apply(
                                    color: ColorStyle.primaryWhite,
                                  ),
                                ),
                                SizedBox(height: 60),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      ImageStyle.delivered,
                                      width: 30,
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      'Delivery £4.95',
                                      style: TextStyles.textStyles_14.apply(
                                        color: ColorStyle.darkBlue,
                                        fontWeightDelta: 0,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                GradientButtonWithArrow(
                                  text: controller.arrButtonTitle[controller.indexPage.value],
                                  width: MediaQuery.of(context).size.width,
                                  imageName: ImageStyle.bg_Button,
                                  icon: Icons.arrow_forward_ios_outlined,
                                  onTap: () {
                                    Get.to(TabbarScreen());
                                  },
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ));
        });
  }
}
