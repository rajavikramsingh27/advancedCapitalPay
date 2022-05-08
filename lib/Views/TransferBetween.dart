import 'package:advanced_capital_pay/Components/ButtonCustom.dart';
import 'package:advanced_capital_pay/Components/RadioButtonCustom.dart';
import 'package:flutter/material.dart';

import '../Components/AppBarStyle.dart';
import '../Components/DropdownButtonCustom.dart';
import '../Components/PopUp.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';
import '../../../Components/ButtonChat.dart';

class TransferBetween extends StatelessWidget {
  const TransferBetween({Key? key}) : super(key: key);

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
              title: 'Transfer Between Accounts',
              leadingButton: IconButton(
                icon: Image.asset(
                  ImageStyle.back_circle,
                  height: 30,
                ),
                onPressed: () {},
              ),
              trailingButton: [ButtonChat(),],
            ),
            backgroundColor: Colors.transparent,
            body:SingleChildScrollView(
              padding: EdgeInsets.only(left: 16,right: 16,top: 10),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Transfer Details',
                    // controller.listApplyLeave[index],
                    style: TextStylesPoppins
                        .textStyles_14
                        .apply(
                        fontWeightDelta: 2,
                        color: ColorStyle
                            .primaryWhite),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 16,right: 16,top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // DropdownButtonTextField(),
                              Text(
                                'Account*',
                                // controller.listApplyLeave[index],
                                style: TextStylesPoppins
                                    .textStyles_14
                                    .apply(
                                    fontWeightDelta: 2,
                                    color: ColorStyle
                                        .secondryBlack),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              DropdownButtonTextField(
                                padding: EdgeInsets.only(left: 16,right: 16),
                                radiusBorder: 40,
                                colorBorder: Colors.grey,
                                iconWidget: Image.asset(
                                  ImageStyle.Iconionic,
                                  height: 8,
                                ),
                                listValue: ['USD | 800.00', 'USD | 900.00', 'USD | 600.00'],
                                selectedValue: 'USD | 800.00',
                                onChanged: (text) {},
                              ),


                              SizedBox(
                                height: 16,
                              ),
                              Text(
                                'Standing Order',
                                // controller.listApplyLeave[index],
                                style: TextStylesPoppins
                                    .textStyles_12
                                    .apply(
                                    fontWeightDelta: 3,
                                    color: ColorStyle
                                        .secondryBlack),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                             RadioButtonCustom(),
                              SizedBox(
                                height: 26,
                              ),
                              Text(
                                'Transfer Date and Frequency*',
                                // controller.listApplyLeave[index],
                                style: TextStylesPoppins
                                    .textStyles_12
                                    .apply(
                                    fontWeightDelta: 3,
                                    color: ColorStyle
                                        .secondryBlack),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              DropdownButtonCustom(
                                padding: EdgeInsets.only(left: 16,right: 16),
                                radiusBorder: 40,
                                colorBorder: Colors.grey,
                                iconWidget: Image.asset(
                                  ImageStyle.Iconionic,
                                  height: 8,
                                ),
                                listValue: ['Transfer', 'Transfer Now','Send Transfer Now' ],
                                selectedValue: "Transfer",
                                onChanged: (text) {},
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'This transfer can be today or scheduled at a later date',
                                // controller.listApplyLeave[index],
                                style: TextStylesPoppins
                                    .textStyles_10
                                    .apply(
                                    fontWeightDelta: 1,
                                    color: ColorStyle
                                        .secondryBlack),
                              ),
                              SizedBox(
                                height: 24,
                              ),
                              // ButtonContinueCancel(
                              //   textFirst: 'Cancel afadfsdf',
                              //   colorBGFirst: Colors.transparent,
                              //   colorBorderFirst: ColorStyle.hex('#016ECF'),
                              //   textStyleFirst: TextStyles.textStyles_14.apply(
                              //       fontWeightDelta: 1,
                              //       color: ColorStyle.hex('#016ECF'),
                              //   ),
                              //
                              //   textSecond: 'Continue',
                              //   colorBGSecond: ColorStyle.hex('#016ECF'),
                              //   colorBorderSecond: Colors.transparent,
                              //   textStyleSecond: TextStyles.textStyles_14.apply(
                              //     fontWeightDelta: 1,
                              //     color: ColorStyle.hex('#016ECF'),
                              //   ),
                              // ),
                              SizedBox(
                                height: 20,
                              ),

                            ],
                          ),
                          width: double.infinity,
                          // height: 300,
                          decoration: BoxDecoration(
                            color: ColorStyle.primaryWhite,
                            borderRadius: BorderRadius.circular(10)

                          ),
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
