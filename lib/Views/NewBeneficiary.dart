import 'package:flutter/material.dart';
import 'dart:async';
import '../Components/AppBarStyle.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';
import '../Styles/EffectStyle.dart';
import 'package:get/get.dart';

import '../Components/ButtonCustom.dart';
import '../Components/PickerCustom.dart';
import '../Controllers/NewBeneficiaryController.dart';
import 'package:intl/intl.dart';
import '../Views/TravelDetails.dart';



class NewBeneficiary extends StatelessWidget {
  NewBeneficiary({Key? key}) : super(key: key);

  final controller = Get.put(NewBeneficiaryController());

  DateTime selectedDate = DateTime.now();

  Future<void> datePicker() async {
    final DateTime? picked = await showDatePicker(
        context: Get.context!,
        initialDate: selectedDate,
        firstDate: DateTime.now(),
        lastDate: DateTime(2500));
    if (picked != null && picked != selectedDate) {
      selectedDate = picked;
      final DateFormat format = DateFormat('MMM dd, yyyy');
      final formatted = format.format(picked);
      controller.departureDate.value = formatted.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarStyleTitle(
          title: 'New Beneficiary',
          backgroundColor: ColorStyle.darkestBlue,
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
        body: GetBuilder(
          init: NewBeneficiaryController(),
          initState: (state) {

          },
          builder: (authController) {
            return Obx(()=>SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        ImageStyle.Group2201,
                        width: MediaQuery.of(context).size.width,
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            color: ColorStyle.secondryBlack.withOpacity(0.7),
                            padding: EffectStyle.padding(16, 16, 6, 6),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "20",
                                      style: TextStylesPoppins.textStyles_32.apply(
                                          color: ColorStyle.primaryWhite,
                                          fontWeightDelta: 1),
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "November",
                                          // controller.listApplyLeave[index],
                                          style: TextStylesPoppins.textStyles_10.apply(
                                              color: ColorStyle.primaryWhite,
                                              fontWeightDelta: 1),
                                        ),
                                        Text(
                                          "Departing",
                                          // controller.listApplyLeave[index],
                                          style: TextStylesPoppins.textStyles_10.apply(
                                              color: ColorStyle.primaryWhite,
                                              fontWeightDelta: 1),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "15",
                                      style: TextStylesPoppins.textStyles_32.apply(
                                          color: ColorStyle.primaryWhite,
                                          fontWeightDelta: 1),
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "December",
                                          // controller.listApplyLeave[index],
                                          style: TextStylesPoppins.textStyles_10.apply(
                                              color: ColorStyle.primaryWhite,
                                              fontWeightDelta: 1),
                                        ),
                                        Text(
                                          "Arriving",
                                          // controller.listApplyLeave[index],
                                          style: TextStylesPoppins.textStyles_10.apply(
                                              color: ColorStyle.primaryWhite,
                                              fontWeightDelta: 1),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Seychelles',
                          // controller.listApplyLeave[index],
                          style: TextStylesPoppins.textStyles_14.apply(
                              fontWeightDelta: 2,
                              color: ColorStyle.secondryBlack),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'When will you be away?',
                          // controller.listApplyLeave[index],
                          style: TextStylesPoppins.textStyles_12
                              .apply(color: ColorStyle.secondryBlack),
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Text(
                          'Departure Date',
                          // controller.listApplyLeave[index],
                          style: TextStylesPoppins.textStyles_12.apply(
                              fontWeightDelta: 1,
                              color: ColorStyle.secondryBlack),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        InkWell(
                          child: Row(
                            children: [
                              Icon(
                                Icons.calendar_month,
                                size: 30,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                controller.departureDate.value,
                                // controller.listApplyLeave[index],
                                style: TextStylesPoppins.textStyles_14
                                    .apply(color: ColorStyle.secondryBlack),
                              ),
                            ],
                          ),
                          onTap: () async {
                            controller.departureDate.value = await PickerCustom.datePicker('MMM dd, yyyy');
                          },
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          'Return Date',
                          // controller.listApplyLeave[index],
                          style: TextStylesPoppins.textStyles_12.apply(
                              fontWeightDelta: 1,
                              color: ColorStyle.secondryBlack),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        InkWell(
                          child: Row(
                            children: [
                              Icon(
                                Icons.calendar_month,
                                size: 30,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                controller.returnDate.value,
                                // controller.listApplyLeave[index],
                                style: TextStylesPoppins.textStyles_14
                                    .apply(color: ColorStyle.secondryBlack),
                              ),
                            ],
                          ),
                          onTap: () async {
                            controller.returnDate.value = await PickerCustom.datePicker('MMM dd, yyyy');
                          },
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: ElevatedButtonCustom(
                                  text: 'Cancel',
                                  textStyle: TextStylesPoppins.textStyles_14
                                      .apply(color: ColorStyle.blueSKY),
                                  colorBG: ColorStyle.primaryWhite,
                                  colorBorder: ColorStyle.blueSKY,
                                  radiusBorder: 40,
                                  onTap: () {},
                                )),
                            SizedBox(
                              width: 16,
                            ),
                            Expanded(
                                child: ElevatedButtonCustom(
                                  text: 'Continue',
                                  textStyle: TextStylesPoppins.textStyles_14
                                      .apply(color: ColorStyle.primaryWhite),
                                  colorBG: ColorStyle.darkestBlueSignUp,
                                  colorBorder: ColorStyle.darkestBlueSignUp,
                                  radiusBorder: 40,
                                  onTap: () {
                                    Get.to(TravelDetails());
                                  },
                                )),
                          ],
                        ),
                        SizedBox(
                          height: 24,
                        ),
                      ],
                    ),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: ColorStyle.primaryWhite,
                      // borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ],
              ),
            ));
          },
        )
    );
  }
}
