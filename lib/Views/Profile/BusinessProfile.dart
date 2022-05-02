import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Styles/ColorStyle.dart';
import '../../Styles/EffectStyle.dart';
import '../../Styles/TextStyles.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import '../../Components/ComponentsTitleInputs.dart';



class BusinessProfile extends StatelessWidget {
  const BusinessProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EffectStyle.padding(16, 16, 16, 16),
          child: Text(
            'Business Information',
            style: TextStylesPoppins.textStyles_14.apply(
              color: ColorStyle.primaryWhite,
              fontWeightDelta: 2,
            ),
          ),
        ),
        Container(
          padding: EffectStyle.padding(16, 16, 0, 20),
          margin: EffectStyle.padding(16, 16, 0, 0),
          decoration: BoxDecoration(
              color: ColorStyle.primaryWhite,
              borderRadius: EffectStyle.radiusCustom(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ComponentsTitleInputs.textFieldsAccount('Business Name', false, 'Harrison'),
              ComponentsTitleInputs.titleCountryPicker('Country of Formation (Optional)', Icon(
                Icons.keyboard_arrow_down_sharp,
                size: 26,
                color: ColorStyle.secondryBlack,
              )),
              ComponentsTitleInputs.textFieldsAccount('Year of Incorporation',),
              ComponentsTitleInputs.textFieldsAccount('Company Registration Number',),
            ],
          ),
        ),
        Container(
          padding: EffectStyle.padding(16, 16, 16, 16),
          child: Text(
            'Beneficiary Contact Details',
            style: TextStylesPoppins.textStyles_14.apply(
              color: ColorStyle.primaryWhite,
              fontWeightDelta: 2,
            ),
          ),
        ),
        Container(
          padding: EffectStyle.padding(16, 16, 0, 20),
          margin: EffectStyle.padding(16, 16, 0, 0),
          decoration: BoxDecoration(
              color: ColorStyle.primaryWhite,
              borderRadius: EffectStyle.radiusCustom(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ComponentsTitleInputs.textCountryPickerTextField(
                  'Business Telephone Number', false, '145654687694654'),
              ComponentsTitleInputs.textCountryPickerTextField(
                  'Landline Number', false, '145654687694654'),
              ComponentsTitleInputs.textFieldsAccount(
                  'Business E-mail Address', false, 'Harrison.Smith@gmail.com'),
              ComponentsTitleInputs.textFieldsAccount(
                  'Website Address',),
            ],
          ),
        ),

        Container(
          padding: EffectStyle.padding(16, 16, 16, 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Registered Business Address',
                style: TextStylesPoppins.textStyles_14.apply(
                  color: ColorStyle.primaryWhite,
                  fontWeightDelta: 2,
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EffectStyle.padding(6, 6, 2, 2),
                decoration: BoxDecoration(
                  color: ColorStyle.primaryWhite,
                  borderRadius: BorderRadius.circular(06),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.edit,
                      color: ColorStyle.hex('#016ECF'),
                      size: 14,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text('Edit',
                        style: TextStyle(
                            color: ColorStyle.hex('#016ECF'),
                            fontFamily: TextStylesPoppins.kFontFamily,
                            fontSize: 12,
                            fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EffectStyle.padding(16, 16, 0, 20),
          margin: EffectStyle.padding(16, 16, 0, 0),
          decoration: BoxDecoration(
              color: ColorStyle.primaryWhite,
              borderRadius: EffectStyle.radiusCustom(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ComponentsTitleInputs.textFieldsAccount(
                  'Address Line 1', false, 'Villa 12, AI Amari Tower'),
              ComponentsTitleInputs.textFieldsAccount(
                  'Address Line 2', false, 'AI Amari Tower'),
              ComponentsTitleInputs.textFieldsAccount('City', false, 'New York'),
              ComponentsTitleInputs.textFieldsAccount(
                  'Country/State/Province', false, 'Villa 12, Al Amari Tower'),
              ComponentsTitleInputs.textFieldsAccount(
                  'Postal / Zip Code', false, '15646 York'),
              ComponentsTitleInputs.titleCountryPicker('Country/State/Province (Optional)', Icon(
                Icons.keyboard_arrow_down_sharp,
                size: 26,
                color: ColorStyle.secondryBlack,
              ))
            ],
          ),
        ),

        Container(
          padding: EffectStyle.padding(16, 16, 16, 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  'Registered Correspondence Address',
                  style: TextStylesPoppins.textStyles_14.apply(
                    color: ColorStyle.primaryWhite,
                    fontWeightDelta: 2,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EffectStyle.padding(6, 6, 2, 2),
                decoration: BoxDecoration(
                  color: ColorStyle.primaryWhite,
                  borderRadius: BorderRadius.circular(06),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.edit,
                      color: ColorStyle.hex('#016ECF'),
                      size: 14,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text('Edit',
                        style: TextStyle(
                            color: ColorStyle.hex('#016ECF'),
                            fontFamily: TextStylesPoppins.kFontFamily,
                            fontSize: 12,
                            fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EffectStyle.padding(16, 16, 0, 20),
          margin: EffectStyle.padding(16, 16, 0, 0),
          decoration: BoxDecoration(
              color: ColorStyle.primaryWhite,
              borderRadius: EffectStyle.radiusCustom(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ComponentsTitleInputs.textFieldsAccount(
                  'Address Line 1', false, 'Villa 12, AI Amari Tower'),
              ComponentsTitleInputs.textFieldsAccount(
                  'Address Line 2', false, 'AI Amari Tower'),
              ComponentsTitleInputs.textFieldsAccount('City', false, 'New York'),
              ComponentsTitleInputs.textFieldsAccount(
                  'Country/State/Province', false, 'Villa 12, Al Amari Tower'),
              ComponentsTitleInputs.textFieldsAccount(
                  'Postal / Zip Code', false, '15646 York'),
              ComponentsTitleInputs.titleCountryPicker('Country/State/Province (Optional)', Icon(
                Icons.keyboard_arrow_down_sharp,
                size: 26,
                color: ColorStyle.secondryBlack,
              ))
            ],
          ),
        ),
        Container(
          padding: EffectStyle.padding(16, 16, 16, 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Additional Information',
                style: TextStylesPoppins.textStyles_14.apply(
                  color: ColorStyle.primaryWhite,
                  fontWeightDelta: 2,
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EffectStyle.padding(6, 6, 2, 2),
                decoration: BoxDecoration(
                  color: ColorStyle.primaryWhite,
                  borderRadius: BorderRadius.circular(06),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.edit,
                      color: ColorStyle.hex('#016ECF'),
                      size: 14,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text('Edit',
                        style: TextStyle(
                            color: ColorStyle.hex('#016ECF'),
                            fontFamily: TextStylesPoppins.kFontFamily,
                            fontSize: 12,
                            fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EffectStyle.padding(16, 16, 0, 20),
          margin: EffectStyle.padding(16, 16, 0, 0),
          decoration: BoxDecoration(
            color: ColorStyle.primaryWhite,
            borderRadius: EffectStyle.radiusCustom(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ComponentsTitleInputs.titleCountryPicker('Tax Residencies', Icon(
                Icons.keyboard_arrow_down_sharp,
                size: 26,
                color: ColorStyle.secondryBlack,
              )),
            ],
          ),
        ),
      ],
    );
  }
}
