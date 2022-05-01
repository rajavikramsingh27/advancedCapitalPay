import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Components/AppBarStyle.dart';
import '../Components/BackgroundImage.dart';
import '../Components/ButtonCustom.dart';
import '../Components/CountryPicker.dart';
import '../Components/DropdownButtonCustom.dart';
import '../Components/NewTransfers.dart';
import '../Components/TextFieldCustom.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';

class SuccessfulCurrencyExchange extends StatelessWidget {
  const SuccessfulCurrencyExchange({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImageBeneficiary(),
        Scaffold(
            appBar:     AppBarStyleCustomBenifi(
              title: Text(
                'Successful Currency Exchange',
                style: TextStyles.textStyles_14.apply(
                    color: ColorStyle.primaryWhite,
                    fontWeightDelta: 2
                ),
              ),


              leadingButton: BackButton(

                onPressed: () {},
              ),
              trailingButton: IconButton(
                icon: Image.asset(
                  ImageStyle.chat,
                  height: 30,
                ),
                onPressed: () {},
              ),

            ),
            backgroundColor: Colors.transparent,

            body:     SingleChildScrollView(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height:  40),
                  Container(
                    padding: EdgeInsets.only(right: 18,left: 18),
                    // width: 164,
                    // height: 60,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height:  20),
                        Text(
                          'USD 1.00 = 3.6725 AED ',
                          style: TextStyles.textStyles_14.apply(
                            color: ColorStyle.primaryWhite,
                            fontWeightDelta: 2
                          ),
                        ),
                        SizedBox(height:  10),
                        Container(
                          height: 1,
                          color: ColorStyle.grey,
                        ),
                        SizedBox(height:  20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                                Text(
                                  'You send United States Dollar',
                                  style: TextStyles.textStyles_8.apply(
                                      color: ColorStyle.grey,
                                      fontWeightDelta: 2
                                  ),
                                ),
                                SizedBox(height:  10),
                                Text(
                                  '128,000',
                                  style: TextStyles.textStyles_18.apply(
                                      color: ColorStyle.primaryWhite,
                                      fontWeightDelta: 2
                                  ),
                                ),
                              ],),

                            Container(
                              padding: EdgeInsets.only(right: 8,left: 8),
                              // width: 101,
                              height: 60,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'USD ',
                                    style: TextStyles.textStyles_14.apply(
                                        color: ColorStyle.primaryWhite,
                                        fontWeightDelta: 2
                                    ),
                                  ),
                                  SizedBox(width:  14),
                                  Image.asset(ImageStyle.tirnga1,height: 20,)
                                ],
                              ) ,
                              decoration: BoxDecoration(
                                // color: ColorStyle.primaryWhite,
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                  image: AssetImage(ImageStyle.Rectangle1958),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height:  10),
                        Container(
                          height: 1,
                          color: ColorStyle.grey,
                        ),
                        SizedBox(height:  20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                                Text(
                                  'You receive United Arab Emirates Dirham',
                                  style: TextStyles.textStyles_8.apply(
                                      color: ColorStyle.grey,
                                      fontWeightDelta: 2
                                  ),
                                ),
                                SizedBox(height:  10),
                                Text(
                                  '470,000',
                                  style: TextStyles.textStyles_18.apply(
                                      color: ColorStyle.primaryWhite,
                                      fontWeightDelta: 2
                                  ),
                                ),
                              ],),

