import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Components/AppBarStyle.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/EffectStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';


class ApplePay extends StatelessWidget {
  const ApplePay({Key? key}) : super(key: key);

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
          appBar: AppBarStyleTitle(
            title: 'Travel Notice',
            leadingButton: IconButton(
              icon: Image.asset(
                ImageStyle.back_circle,
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
          backgroundColor: Colors.transparent,
          body:SingleChildScrollView(
            child:  Column(
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 10,right: 10,top: 10),
                        child: Column(
                          children: [
                            Image.asset(
                              ImageStyle.Group2221,
                              // height: 30,
                              // width: 30,
                            ),
                            Text(
                              'Why Notify Us Of Your Travel?',
                              // controller.listApplyLeave[index],
                              style: TextStyles
                                  .textStyles_14
                                  .apply(
                                  color: ColorStyle
                                      .secondryBlack),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              'So we can increase security around your account.',
                              // controller.listApplyLeave[index],
                              style: TextStyles
                                  .textStyles_12
                                  .apply(
                                  color: ColorStyle
                                      .blueSKY),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Letting us know your travel plans allows you '
                                  'to use your cards and accounts with confidence'
                                  ' when overseas.',
                              // controller.listApplyLeave[index],
                              style: TextStyles
                                  .textStyles_12
                                  .apply(
                                  color: ColorStyle
                                      .secondryBlack),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 16,right: 16),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        ImageStyle.creditcard,
                                        height: 30,
                                        width: 30,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Avoids any delays for your account',
                                        // controller.listApplyLeave[index],
                                        style: TextStyles
                                            .textStyles_10
                                            .apply(
                                            color: ColorStyle
                                                .secondryBlack),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        ImageStyle.creditcard,
                                        height: 30,
                                        width: 30,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Continue to use cards as usual while overseas',
                                        // controller.listApplyLeave[index],
                                        style: TextStyles
                                            .textStyles_10
                                            .apply(
                                            color: ColorStyle
                                                .secondryBlack),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height:5,
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        ImageStyle.creditcard,
                                        height: 30,
                                        width: 30,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        child:   Text(
                                          'Increased security around your account whilst you\'re away',
                                          // controller.listApplyLeave[index],
                                          style: TextStyles
                                              .textStyles_10
                                              .apply(
                                              color: ColorStyle
                                                  .secondryBlack),
                                        ),
                                        width: 250,
                                      ),

                                    ],
                                  ),
                                  SizedBox(
                                    height:10,
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        ImageStyle.creditcard,
                                        height: 30,
                                        width: 30,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        child: Text(
                                          'Quickly add, modify or delete any of your travel notices'
                                              'to keep us informed! We appreciate it to keep you and'
                                              'safe as possible!',
                                          // controller.listApplyLeave[index],
                                          style: TextStyles
                                              .textStyles_10
                                              .apply(
                                              color: ColorStyle
                                                  .secondryBlack),
                                        ),
                                        width: 250,
                                      ),

                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 148,
                              height: 37,
                              child:    Text(
                                'Add a Trip',
                                // controller.listApplyLeave[index],
                                style: TextStyles
                                    .textStyles_12
                                    .apply(
                                    color: ColorStyle
                                        .primaryWhite),
                              ),
                              decoration: BoxDecoration(
                                  color: ColorStyle.blueSKY,
                                  borderRadius: BorderRadius.circular(50)
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Row(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  width: 166,
                                  height: 36,
                                  child:  Text(
                                    'Upcoming Trips',
                                    // controller.listApplyLeave[index],
                                    style: TextStyles
                                        .textStyles_12
                                        .apply(
                                        color: ColorStyle
                                            .primaryWhite),
                                  ),
                                  decoration: BoxDecoration(
                                      color: ColorStyle.blueSKY,
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                ),
                                SizedBox(
                                  width: 1,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  width: 166,
                                  height: 37,
                                  child:    Text(
                                    'Past Trips',
                                    // controller.listApplyLeave[index],
                                    style: TextStyles
                                        .textStyles_12
                                        .apply(
                                        color: ColorStyle
                                            .primaryWhite),
                                  ),
                                  decoration: BoxDecoration(
                                      color: ColorStyle.blueLight,
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 148,
                              height: 37,
                              child:    Text(
                                'Add a Trip',
                                // controller.listApplyLeave[index],
                                style: TextStyles
                                    .textStyles_12
                                    .apply(
                                    color: ColorStyle
                                        .primaryWhite),
                              ),
                              decoration: BoxDecoration(
                                  color: ColorStyle.blueSKY,
                                  borderRadius: BorderRadius.circular(50)
                              ),
                            ),










                          ],
                        ),
                        width: double.infinity,
                        height: 590,
                        decoration: BoxDecoration(
                          color: ColorStyle.primaryWhite,
                          // borderRadius: BorderRadius.circular(10)

                        ),
                      ),
                      Image.asset(
          ImageStyle.Group2201,
          // width: 30,
        ),


                    ],
                  ),
                ),

              ],
            ),
          )
        ),
      ],
    );
  }
}
