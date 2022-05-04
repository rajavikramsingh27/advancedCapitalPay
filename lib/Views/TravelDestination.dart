import 'package:advanced_capital_pay/Components/ButtonCustom.dart';
import 'package:advanced_capital_pay/Components/TextFieldCustom.dart';
import 'package:flutter/material.dart';

import '../Components/AppBarStyle.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';
import 'package:get/get.dart';
import '../Views/NewBeneficiary.dart';
import 'package:get/get.dart';


class TravelDestination extends StatelessWidget {
  const TravelDestination({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarStyleTitle(
          backgroundColor: ColorStyle.darkestBlue,
          title: 'Travel Destination',
          leadingButton: IconButton(
            icon: Image.asset(
              ImageStyle.back_circle,
              height: 30,
            ),
            onPressed: () {
              Get.back();
            },
          ),
          trailingButton: [IconButton(
            icon: Image.asset(
              ImageStyle.chat,
              height: 30,
            ),
            onPressed: () {},
          )],
        ),
        backgroundColor: ColorStyle.primaryWhite,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                ImageStyle.Group2201,
                // width: 30,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding:
                      EdgeInsets.only(left: 20, right: 20, top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Where are you going?',
                            // controller.listApplyLeave[index],
                            style: TextStylesPoppins.textStyles_16.apply(
                                fontWeightDelta: 2,
                                color: ColorStyle.secondryBlack),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          TextFieldCustomPrefix(
                            hintText: 'Search for a country',
                            textStyle: TextStylesPoppins.textStyles_14.apply(
                                fontWeightDelta: 2,
                                color: ColorStyle.secondryBlack),
                            colorFill: ColorStyle.primaryWhite,
                            radiusBorder: 40,
                            prefix: Icon(
                              Icons.search,
                              color: ColorStyle.grey,
                              size: 30,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'You have not selected any countries',
                            // controller.listApplyLeave[index],
                            style: TextStylesPoppins.textStyles_12
                                .apply(color: Colors.red,
                                fontWeightDelta: 1),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            'Tell us what your planned destinations are, '
                                'including any stopovers. We\'ll make '
                                'sure your account is working and secure.',
                            // controller.listApplyLeave[index],
                            style: TextStylesPoppins.textStyles_12
                                .apply(color: ColorStyle.secondryBlack),
                          ),
                          SizedBox(
                            height: 11,
                          ),
                          Text(
                            'Selected Desintation',
                            // controller.listApplyLeave[index],
                            style: TextStylesPoppins.textStyles_14
                                .apply(color: ColorStyle.secondryBlack,
                                fontWeightDelta: 1),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Germany',
                                // controller.listApplyLeave[index],
                                style: TextStylesPoppins.textStyles_14
                                    .apply(color: ColorStyle.secondryBlack,
                                    fontWeightDelta: 1
                                ),
                              ),
                              Icon(Icons.cancel_outlined)
                            ],
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(child: ElevatedButtonCustom(
                                text: 'Cancel',
                                textStyle: TextStylesPoppins.textStyles_14
                                    .apply(color: ColorStyle.blueSKY),
                                colorBG: ColorStyle.primaryWhite,
                                colorBorder: ColorStyle.blueSKY,
                                radiusBorder: 40,
                                onTap: () {

                                },
                              )),
                              SizedBox(width: 16,),
                              Expanded(child: ElevatedButtonCustom(
                                text: 'Continue',
                                textStyle: TextStylesPoppins.textStyles_14
                                    .apply(color: ColorStyle.primaryWhite),
                                colorBG: ColorStyle.darkestBlueSignUp,
                                colorBorder: ColorStyle.darkestBlueSignUp,
                                radiusBorder: 40,
                                onTap: () {
                                  Get.to(NewBeneficiary());
                                },
                              )),
                            ],
                          ),
                        ],
                      ),
                      width: double.infinity,
                      height: 375,
                      decoration: BoxDecoration(
                        color: ColorStyle.primaryWhite,
                        // borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
