import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Components/AppBarStyle.dart';
import '../Components/DropdownButtonCustom.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/EffectStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';


class TransactionList extends StatelessWidget {
  const TransactionList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          ImageStyle.chaintechnologybackground,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.cover,
        ),
        Scaffold(
          appBar: AppBarStyleTitle(
            backgroundColor: ColorStyle.darkestBlue,
            title: 'Bitcoin (BTC)',
            leadingButton: IconButton(
              icon: Image.asset(
                ImageStyle.back_circle,
                height: 30,
              ),
              onPressed: () {
                Get.back();
              },
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
          body: SingleChildScrollView(
            padding: EffectStyle.padding(16, 16, 0, 0),
              child: Column(
                children: [
                  // swiperView(),
                  SizedBox(
                    height: 15,
                  ),
                  Image.asset(
                    ImageStyle.BTClogo,
                    height: 90,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    '1.35346 BTC',
                    style: TextStyles.textStyles_32.apply(
                      color: ColorStyle.yellow,
                      fontWeightDelta: 2,
                    ),
                  ),
                  Text(
                    '10,035.35 USD',
                    style: TextStyles.textStyles_24.apply(
                      color: ColorStyle.primaryWhite,
                      // fontWeightDelta: 2,
                    ),
                  ),
                  Text(
                    '+7.47% | +\$2,414.62',
                    style: TextStyles.textStyles_20.apply(
                      color: ColorStyle.greenlight,
                      // fontWeightDelta: 2,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [

                                ColorStyle.Grediats,
                                ColorStyle.Grediat
                              ],
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(ImageStyle.Iconsend,
                                  color: ColorStyle.primaryWhite,
                                  height: 30
                                // fit: BoxFit.cover,
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                'Send',
                                style: TextStyles.textStyles_10.apply(
                                  color: ColorStyle.primaryWhite,
                                  fontWeightDelta: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [

                                ColorStyle.Grediats,
                                ColorStyle.Grediat
                              ],
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(ImageStyle.Iconrecievemoney,
                                  color: ColorStyle.primaryWhite, height: 30
                                // fit: BoxFit.cover,
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                'Receive',
                                style: TextStyles.textStyles_10.apply(
                                  color: ColorStyle.primaryWhite,
                                  fontWeightDelta: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [

                                ColorStyle.Grediats,
                                ColorStyle.Grediat
                              ],
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(ImageStyle.Icontrade,
                                  color: ColorStyle.primaryWhite, height: 30
                                // fit: BoxFit.cover,
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                'Trade',
                                style: TextStyles.textStyles_10.apply(
                                  color: ColorStyle.primaryWhite,
                                  fontWeightDelta: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // SizedBox(
                      //   width: 16,
                      // ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: double.infinity,
                    // height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      color: ColorStyle.hex('#274174'),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.only(top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              'Transaction History',
                              style: TextStyles.textStyles_10.apply(
                                color: ColorStyle.primaryWhite,
                                fontWeightDelta: 1,
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 2),
                              // width: 107,
                              height: 25,
                              decoration: BoxDecoration(
                                color: ColorStyle.bluedark.withOpacity(0.8),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              // padding: EdgeInsets.only(top: 10, bottom: 10),
                              child:Row(
                                mainAxisAlignment:MainAxisAlignment.center,
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'All Transactions',
                                    style: TextStyles.textStyles_10.apply(
                                      color: ColorStyle.primaryWhite,
                                      // fontWeightDelta: 1,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_drop_down_sharp,
                                    color: ColorStyle.primaryWhite,
                                  ),
                                ],
                              ),



                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 3),
                              width: 55,
                              height: 25,
                              decoration: BoxDecoration(
                                  color: ColorStyle.bluedark.withOpacity(0.8),
                                  borderRadius: BorderRadius.circular(30),
                              ),
                              // padding: EdgeInsets.only(top: 10, bottom: 10),
                              child:Row(
                                mainAxisAlignment:MainAxisAlignment.center,
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Form',
                                    style: TextStyles.textStyles_10.apply(
                                      color: ColorStyle.primaryWhite,
                                      // fontWeightDelta: 1,
                                    ),
                                  ),
                                  Icon(
                                      Icons.arrow_drop_down_sharp,
                                    color: ColorStyle.primaryWhite,
                                  ),
                                ],
                              ),



                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 3),
                              width: 42,
                              height: 25,
                              decoration: BoxDecoration(
                                  color: ColorStyle.bluedark.withOpacity(0.8),
                                  borderRadius: BorderRadius.circular(30),
                              ),
                              // padding: EdgeInsets.only(top: 10, bottom: 10),
                              child:Row(
                                mainAxisAlignment:MainAxisAlignment.center,
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'To',
                                    style: TextStyles.textStyles_10.apply(
                                      color: ColorStyle.primaryWhite,
                                      // fontWeightDelta: 1,
                                    ),
                                  ),
                                  Icon(
                                      Icons.arrow_drop_down_sharp,
                                    color: ColorStyle.primaryWhite,
                                  ),
                                ],
                              ),



                            ),
                          ],
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Container(
                          height: 1,
                          width: double.infinity,
                          color: ColorStyle.grey,
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        ListView.builder(
                            padding: EdgeInsets.only(
                              left: 16, right: 16,),
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount:8,
                            // controller.chooseAccountDetails.length,
                            itemBuilder:
                                (BuildContext context, int index) {
                              return  Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Friday, 21st December 2021',
                                    style: TextStyles.textStyles_8.apply(
                                      color: ColorStyle.primaryWhite,
                                      // fontWeightDelta: 2,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 11,
                                  ),
                                  Row(
                                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color:ColorStyle.blueSKY,
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        // padding: EdgeInsets.only(top: 10, bottom: 10),
                                        child:  Image.asset(
                                          ImageStyle.Iconrecievemoney,
                                          color: ColorStyle.primaryWhite,
                                          // height: 5,
                                          width: 20,
                                          // fit: BoxFit.cover,
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 10),
                                        // width: 42,
                                        // height: 25,
                                        // padding: EdgeInsets.only(top: 10, bottom: 10),
                                        child:Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  'Received',
                                                  style: TextStyles.textStyles_12.apply(
                                                    color: ColorStyle.primaryWhite,
                                                    fontWeightDelta: 2,
                                                  ),
                                                ),
                                                Text(
                                                  '+0.392 BTC',
                                                  style: TextStyles.textStyles_12.apply(
                                                    color: ColorStyle.primaryWhite,
                                                    fontWeightDelta: 2,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              'Bc1qpphsvm6v9qpn4h3mfnfus0qnnd64035uz3ue',
                                              style: TextStyles.textStyles_8.apply(
                                                color: ColorStyle.yellow,
                                                // fontWeightDelta: 2,
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  '12th Feb, 18:40',
                                                  style: TextStyles.textStyles_10.apply(
                                                    color: ColorStyle.grey,
                                                    // fontWeightDelta: 2,
                                                  ),
                                                ),
                                                Text(
                                                  '+ \$2,3535.565',
                                                  style: TextStyles.textStyles_10.apply(
                                                    color: ColorStyle.grey,
                                                    // fontWeightDelta: 2,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      // Container(
                                      //   // padding: EdgeInsets.only(left: 3),
                                      //   // width: 42,
                                      //   // height: 25,
                                      //   // padding: EdgeInsets.only(top: 10, bottom: 10),
                                      //   child:Column(
                                      //     crossAxisAlignment: CrossAxisAlignment.start,
                                      //     children: [
                                      //       Expanded(
                                      //         child: Row(
                                      //         // mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                      //         children: [
                                      //           Text(
                                      //             'Received',
                                      //             style: TextStyles.textStyles_12.apply(
                                      //               color: ColorStyle.primaryWhite,
                                      //               fontWeightDelta: 2,
                                      //             ),
                                      //           ),
                                      //           Text(
                                      //             '+0.392 BTC',
                                      //             style: TextStyles.textStyles_12.apply(
                                      //               color: ColorStyle.primaryWhite,
                                      //               fontWeightDelta: 2,
                                      //             ),
                                      //           ),
                                      //         ],
                                      //       ),),
                                      //       Text(
                                      //         'Bc1qpphsvm6v9qpn4h3mfnfus0qnnd64035uz3ue',
                                      //         style: TextStyles.textStyles_10.apply(
                                      //           color: ColorStyle.yellow,
                                      //           // fontWeightDelta: 2,
                                      //         ),
                                      //       ),
                                      //       Expanded(child: Row(
                                      //         // mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                      //         children: [
                                      //           Text(
                                      //             '12th Feb, 18:40',
                                      //             style: TextStyles.textStyles_10.apply(
                                      //               color: ColorStyle.grey,
                                      //               // fontWeightDelta: 2,
                                      //             ),
                                      //           ),
                                      //           Text(
                                      //             '+ \$2,3535.565',
                                      //             style: TextStyles.textStyles_10.apply(
                                      //               color: ColorStyle.grey,
                                      //               // fontWeightDelta: 2,
                                      //             ),
                                      //           ),
                                      //         ],
                                      //       ),)
                                      //     ],
                                      //   ),
                                      // ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 14,
                                  ),
                                  Container(
                                    height: 1,
                                    width: double.infinity,
                                    color: ColorStyle.grey,
                                  ),
                                ],
                              );
                            }),


                      ],
                    ),
                  ),
                ],
              )),
        ),
      ],
    );
  }
}
