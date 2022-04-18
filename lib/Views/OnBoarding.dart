
import 'package:flutter/material.dart';
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:get/get.dart';

import '../Styles/ImageStyle.dart';
import '../Components/BackgroundImage.dart';
import '../Components/ButtonCustom.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/TextStyles.dart';
import '../Views/SignIn.dart';


class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  SwiperController _controller = SwiperController();
  int indexPage = 0;

  int totalPages = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Swiper(
        autoplay: false,
        loop: false,
        itemCount: totalPages,
        scrollDirection: Axis.horizontal,

        pagination: SwiperPagination(
            margin: EdgeInsets.only(bottom: 50),
            builder: RectSwiperPaginationBuilder(
              size: Size(66, 10),
              activeSize: Size(66, 10),
              color: ColorStyle.grayColor,
              activeColor: ColorStyle.primaryWhite,
            )),

        onIndexChanged: (index) {
          indexPage = index;
        },

        // control: SwiperControl(
        //   padding: EdgeInsets.only(left: 16, right: 16),
        //   // size: 50,
        //   color: Colors.red,
        //   disableColor: Colors.grey,
        //   iconPrevious: Icons.arrow_back_ios,
        //   iconNext: Icons.arrow_forward_ios,
        // ),

        controller: _controller,
        itemBuilder: (BuildContext context, int index) {
          // return new Image.network("http://via.placeholder.com/350x150",fit: BoxFit.fill,);
          return Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: <Widget>[
                BackgroundImage(),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: SafeArea(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Image.asset(
                            ImageStyle.logo_white,
                            height: 52,
                          ),
                        ),
                        if (index == 0)
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Image.asset(
                              ImageStyle.onBoardingImage_1,
                              width: 245,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        if (index == 1)
                          Container(
                            height: 340,
                            // color: Colors.red,
                            padding: EdgeInsets.only(
                              left: 40,
                              right: 40,
                              // top: 80
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                    top: 80,
                                    left: 0,
                                    right: 0,
                                    child: Image.asset(
                                      ImageStyle.onBoardingImage_2,
                                    )),
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  // bottom: 0,
                                  top: 110,
                                  child: Container(
                                    // height: 245,
                                    // color: Colors.red,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        AutoSizeText(
                                          'Transfer without borders to over 70+ Countries across the world',
                                          textAlign: TextAlign.center,
                                          maxLines: 3,
                                          style: TextStyles.textStyles_24.apply(
                                              color: ColorStyle.primaryWhite,
                                              fontWeightDelta: 2),
                                        ),
                                        SizedBox(
                                          height: 80,
                                        ),
                                        AutoSizeText(
                                          'Sign up for a free AdvanceCapitalPay Personal or Business account in minutes',
                                          textAlign: TextAlign.center,
                                          maxLines: 2,
                                          style: TextStyles.textStyles_14.apply(
                                            color: ColorStyle.primaryWhite,
                                            // fontWeightDelta: 2
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if (index == 2)
                          Container(
                            height: 340,
                            // color: Colors.red,
                            padding:
                                EdgeInsets.only(left: 40, right: 40, top: 5),
                            child: Stack(
                              children: [
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    right: 0,
                                    child: Image.asset(
                                      ImageStyle.onBoardingImage_3,
                                    )),
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  bottom: 0,
                                  child: AutoSizeText(
                                    'Up to 10x Cheaper than most banks with leading market rates',
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                    style: TextStyles.textStyles_14.apply(
                                      color: ColorStyle.primaryWhite,
                                      // fontWeightDelta: 2
                                    ),
                                  ),
                                ),
                                Center(
                                  child: AutoSizeText('Multi-Currency Accounts',
                                      textAlign: TextAlign.center,
                                      maxLines: 1,
                                      style: TextStyles.textStyles_24.apply(
                                          color: ColorStyle.primaryWhite,
                                          fontWeightDelta: 1)),
                                ),
                              ],
                            ),
                          ),
                        if (index == 3)
                          Container(
                            height: 340,
                            // color: Colors.red,
                            padding:
                                EdgeInsets.only(left: 40, right: 40, top: 5),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  bottom: 0,
                                  child: AutoSizeText(
                                    'Securely buy, convert and send cryptocurrencies such as Bitcoin, Etherum and USDT',
                                    textAlign: TextAlign.center,
                                    maxLines: 3,
                                    style: TextStyles.textStyles_14.apply(
                                      color: ColorStyle.primaryWhite,
                                      // fontWeightDelta: 2
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Stack(
                                    children: [
                                      Image.asset(
                                        ImageStyle.onBoardingImage_4,
                                      ),
                                      Container(
                                        height: 87,
                                        alignment: Alignment.center,
                                        child: AutoSizeText(
                                            'Access to Cryptocurrencies',
                                            textAlign: TextAlign.center,
                                            maxLines: 1,
                                            style: TextStyles.textStyles_24
                                                .apply(
                                                    color:
                                                        ColorStyle.primaryWhite,
                                                    fontWeightDelta: 1)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        Column(
                          children: [
                            ElevatedButtonCustom(
                              text: 'GET STARTED NOW',
                              colorBG: ColorStyle.blueSKY,
                              width: 210,
                              onTap: () {
                                Get.to(SignIn());
                              },
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'I already have an account',
                                  style: TextStyles.textStyles_12
                                      .apply(color: ColorStyle.primaryWhite),
                                ),
                                Icon(
                                  Icons.navigate_next,
                                  color: ColorStyle.primaryWhite,
                                  size: 30,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 130,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
