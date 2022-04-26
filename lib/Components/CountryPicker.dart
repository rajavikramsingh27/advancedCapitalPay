import 'package:flutter/material.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import '../../Styles/ColorStyle.dart';
import '../../Styles/EffectStyle.dart';
import 'package:country_picker/country_picker.dart';

class CountryPicker extends StatefulWidget {
  CountryPicker({Key? key}) : super(key: key);

  String displayNameNoCountryCode = '';
  String flagEmoji = '';

  @override
  _CountryPickerState createState() => _CountryPickerState();
}

class _CountryPickerState extends State<CountryPicker> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: EffectStyle.padding(10, 10, 14, 14),
        decoration: BoxDecoration(
            // color: ColorStyle.primaryWhite,
            borderRadius: EffectStyle.radiusCustom(4),
            border: Border.all(
              color: ColorStyle.grey,
              width: 1,
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                children: [
                  Text(
                    widget.flagEmoji,
                    style: TextStyles.textStyles_14.apply(
                      color: ColorStyle.secondryBlack,
                      fontWeightDelta: 0,
                    ),
                  ),
                  // Icon(Icons.flag, size: 26,),
                  SizedBox(
                    width: 4,
                  ),
                  Expanded(
                    child: Text(
                      widget.displayNameNoCountryCode,
                      style: TextStyles.textStyles_14.apply(
                        color: ColorStyle.secondryBlack,
                        fontWeightDelta: 0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.arrow_drop_down_outlined,
              size: 26,
              color: Colors.grey,
            ),
          ],
        ),
      ),
      onTap: () {
        showCountryPicker(
          context: context,
          //Optional.  Can be used to exclude(remove) one ore more country from the countries list (optional).
          exclude: <String>['KN', 'MF'],
          //Optional. Shows phone code before the country name.
          showPhoneCode: true,
          showWorldWide: false,
          onSelect: (Country country) {
            print('Select country: ${country.displayName}');
            print('Select country: ${country.displayNameNoCountryCode}');
            print('Select country: ${country.flagEmoji}');

            setState(() {
              widget.displayNameNoCountryCode =
                  country.displayNameNoCountryCode;
              widget.flagEmoji = country.flagEmoji;
            });
          },
          // Optional. Sets the theme for the country list picker.
          countryListTheme: CountryListThemeData(
            // Optional. Sets the border radius for the bottomsheet.
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0),
            ),
            // Optional. Styles the search field.
            inputDecoration: InputDecoration(
              labelText: 'Search',
              hintText: 'Start typing to search',
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: const Color(0xFF8C98A8).withOpacity(0.2),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}



class TelePhoneNumberCode extends StatefulWidget {
  TelePhoneNumberCode({Key? key}) : super(key: key);

  String displayNameNoCountryCode = '';
  String flagEmoji = '';
  String phoneCode = '';



  @override
  _TelePhoneNumberCodeState createState() => _TelePhoneNumberCodeState();
}

class _TelePhoneNumberCodeState extends State<TelePhoneNumberCode> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: EffectStyle.padding(10, 10, 14, 14),
        decoration: BoxDecoration(
          // color: ColorStyle.primaryWhite,
            borderRadius: EffectStyle.radiusCustom(4),
            border: Border.all(
              color: ColorStyle.grey,
              width: 1,
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                children: [
                  Text(
                    widget.flagEmoji,
                    style: TextStyles.textStyles_14.apply(
                      color: ColorStyle.secondryBlack,
                      fontWeightDelta: 0,
                    ),
                  ),
                  // Icon(Icons.flag, size: 26,),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "+"+widget.phoneCode,
                    style: TextStyles.textStyles_14.apply(
                      color: ColorStyle.secondryBlack,
                      fontWeightDelta: 0,
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Expanded(
                    child: Text(
                      widget.displayNameNoCountryCode,
                      style: TextStyles.textStyles_14.apply(
                        color: ColorStyle.secondryBlack,
                        fontWeightDelta: 0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.arrow_drop_down_outlined,
              size: 26,
              color: Colors.grey,
            ),
          ],
        ),
      ),
      onTap: () {
        showCountryPicker(
          context: context,
          //Optional.  Can be used to exclude(remove) one ore more country from the countries list (optional).
          exclude: <String>['KN', 'MF'],
          //Optional. Shows phone code before the country name.
          showPhoneCode: true,
          showWorldWide: false,
          onSelect: (Country country) {
            print('Select country: ${country.displayName}');
            print('Select country: ${country.displayNameNoCountryCode}');
            print('Select country: ${country.flagEmoji}');
            print('Select country: ${country.phoneCode}');

            setState(() {
              widget.displayNameNoCountryCode =
                  country.displayNameNoCountryCode;
              widget.flagEmoji = country.flagEmoji;
              widget.phoneCode = country.phoneCode;
            });
          },
          // Optional. Sets the theme for the country list picker.
          countryListTheme: CountryListThemeData(
            // Optional. Sets the border radius for the bottomsheet.
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
            ),
            // Optional. Styles the search field.
            inputDecoration: InputDecoration(
              labelText: 'Search',
              hintText: 'Start typing to search',
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: const Color(0xFF8C98A8).withOpacity(0.2),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}


