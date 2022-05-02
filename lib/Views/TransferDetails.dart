import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../Components/AppBarStyle.dart';
import '../Components/BackgroundImage.dart';
import '../Components/ButtonCustom.dart';
import '../Components/ComponentsTitleInputs.dart';
import '../Components/CountryPicker.dart';
import '../Components/DropdownButtonCustom.dart';
import '../Components/NewTransfers.dart';
import '../Components/TextFieldCustom.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';
import 'package:dotted_border/dotted_border.dart';



class TransferDetails extends StatelessWidget {
  final Function()? onTapContinue;
  const TransferDetails({Key? key, this.onTapContinue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        NewTransferCustom(
          padding: EffectStyle.padding(16, 16, 0, 0),
        ),
        Container(
            margin: EffectStyle.padding(16, 16, 16, 16),
            padding: EffectStyle.padding(0, 0, 16, 0),
            decoration: BoxDecoration(
              color: ColorStyle.hex('#16429D'),
              borderRadius: EffectStyle.radiusCustom(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    'Transfer Details',
                    style: TextStylesPoppins.textStyles_14.apply(
                      color: ColorStyle.primaryWhite,
                      fontWeightDelta: 2,
                    ),
                  ),
                  padding: EffectStyle.padding(10, 0, 0, 0),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  padding: EffectStyle.padding(10, 10, 16, 16),
                  decoration: BoxDecoration(
                    color: ColorStyle.primaryWhite,
                    borderRadius: EffectStyle.radiusCustom(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ComponentsTitleInputs.titleDropDown(
                          'Transfer Date and Frequency',
                          true,
                          'Send Transfer Now',
                          ['Send Transfer Now', 'Send Transfer After']),
                      ComponentsTitleInputs.titleDropDown(
                          'Fees Paid By',
                          true,
                          'From My Account',
                          ['From My Account', 'From Another Account']),
                      ComponentsTitleInputs.textFieldsTitleOutlineBorder(
                          'Payment Reference For Your Records',
                          false,
                          'Payment for Necklace and Braclets',
                          ColorStyle.secondryBlack,
                          ColorStyle.secondryBlack),
                      ComponentsTitleInputs.titleDropDown(
                          'Reference for Beneficiary',
                          true,
                          'Invoice #098765432',
                          ['Invoice #098765432', 'Invoice #1234567890']),
                      ComponentsTitleInputs.titleDropDown(
                          'Transaction Purpose',
                          false,
                          'From My Account',
                          ['From My Account', 'From Another Account']),
                      ComponentsTitleInputs.titleDropDown(
                          'Fees Paid By',
                          true,
                          'From My Account',
                          ['From My Account', 'From Another Account']),
                      SizedBox(height: 10),
                      Text(
                        'Transfer Documentation',
                        style: TextStylesPoppins.textStyles_14.apply(
                          color: ColorStyle.secondryBlack,
                          fontWeightDelta: 2,
                        ),
                      ),
                      Text(
                        'Upload any relevant documentation relating to the'
                        'transfer such as Invoices. Purchase Orders, Bill of'
                        'Laden and more ',
                        style: TextStylesPoppins.textStyles_14.apply(
                          color: ColorStyle.secondryBlack,
                          fontWeightDelta: 0,
                        ),
                      ),
                      SizedBox(height: 10,),
                      DottedBorder(
                        borderType: BorderType.RRect,
                        radius: Radius.circular(6),
                        padding: EdgeInsets.all(0),
                        color: ColorStyle.grey,
                        strokeWidth: 1.5,
                        dashPattern: [5],
                        child: Container(
                          height: 100,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: ColorStyle.hex('#CEE8FF'),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(ImageStyle.fileFolder, height: 40,),
                              SizedBox(height: 10,),
                              Text(
                                'Choose Files Here..',
                                style: TextStylesPoppins.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 0,
                                ),
                              ),
                            ],
                          ),
                        )
                      ),
                      SizedBox(height: 20,),
                      Container(
                        child: ButtonContinueCancel(
                          radiusBorder: 40,
                          textFirst: 'Cancel',
                          colorBGFirst: Colors.transparent,
                          colorBorderFirst: ColorStyle.hex('#016ECF'),
                          textStyleFirst: TextStylesPoppins.textStyles_14.apply(
                            fontWeightDelta: 1,
                            color: ColorStyle.hex('#016ECF'),
                          ),
                          onTapFirst: () {},
                          textSecond: 'Continue to Summary',
                          colorBGSecond: ColorStyle.hex('#016ECF'),
                          colorBorderSecond: Colors.transparent,
                          textStyleSecond: TextStylesPoppins.textStyles_14
                              .apply(fontWeightDelta: 1, color: ColorStyle.primaryWhite),
                          onTapSecond: onTapContinue,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
