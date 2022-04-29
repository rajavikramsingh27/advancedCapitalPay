import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Styles/ColorStyle.dart';
import '../../Styles/EffectStyle.dart';
import '../../Styles/TextStyles.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import '../../Views/Profile/Components.dart';



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
            style: TextStyles.textStyles_15.apply(
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
              Components.textFieldsAccount('Business Name', false, 'Harrison'),
              Components.titleCountryPicker('Country of Formation (Optional)'),
              Components.textFieldsAccount('Year of Incorporation',),
              Components.textFieldsAccount('Company Registration Number',),
            ],
          ),
        ),
        Container(
          padding: EffectStyle.padding(16, 16, 16, 16),
          child: Text(
            'Beneficiary Contact Details',
            style: TextStyles.textStyles_15.apply(
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
              Components.textCountryPickerTextField(
                  'Business Telephone Number', false, '145654687694654'),
              Components.textCountryPickerTextField(
                  'Landline Number', false, '145654687694654'),
              Components.textFieldsAccount(
                  'Business E-mail Address', false, 'Harrison.Smith@gmail.com'),
              Components.textFieldsAccount(
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
                style: TextStyles.textStyles_15.apply(
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
                            fontFamily: TextStyles.kFontFamily,
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
              Components.textFieldsAccount(
                  'Address Line 1', false, 'Villa 12, AI Amari Tower'),
              Components.textFieldsAccount(
                  'Address Line 2', false, 'AI Amari Tower'),
              Components.textFieldsAccount('City', false, 'New York'),
              Components.textFieldsAccount(
                  'Country/State/Province', false, 'Villa 12, Al Amari Tower'),
              Components.textFieldsAccount(
                  'Postal / Zip Code', false, '15646 York'),
              Components.titleCountryPicker('Country/State/Province (Optional)')
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
                  style: TextStyles.textStyles_15.apply(
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
                            fontFamily: TextStyles.kFontFamily,
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
              Components.textFieldsAccount(
                  'Address Line 1', false, 'Villa 12, AI Amari Tower'),
              Components.textFieldsAccount(
                  'Address Line 2', false, 'AI Amari Tower'),
              Components.textFieldsAccount('City', false, 'New York'),
              Components.textFieldsAccount(
                  'Country/State/Province', false, 'Villa 12, Al Amari Tower'),
              Components.textFieldsAccount(
                  'Postal / Zip Code', false, '15646 York'),
              Components.titleCountryPicker('Country/State/Province (Optional)')
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
                style: TextStyles.textStyles_15.apply(
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
                            fontFamily: TextStyles.kFontFamily,
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
              Components.titleCountryPicker('Tax Residencies'),
            ],
          ),
        ),
      ],
    );
  }
}
