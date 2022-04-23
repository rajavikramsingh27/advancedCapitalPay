import 'package:advanced_capital_pay/Components/AppBarStyle.dart';
import 'package:flutter/material.dart';

import '../Styles/ColorStyle.dart';
import '../Styles/EffectStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';


class AppSettings extends StatelessWidget {
  const AppSettings({Key? key}) : super(key: key);

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
          appBar: AppBarStyle(),
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            // padding: EffectStyle.padding(16, 16, 0, 0),
            child: Column(
              children: [
                Container(
                  padding: EffectStyle.padding(16, 16, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'App Settings',
                        style: TextStyles.textStyles_16.apply(
                          color: ColorStyle.primaryWhite,
                          fontWeightDelta: 1,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10,right: 10,top: 10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child:
                                  Row(
                                    children: [

                                      Image.asset(
                                        ImageStyle.user6,
                                        height: 30,
                                        width: 30,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        'My Profile',
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
                                  size: 16,
                                  color: ColorStyle.secondryBlack,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: double.infinity,
                              height: 1,
                              color: Colors.black26,
                            ),
                            SizedBox(
                              height: 12,
                            ),

                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child:
                                  Row(
                                    children: [

                                      Image.asset(
                                        ImageStyle.theme,
                                        height: 30,
                                        width: 30,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        'Appearance',
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
                                  size: 16,
                                  color: ColorStyle.secondryBlack,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: double.infinity,
                              height: 1,
                              color: Colors.black26,
                            ),
                            SizedBox(
                              height: 12,
                            ),

                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child:
                                  Row(
                                    children: [

                                      Image.asset(
                                        ImageStyle.envelope,
                                        height: 30,
                                        width: 30,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        'Messages',
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
                                  size: 16,
                                  color: ColorStyle.secondryBlack,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: double.infinity,
                              height: 1,
                              color: Colors.black26,
                            ),
                            SizedBox(
                              height: 12,
                            ),

                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child:
                                  Row(
                                    children: [

                                      Image.asset(
                                        ImageStyle.bell,
                                        height: 30,
                                        width: 30,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        'Notifications',
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
                                  size: 16,
                                  color: ColorStyle.secondryBlack,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: double.infinity,
                              height: 1,
                              color: Colors.black26,
                            ),
                            SizedBox(
                              height: 12,
                            ),

                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child:
                                  Row(
                                    children: [

                                      Image.asset(
                                        ImageStyle.browser,
                                        height: 30,
                                        width: 30,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        'Favourite Account',
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
                                Container(
                                  child: Row(
                                    children: [
                                      Text(
                                        'AED 319485739302',
                                        // controller.listApplyLeave[index],
                                        style: TextStyles
                                            .textStyles_10
                                            .apply(
                                            color: ColorStyle
                                                .secondryBlack),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        size: 16,
                                        color: ColorStyle.secondryBlack,
                                      )
                                    ],
                                  ),
                                ),

                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: double.infinity,
                              height: 1,
                              color: Colors.black26,
                            ),
                            SizedBox(
                              height: 12,
                            ),

                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child:
                                  Row(
                                    children: [

                                      Image.asset(
                                        ImageStyle.creditcards,
                                        height: 30,
                                        width: 30,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        'Favourite Card',
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
                                Container(
                                  child: Row(
                                    children: [
                                      Text(
                                        'Virtual Debit ***777',
                                        // controller.listApplyLeave[index],
                                        style: TextStyles
                                            .textStyles_10
                                            .apply(
                                            color: ColorStyle
                                                .secondryBlack),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        size: 16,
                                        color: ColorStyle.secondryBlack,
                                      )
                                    ],
                                  ),
                                ),

                              ],
                            ),

                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: double.infinity,
                              height: 1,
                              color: Colors.black26,
                            ),
                            SizedBox(
                              height: 12,
                            ),

                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child:
                                  Row(
                                    children: [

                                      Image.asset(
                                        ImageStyle.internet,
                                        height: 30,
                                        width: 30,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        'Preferred language',
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
                                  size: 16,
                                  color: ColorStyle.secondryBlack,
                                )
                              ],
                            ),
                          ],
                        ),
                        width: double.infinity,
                        height: 370,
                        decoration: BoxDecoration(
                            color: ColorStyle.primaryWhite,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      Text(
                        'Feature Settings',
                        style: TextStyles.textStyles_16.apply(
                          color: ColorStyle.primaryWhite,
                          fontWeightDelta: 1,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10,right: 10,top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              ImageStyle.pay,
                              height: 30,
                              width: 30,
                            ),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child:
                                  Row(
                                    children: [
                                      Image.asset(
                                        ImageStyle.user6,
                                        height: 30,
                                        width: 30,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        'Apple Pay',
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
                                  size: 16,
                                  color: ColorStyle.secondryBlack,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: double.infinity,
                              height: 1,
                              color: Colors.black26,
                            ),
                            SizedBox(
                              height: 12,
                            ),



                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child:
                                  Row(
                                    children: [

                                      Image.asset(
                                        ImageStyle.pricing,
                                        height: 30,
                                        width: 30,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        'Manage Subscriptions',
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
                                  size: 16,
                                  color: ColorStyle.secondryBlack,
                                )

                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: double.infinity,
                              height: 1,
                              color: Colors.black26,
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child:
                                  Row(
                                    children: [

                                      Image.asset(
                                        ImageStyle.bell,
                                        height: 30,
                                        width: 30,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        'Manage Currency Alerts',
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
                                  size: 16,
                                  color: ColorStyle.secondryBlack,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: double.infinity,
                              height: 1,
                              color: Colors.black26,
                            ),
                            SizedBox(
                              height: 12,
                            ),


                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child:
                                  Row(
                                    children: [

                                      Image.asset(
                                        ImageStyle.bill,
                                        height: 30,
                                        width: 30,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        'Statement Frequency',
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
                                  size: 16,
                                  color: ColorStyle.secondryBlack,
                                )
                              ],
                            ),

                            SizedBox(
                              height: 10,
                            ),


                          ],
                        ),
                        width: double.infinity,
                        height:250,
                        decoration: BoxDecoration(
                            color: ColorStyle.primaryWhite,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        height: 1,
                        color: Colors.black26,
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      Text(
                        'Account Settings',
                        style: TextStyles.textStyles_16.apply(
                          color: ColorStyle.primaryWhite,
                          fontWeightDelta: 1,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10,right: 10,top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child:
                                  Row(
                                    children: [

                                      Image.asset(
                                        ImageStyle.key,
                                        height: 30,
                                        width: 30,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        'Change Mobile PIN',
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
                                  size: 16,
                                  color: ColorStyle.secondryBlack,
                                )

                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: double.infinity,
                              height: 1,
                              color: Colors.black26,
                            ),
                            SizedBox(
                              height: 12,
                            ),



                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child:
                                  Row(
                                    children: [

                                      Image.asset(
                                        ImageStyle.creditcard5,
                                        height: 30,
                                        width: 30,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        'Card Security',
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
                                  size: 16,
                                  color: ColorStyle.secondryBlack,
                                )

                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: double.infinity,
                              height: 1,
                              color: Colors.black26,
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child:
                                  Row(
                                    children: [

                                      Image.asset(
                                        ImageStyle.shield,
                                        height: 30,
                                        width: 30,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        'Update Security Questions',
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
                                  size: 16,
                                  color: ColorStyle.secondryBlack,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: double.infinity,
                              height: 1,
                              color: Colors.black26,
                            ),
                            SizedBox(
                              height: 12,
                            ),


                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child:
                                  Row(
                                    children: [

                                      Image.asset(
                                        ImageStyle.sale,
                                        height: 30,
                                        width: 30,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        'Statement Frequency',
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
                                  size: 16,
                                  color: ColorStyle.secondryBlack,
                                )
                              ],
                            ),

                            SizedBox(
                              height: 10,
                            ),


                          ],
                        ),
                        width: double.infinity,
                        height:210,
                        decoration: BoxDecoration(
                            color: ColorStyle.primaryWhite,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        height: 1,
                        color: Colors.black26,
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      Text(
                        'Help Center',
                        style: TextStyles.textStyles_16.apply(
                          color: ColorStyle.primaryWhite,
                          fontWeightDelta: 1,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10,right: 10,top: 10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child:
                                  Row(
                                    children: [

                                      Image.asset(
                                        ImageStyle.customersupport,
                                        height: 30,
                                        width: 30,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        '24/7 Live Customer Support',
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
                                  size: 16,
                                  color: ColorStyle.secondryBlack,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: double.infinity,
                              height: 1,
                              color: Colors.black26,
                            ),
                            SizedBox(
                              height: 12,
                            ),

                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child:
                                  Row(
                                    children: [

                                      Image.asset(
                                        ImageStyle.request,
                                        height: 30,
                                        width: 30,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        'Submit a Request',
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
                                  size: 16,
                                  color: ColorStyle.secondryBlack,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: double.infinity,
                              height: 1,
                              color: Colors.black26,
                            ),
                            SizedBox(
                              height: 12,
                            ),

                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child:
                                  Row(
                                    children: [

                                      Image.asset(
                                        ImageStyle.faq,
                                        height: 30,
                                        width: 30,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        'Frequently Asked Questions',
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
                                  size: 16,
                                  color: ColorStyle.secondryBlack,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: double.infinity,
                              height: 1,
                              color: Colors.black26,
                            ),
                            SizedBox(
                              height: 12,
                            ),

                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child:
                                  Row(
                                    children: [

                                      Image.asset(
                                        ImageStyle.user6,
                                        height: 30,
                                        width: 30,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        'Managing My Account',
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
                                  size: 16,
                                  color: ColorStyle.secondryBlack,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: double.infinity,
                              height: 1,
                              color: Colors.black26,
                            ),
                            SizedBox(
                              height: 12,
                            ),

                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child:
                                  Row(
                                    children: [

                                      Image.asset(
                                        ImageStyle.creditcard6,
                                        height: 30,
                                        width: 30,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        'Virtual and Physical Cards',
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
                                  size: 16,
                                  color: ColorStyle.secondryBlack,
                                ),

                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: double.infinity,
                              height: 1,
                              color: Colors.black26,
                            ),
                            SizedBox(
                              height: 12,
                            ),

                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child:
                                  Row(
                                    children: [

                                      Image.asset(
                                        ImageStyle.payment3,
                                        height: 30,
                                        width: 30,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        'Making and Receiving Internationl Payments ',
                                        // controller.listApplyLeave[index],
                                        style: TextStyles
                                            .textStyles_10
                                            .apply(
                                            color: ColorStyle
                                                .secondryBlack),
                                      ),
                                    ],
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  size: 16,
                                  color: ColorStyle.secondryBlack,
                                )

                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: double.infinity,
                              height: 1,
                              color: Colors.black26,
                            ),
                            SizedBox(
                              height: 12,
                            ),

                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child:
                                  Row(
                                    children: [

                                      Image.asset(
                                        ImageStyle.cryptocurrencies,
                                        height: 30,
                                        width: 30,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      // Text(
                                      //   'Making and Receiving Internationl Payments ',
                                      //   // controller.listApplyLeave[index],
                                      //   style: TextStyles
                                      //       .textStyles_10
                                      //       .apply(
                                      //       color: ColorStyle
                                      //           .secondryBlack),
                                      // ),
                                    ],
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  size: 16,
                                  color: ColorStyle.secondryBlack,
                                )

                              ],
                            ),
                          ],
                        ),
                        width: double.infinity,
                        height: 370,
                        decoration: BoxDecoration(
                            color: ColorStyle.primaryWhite,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      SizedBox(
                        height: 20,
                      ),


                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ],
    );
  }
}
