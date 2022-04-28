import 'package:advanced_capital_pay/Controllers/YourCardController.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';
import 'package:get/get.dart';

import '../Components/AppBarStyle.dart';
import '../Components/ButtonCustom.dart';
import '../Controllers/MessagePageController.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/EffectStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';

class YourCard extends StatelessWidget {
  const YourCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SwiperController _controller = SwiperController();

    final controller = Get.put(YourCardController());

    return Stack(
      children: [
        Image.asset(
          ImageStyle.tiard,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.cover,
        ),
        Scaffold(
          appBar: AppBarStyle1(),
          backgroundColor: Colors.transparent,
          body: GetBuilder(
            init: YourCardController(),
            initState: (state) {
              controller.reset();
            },
            builder: (authController) {
              return Obx(
                () => SingleChildScrollView(
                  // padding: EffectStyle.padding(16, 16, 0, 0),
                  child: Column(
                    children: [
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
                      Text(
                        'Virtual card',
                        style: TextStyles.textStyles_14.apply(
                          color: ColorStyle.primaryWhite,
                          fontWeightDelta: 1,
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        color: ColorStyle.primaryWhite,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 12, right: 12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    'Card Settings',
                                    style: TextStyles.textStyles_16.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 1,
                                    ),
                                  ),
                                  ListView.builder(
                                      padding: EdgeInsets.only(top: 6),
                                      shrinkWrap: true,
                                      itemCount: 5,
                                      // scrollDirection: Axis.horizontal,
                                      physics: BouncingScrollPhysics(),
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return Container(
                                          padding: EdgeInsets.only(
                                              left: 12, right: 12),
                                          alignment: Alignment.center,
                                          // color: Colors.red,
                                          height: 57,
                                          width: 343,
                                          margin: EdgeInsets.all(6),
                                          // color: Colors.red,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                child: Row(
                                                  children: [
                                                    Image.asset(
                                                      ImageStyle.agp,
                                                      height: 30,
                                                      width: 30,
                                                    ),
                                                    SizedBox(
                                                      width: 16,
                                                    ),
                                                    Text(
                                                      'Contactless Payment',
                                                      // controller.listApplyLeave[index],
                                                      style: TextStyles
                                                          .textStyles_12
                                                          .apply(
                                                              color: ColorStyle
                                                                  .secondryBlack),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Icon(
                                                Icons.arrow_forward_ios_rounded,
                                                size: 20,
                                                color: Colors.black45,
                                              )
                                            ],
                                          ),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: Colors.lightBlueAccent
                                                  .withOpacity(0.1)),
                                        );
                                      }),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
