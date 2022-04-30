import 'package:advanced_capital_pay/Components/CountryPicker.dart';
import 'package:flutter/material.dart';

import '../Styles/ColorStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';

class NewTransferCustom extends StatelessWidget {
  const NewTransferCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                width: 164,
                height: 60,
                child: CountryPicker(),
                decoration: BoxDecoration(
                  // color: ColorStyle.primaryWhite,
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    image: AssetImage(ImageStyle.Rectangle1957),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            Expanded(
              child: Container(
                padding: EdgeInsets.only(right: 10),
                width: 164,
                height: 60,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'You convert United States Dollar ',
                      style: TextStyles.textStyles_8.apply(
                        color: ColorStyle.primaryWhite,
                        // fontWeightDelta: 2
                      ),
                    ),
                    Text(
                      '128,678',
                      style: TextStyles.textStyles_12.apply(
                          color: ColorStyle.primaryWhite, fontWeightDelta: 2),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  // color: ColorStyle.primaryWhite,
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    image: AssetImage(ImageStyle.Rectangle1958),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(child: Column(
              children: [

                Text(
                  'Show fee structure',
                  style: TextStyles.textStyles_10.apply(
                      color: ColorStyle.blueSKY,
                      fontWeightDelta: 2
                  ),
                ),
                Container(
                  width: 100,
                  height: 1,
                  color: ColorStyle.blueSKY,
                ),
              ],
            ),onTap: (){},),
            SizedBox(width: 10,),
            Image.asset(ImageStyle.Group2222,height: 14,)
          ],
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            Expanded(
              child: Container(
                width: 164,
                height: 60,
                child: CountryPicker(),
                decoration: BoxDecoration(
                  // color: ColorStyle.primaryWhite,
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    image: AssetImage(ImageStyle.Rectangle1957),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            Expanded(
              child: Container(
                padding: EdgeInsets.only(right: 10),
                width: 164,
                height: 60,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'You receive United Arab Emirates ',

                      style: TextStyles.textStyles_8.apply(
                        color: ColorStyle.primaryWhite,
                        // fontWeightDelta: 2
                      ),
                    ),
                    Text(
                      'Dhiram',

                      style: TextStyles.textStyles_8.apply(
                        color: ColorStyle.primaryWhite,
                        // fontWeightDelta: 2
                      ),
                    ),
                    Text(
                      '424,008',
                      style: TextStyles.textStyles_12.apply(
                          color: ColorStyle.primaryWhite, fontWeightDelta: 2),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  // color: ColorStyle.primaryWhite,
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    image: AssetImage(ImageStyle.Rectangle1958),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}



