import 'package:advanced_capital_pay/Components/AppBarStyle.dart';
import 'package:advanced_capital_pay/Components/ButtonChat.dart';
import 'package:advanced_capital_pay/Components/ButtonCustom.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:advanced_capital_pay/Controllers/MainDashboardController.dart';
import 'package:get/utils.dart';

class TransactionDetails extends StatelessWidget {
  TransactionDetails({Key? key}) : super(key: key);

  borderTwoSide() {
    return BorderRadius.only(
      topLeft: Radius.circular(30),
      topRight: Radius.circular(30),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarStyleLeadingTitleTrailing(
        backgroundColor: ColorStyle.darkestBlue,
        leadingImage: ImageStyle.ellipse2,
        nameUser: 'MR HARRISON SMITH',
        descriptionUser: 'Plus Personal Customer',
        timeLastLogin:
        'Last Successful login: ' + '02 Feb 2021' + '  ' + '13:53:41',
        nameStyle: TextStylesPoppins.textStyles_14
            .apply(color: ColorStyle.primaryWhite, fontWeightDelta: 2),
        descriptionStyle: TextStylesPoppins.textStyles_12
            .apply(color: ColorStyle.primaryWhite, fontWeightDelta: 1),
        trailingAction: [
          ButtonChat(),
          IconButton(
            icon: Image.asset(
              ImageStyle.settings,
              height: 26,
            ),
            onPressed: () {
              // Get.to(AppSettings());
            },
          ),
          SizedBox(
            width: 6,
          ),
        ],
      ),
      backgroundColor: ColorStyle.primaryWhite,
      body: SingleChildScrollView(
        child: Container(
          height: 760,
          child: Stack(
            children: [
              Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: borderTwoSide(),
                        // child: GoogleMapCustom(),
                      ),
                      Positioned(
                          left: 16,
                          right: 0,
                          top: 6,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                child: Image.asset(
                                  ImageStyle.back_circle,
                                  height: 30,
                                  color: ColorStyle.secondryBlack,
                                ),
                                onTap: () {
                                  Get.back();
                                },
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      Icons.share_outlined,
                                      color: ColorStyle.secondryBlack,
                                    ),
                                    onPressed: () {},
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.more_vert,
                                        size: 30,
                                        color: ColorStyle.secondryBlack),
                                    onPressed: () {},
                                  ),
                                ],
                              )
                            ],
                          )),
                    ],
                  )),
              Positioned(
                top: 280,
                left: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.only(
                    top: 16,
                    bottom: 30,
                    right: 16,
                    left: 16,
                  ),
                  decoration: BoxDecoration(
                    color: ColorStyle.hex('#D0EBFF'),
                    borderRadius: borderTwoSide(),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          '\$ 8.10',
                          style: TextStylesPoppins.textStyles_32.apply(
                            color: ColorStyle.secondryBlack,
                            fontWeightDelta: 3,
                          ),
                        ),
                        alignment: Alignment.centerRight,
                        width: MediaQuery.of(context).size.width,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Costa Coffee',
                        style: TextStylesPoppins.textStyles_16.apply(
                          color: ColorStyle.secondryBlack,
                          fontWeightDelta: 2,
                        ),
                      ),
                      Text(
                        '14 Street, Green Community Village \nSunday, 17th April 2021, 14:31',
                        style: TextStylesPoppins.textStyles_12.apply(
                          color: ColorStyle.secondryBlack,
                          fontWeightDelta: 1,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 250,
                left: 10,
                child: Image.asset(
                  ImageStyle.agp,
                  height: 100,
                  width: 100,
                ),
              ),
              Positioned(
                top: 450,
                left: 0,
                right: 0,
                child: Container(
                  height: 300,
                  padding: EffectStyle.padding(16, 16, 16, 16),
                  decoration: BoxDecoration(
                    color: ColorStyle.primaryWhite,
                    borderRadius: borderTwoSide(),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(ImageStyle.Edit, color: ColorStyle.secondryBlack, height: 26,),
                          Expanded(child: TextField(
                            style: TextStylesPoppins.textStyles_14.apply(
                                color: ColorStyle.secondryBlack,
                                fontWeightDelta: 1
                            ),
                            decoration: InputDecoration(
                              hintText: 'Add Note',
                              hintStyle: TextStylesPoppins.textStyles_14.apply(
                                  color: ColorStyle.grey,
                                  fontWeightDelta: 1
                              ),
                              contentPadding: EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 0),
                              border: InputBorder.none,
                            ),
                          ),),
                        ],
                      ),
                      Text(
                        'Your Coast History',
                        style: TextStylesPoppins.textStyles_14.apply(
                          color: ColorStyle.secondryBlack,
                          fontWeightDelta: 0,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        padding: EffectStyle.padding(16, 16, 12, 12),
                        decoration: BoxDecoration(
                          color: ColorStyle.hex('#F5F5F5'),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Number of Visits',
                              style: TextStylesPoppins.textStyles_14.apply(
                                color: ColorStyle.secondryBlack,
                                fontWeightDelta: 1,
                              ),
                            ),
                            Text(
                              '42',
                              style: TextStylesPoppins.textStyles_14.apply(
                                color: ColorStyle.secondryBlack,
                                fontWeightDelta: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        padding: EffectStyle.padding(16, 16, 12, 12),
                        decoration: BoxDecoration(
                          color: ColorStyle.hex('#F5F5F5'),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Average Spend',
                              style: TextStylesPoppins.textStyles_14.apply(
                                color: ColorStyle.secondryBlack,
                                fontWeightDelta: 1,
                              ),
                            ),
                            Text(
                              '\$ 3.89',
                              style: TextStylesPoppins.textStyles_14.apply(
                                color: ColorStyle.secondryBlack,
                                fontWeightDelta: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        padding: EffectStyle.padding(16, 16, 12, 12),
                        decoration: BoxDecoration(
                          color: ColorStyle.hex('#F5F5F5'),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Last Spend',
                              style: TextStylesPoppins.textStyles_14.apply(
                                color: ColorStyle.secondryBlack,
                                fontWeightDelta: 1,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'Thursday, 11th September',
                                  style: TextStylesPoppins.textStyles_10.apply(
                                    color: ColorStyle.grey,
                                    fontWeightDelta: 1,
                                  ),
                                ),
                                Text(
                                  '15:34 pm',
                                  style: TextStylesPoppins.textStyles_10.apply(
                                    color: ColorStyle.grey,
                                    fontWeightDelta: 1,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                  top: 400,
                  right: 16,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: ColorStyle.primaryWhite,
                      borderRadius: EffectStyle.radiusCustom(100),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          // spreadRadius: 5,
                          blurRadius: 6,
                          offset: Offset(0, 0), // changes position of shadow
                        ),
                      ],
                    ),
                    padding: EffectStyle.padding(16, 16, 16, 16),
                    child: Image.asset(ImageStyle.cutlery),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
