
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Components/AppBarStyle.dart';
import '../../Components/ButtonCustom.dart';
import '../../Components/CountryPicker.dart';
import '../../Styles/ColorStyle.dart';
import '../../Styles/EffectStyle.dart';
import '../../Styles/ImageStyle.dart';
import '../../Styles/TextStyles.dart';
import '../../Controllers/ProfileController.dart';

import 'package:advanced_capital_pay/Components/ButtonCustom.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';

import '../../Components/TextFieldCustom.dart';
import '../../Components/PickerCustom.dart';
import '../../Components/DropdownButtonCustom.dart';

class Components {
  static textFieldsAccount(String title, [bool isRequired = false, String hintText = '']) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Text(
              title,
              style: TextStyles.textStyles_15.apply(
                color: ColorStyle.secondryBlack,
                fontWeightDelta: 2,
              ),
            ),
            if (isRequired)
              Text(
                '*',
                style: TextStyles.textStyles_15.apply(
                  color: Colors.red,
                  fontWeightDelta: 11,
                ),
              ),
          ],
        ),
        SizedBox(
          height: 6,
        ),
        TextFieldCustom(
          colorBoder: ColorStyle.secondryBlack,
          hintText: hintText,
          textStyle: TextStyles.textStyles_15.apply(
            fontWeightDelta: 2,
          ),
          radiusBorder: 30,
        ),
      ],
    );
  }

  static titleCountryPicker(String title,) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 16,
        ),
        Text(
          title,
          style: TextStyles.textStyles_15.apply(
            color: ColorStyle.secondryBlack,
            fontWeightDelta: 2,
          ),
        ),
        SizedBox(
          height: 6,
        ),
        CountryPicker(
          radius: 40,
          iconArrow: Icons.keyboard_arrow_down_sharp,
          colorIcon: ColorStyle.secondryBlack,
          colorBorder: ColorStyle.secondryBlack,
          padding: EffectStyle.padding(16, 16, 10, 10),
          textStyle: TextStyles.textStyles_15.apply(
            color: ColorStyle.secondryBlack,
            fontWeightDelta: 2,
          ),
        ),
      ],
    );
  }

  static textCountryPickerTextField(String title, [bool isRequired = false, String hintText = '']) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Text(
              title,
              style: TextStyles.textStyles_15.apply(
                color: ColorStyle.secondryBlack,
                fontWeightDelta: 2,
              ),
            ),
            if (isRequired)
              Text(
                '*',
                style: TextStyles.textStyles_15.apply(
                  color: Colors.red,
                  fontWeightDelta: 11,
                ),
              ),
          ],
        ),
        SizedBox(
          height: 6,
        ),
        Row(
          children: [
            Container(
              width: 115,
              child: TelePhoneNumberCode(
                radius: 40,
                // iconArrow: Icons.keyboard_arrow_down_sharp,
                // colorIcon: ColorStyle.secondryBlack,
                colorBorder: ColorStyle.secondryBlack,
                padding: EffectStyle.padding(10, 10, 10, 10),
                textStyle: TextStyles.textStyles_14.apply(
                  color: ColorStyle.secondryBlack,
                  fontWeightDelta: 2,
                ),
              ),
            ),
            SizedBox(width: 6,),
            Expanded(child: TextFieldCustom(
              colorBoder: ColorStyle.secondryBlack,
              hintText: hintText,
              textStyle: TextStyles.textStyles_15.apply(
                fontWeightDelta: 2,
              ),
              radiusBorder: 30,
            ))
          ],
        ),
      ],
    );
  }
}

class TitleDropDown extends StatefulWidget {
  String? title;
  TitleDropDown({Key? key, this.title = 'Title ...'}) : super(key: key);

  @override
  _TitleDropDownState createState() => _TitleDropDownState();
}

class _TitleDropDownState extends State<TitleDropDown> {
  String employmentStatus = 'Employed';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 16,
        ),
        Text(
          widget.title!,
          style: TextStyles.textStyles_15.apply(
            color: ColorStyle.secondryBlack,
            fontWeightDelta: 2,
          ),
        ),
        SizedBox(
          height: 6,
        ),
        DropdownButtonCustom(
          colorBorder: ColorStyle.secondryBlack,
          iconWidget: Icon(
            Icons.keyboard_arrow_down,
            color: ColorStyle.secondryBlack,
          ),
          hint: Text(
            'Employed',
            style: TextStyles.textStyles_15.apply(
              color: ColorStyle.grey,
              fontWeightDelta: 2,
            ),
          ),
          textStyle: TextStyles.textStyles_15.apply(
            color: ColorStyle.secondryBlack,
            fontWeightDelta: 2,
          ),
          radiusBorder: 30,
          height: 60,
          padding: EdgeInsets.only(left: 16, right: 16),
          listValue: [
            'Employed',
            'Owner',
          ],
          selectedValue: employmentStatus,
          onChanged: (text) {},
        ),
      ],
    );
  }
}

class TitleDatePicker extends StatefulWidget {
  String? title;

  TitleDatePicker({Key? key, this.title = 'Title ...'}) : super(key: key);

  @override
  _TitleDatePickerState createState() => _TitleDatePickerState();
}

class _TitleDatePickerState extends State<TitleDatePicker> {
  String dateOfBirth = '24-08-1982';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 16,
        ),
        Text(
          widget.title!,
          style: TextStyles.textStyles_14.apply(
            color: ColorStyle.secondryBlack,
            fontWeightDelta: 2,
          ),
        ),
        SizedBox(
          height: 6,
        ),
        InkWell(
          child: Container(
            height: 50,
            width: double.infinity,
            alignment: Alignment.centerLeft,
            padding: EffectStyle.padding(16, 0, 0, 0),
            decoration: BoxDecoration(
                color: ColorStyle.primaryWhite,
                borderRadius: EffectStyle.radiusCustom(50),
                border: Border.all(
                  color: ColorStyle.secondryBlack,
                  width: 1,
                )),
            child: Text(
              dateOfBirth,
              style: TextStyles.textStyles_14.apply(
                color: (dateOfBirth == '24-08-1982')
                    ? ColorStyle.grey
                    : ColorStyle.secondryBlack,
                fontWeightDelta: 2,
              ),
            ),
          ),
          onTap: () async {
            final dateSelected = await PickerCustom.datePicker('dd-MM-yyyy');
            dateOfBirth = dateSelected.toString();

            setState(() {

            });
          },
        ),
      ],
    );
  }
}