                            Container(
                              padding: EdgeInsets.only(right: 8,left: 8),
                              // width: 101,
                              height: 60,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'AED ',
                                    style: TextStyles.textStyles_14.apply(
                                        color: ColorStyle.primaryWhite,
                                        fontWeightDelta: 2
                                    ),
                                  ),
                                  SizedBox(width:  14),
                                  Image.asset(ImageStyle.tirnga2,height: 20,)
                                ],
                              ) ,
                              decoration: BoxDecoration(
                                // color: ColorStyle.primaryWhite,
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                  image: AssetImage(ImageStyle.Rectangle1958),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height:  10),
                        Container(
                          height: 1,
                          color: ColorStyle.grey,
                        ),
                        SizedBox(height:  20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Pay With',
                              style: TextStyles.textStyles_8.apply(
                                  color: ColorStyle.grey,
                                  fontWeightDelta: 2
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,

                              children: [
                                Text(
                                  'Bank Account',
                                  style: TextStyles.textStyles_8.apply(
                                      color: ColorStyle.grey,
                                      fontWeightDelta: 2
                                  ),
                                ),

                                Text(
                                  'HARRISON SMITH CURRENCT A/C USD',
                                  style: TextStyles.textStyles_10.apply(
                                      color: ColorStyle.primaryWhite,
                                      fontWeightDelta: 2
                                  ),
                                ),
                              ],),


                          ],
                        ),
                        SizedBox(height:  20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Account Details',
                              style: TextStyles.textStyles_8.apply(
                                  color: ColorStyle.grey,
                                  fontWeightDelta: 2
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,

                              children: [
                                Text(
                                  'Account Type',
                                  style: TextStyles.textStyles_8.apply(
                                      color: ColorStyle.grey,
                                      fontWeightDelta: 2
                                  ),
                                ),

                                Text(
                                  'Plus + Current A/C',
                                  style: TextStyles.textStyles_10.apply(
                                      color: ColorStyle.primaryWhite,
                                      fontWeightDelta: 2
                                  ),
                                ),
                              ],),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,

                              children: [
                                Text(
                                  'Account Number',
                                  style: TextStyles.textStyles_8.apply(
                                      color: ColorStyle.grey,
                                      fontWeightDelta: 2
                                  ),
                                ),

                                Text(
                                  '0235859304',
                                  style: TextStyles.textStyles_10.apply(
                                      color: ColorStyle.primaryWhite,
                                      fontWeightDelta: 2
                                  ),
                                ),
                              ],),


                          ],
                        ),
                        SizedBox(height:  10),
                        Container(
                          height: 1,
                          color: ColorStyle.grey,
                        ),
                        SizedBox(height:  20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Conversion Fee',
                              style: TextStyles.textStyles_8.apply(
                                  color: ColorStyle.grey,
                                  fontWeightDelta: 2
                              ),
                            ),
                            Text(
                              '10.00 USD',
                              style: TextStyles.textStyles_10.apply(
                                  color: ColorStyle.primaryWhite,
                                  fontWeightDelta: 2
                              ),
                            ),


                          ],
                        ),
                        SizedBox(height:  20),
                        Container(
                          height: 1,
                          color: ColorStyle.grey,
                        ),
                        SizedBox(height:  20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Exchange Reference',
                              style: TextStyles.textStyles_8.apply(
                                  color: ColorStyle.grey,
                                  fontWeightDelta: 2
                              ),
                            ),
                            Text(
                              '120200507ACP39483MKS24',
                              style: TextStyles.textStyles_10.apply(
                                  color: ColorStyle.primaryWhite,
                                  fontWeightDelta: 2
                              ),
                            ),


                          ],
                        ),
                        SizedBox(height:  20),
                        Container(
                          height: 1,
                          color: ColorStyle.grey,
                        ),
                        SizedBox(height:  20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total Recieved',
                              style: TextStyles.textStyles_8.apply(
                                  color: ColorStyle.grey,
                                  fontWeightDelta: 2
                              ),
                            ),
                            Text(
                              '470,080 AED',
                              style: TextStyles.textStyles_10.apply(
                                  color: ColorStyle.primaryWhite,
                                  fontWeightDelta: 2
                              ),
                            ),


                          ],
                        ),

                        SizedBox(height:  40),
                        GradientButtonWith(),
                        SizedBox(height:  40),


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





                ],
              ),
            )


        )
      ],
    );
  }
}
