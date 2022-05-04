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
class BeneficiaryBankDetails extends StatelessWidget {
  const BeneficiaryBankDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImageBeneficiary(),
        Scaffold(
            appBar:     AppBarStyleCustomBenifi(
              title: Text(
                'ChatWithUs',
                style: TextStylesPoppins.textStyles_20.apply(
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
                  SizedBox(height:  20),
                  Text(
                    'Beneficiary Bank Details',
                    style: TextStylesPoppins.textStyles_18.apply(
                        color: ColorStyle.primaryWhite,
                        fontWeightDelta: 2
                    ),
                  ),
                  SizedBox(height:  20),
                  Container(
                    padding: EdgeInsets.only(right: 18,left: 18),
                    // width: 164,
                    // height: 60,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height:  10),
                    Icon(Icons.cancel),
                    Row(
                      children: [
                        Image.asset(ImageStyle.BankIcon,height: 40,),
                        SizedBox(width:  10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20),
                            Text(
                              'HSBC BANK PLC',
                              style: TextStylesPoppins.textStyles_18.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 2
                              ),
                            ),
                            Text(
                              'MIDLGB22123',
                              style: TextStylesPoppins.textStyles_14.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 2
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                        SizedBox(height:  40),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text(
                                  'MIDL',
                                  style: TextStylesPoppins.textStyles_14.apply(
                                      color: ColorStyle.ligthBlue,
                                      fontWeightDelta: 2
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text(
                                  'Bank Code',
                                  style: TextStylesPoppins.textStyles_12.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 2
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text(
                                  'Bank Name',
                                  style: TextStylesPoppins.textStyles_12.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 2
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text(
                                  'Bank Address',
                                  style: TextStylesPoppins.textStyles_12.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 2
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text(
                                  'City',
                                  style: TextStylesPoppins.textStyles_12.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 2
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text(
                                  'Country',
                                  style: TextStylesPoppins.textStyles_12.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 2
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text(
                                  'SWIFT Code',
                                  style: TextStylesPoppins.textStyles_12.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 2
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 12,),
                                Text(
                                  'GB',
                                  style: TextStylesPoppins.textStyles_14.apply(
                                      color: ColorStyle.ligthBlue,
                                      fontWeightDelta: 2
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text(
                                  'Country',
                                  style: TextStylesPoppins.textStyles_12.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 2
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text(
                                  'Code',
                                  style: TextStylesPoppins.textStyles_12.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 2
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text(
                                  '',
                                  style: TextStylesPoppins.textStyles_14.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 2
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text(
                                  '',
                                  style: TextStylesPoppins.textStyles_14.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 2
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text(
                                  '',
                                  style: TextStylesPoppins.textStyles_14.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 2
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text(
                                  '',
                                  style: TextStylesPoppins.textStyles_14.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 2
                                  ),
                                ),
                              ],
                            ),
                    SizedBox(width: 8,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 30,),
                                Text(
                                  'London',
                                  style: TextStylesPoppins.textStyles_14.apply(
                                      color: ColorStyle.ligthBlue,
                                      fontWeightDelta: 2
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text(
                                  'Location',
                                  style: TextStylesPoppins.textStyles_12.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 2
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text(
                                  'HSBC Bank PLC',
                                  style: TextStylesPoppins.textStyles_12.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 2
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text(
                                  '8 Canada Square',
                                  style: TextStylesPoppins.textStyles_12.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 2
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text(
                                  'London, E145HQ',
                                  style: TextStylesPoppins.textStyles_12.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 2
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text(
                                  'London',
                                  style: TextStylesPoppins.textStyles_12.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 2
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text(
                                  'United Kingdom',
                                  style: TextStylesPoppins.textStyles_14.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 2
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text(
                                  'MIDLGB22123',
                                  style: TextStylesPoppins.textStyles_12.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 2
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 12,),
                                Text(
                                  'XXX',
                                  style: TextStylesPoppins.textStyles_14.apply(
                                      color: ColorStyle.ligthBlue,
                                      fontWeightDelta: 2
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text(
                                  'Branch ',

                                  style: TextStylesPoppins.textStyles_12.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 2
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text(
                                  'Code',
                                  style: TextStylesPoppins.textStyles_12.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 2
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text(
                                  '',
                                  style: TextStylesPoppins.textStyles_14.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 2
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text(
                                  '',
                                  style: TextStylesPoppins.textStyles_14.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 2
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text(
                                  '',
                                  style: TextStylesPoppins.textStyles_14.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 2
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text(
                                  '',
                                  style: TextStylesPoppins.textStyles_14.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 2
                                  ),
                                ),
                              ],
                            ),

                          ],
                        ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     Text(
                        //       'Bank Code',
                        //       style: TextStyles.textStyles_14.apply(
                        //           color: ColorStyle.ligthBlue,
                        //           fontWeightDelta: 2
                        //       ),
                        //     ),
                        //     Column(
                        //       crossAxisAlignment: CrossAxisAlignment.start,
                        //       children: [
                        //         SizedBox(height:  18),
                        //         Text(
                        //           'Country',
                        //           style: TextStyles.textStyles_14.apply(
                        //               color: ColorStyle.ligthBlue,
                        //               fontWeightDelta: 2
                        //           ),
                        //         ),
                        //         Text(
                        //           'Code',
                        //           style: TextStyles.textStyles_14.apply(
                        //               color: ColorStyle.ligthBlue,
                        //               fontWeightDelta: 2
                        //           ),
                        //         ),
                        //       ],
                        //     ),
                        //     Text(
                        //       'Location',
                        //       style: TextStyles.textStyles_14.apply(
                        //           color: ColorStyle.ligthBlue,
                        //           fontWeightDelta: 2
                        //       ),
                        //     ),
                        //
                        //     Column(
                        //       crossAxisAlignment: CrossAxisAlignment.start,
                        //       children: [
                        //         SizedBox(height:  18),
                        //         Text(
                        //           'Branch ',
                        //           style: TextStyles.textStyles_14.apply(
                        //               color: ColorStyle.ligthBlue,
                        //               fontWeightDelta: 2
                        //           ),
                        //         ),
                        //         Text(
                        //           'Code',
                        //           style: TextStyles.textStyles_14.apply(
                        //               color: ColorStyle.ligthBlue,
                        //               fontWeightDelta: 2
                        //           ),
                        //         ),
                        //       ],
                        //     ),
                        //   ],
                        // ),
                        // SizedBox(height:  14),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //
                        //
                        //     Text(
                        //       'Bank Name',
                        //       style: TextStyles.textStyles_14.apply(
                        //           color: ColorStyle.secondryBlack,
                        //           fontWeightDelta: 2
                        //       ),
                        //     ),
                        //     Text(
                        //       'HSBC Bank PLC',
                        //       style: TextStyles.textStyles_14.apply(
                        //           color: ColorStyle.secondryBlack,
                        //           fontWeightDelta: 2
                        //       ),
                        //     ),
                        //   ],
                        // ),
                        //
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     Text(
                        //       'Bank Address',
                        //       style: TextStyles.textStyles_14.apply(
                        //           color: ColorStyle.secondryBlack,
                        //           fontWeightDelta: 2
                        //       ),
                        //     ),
                        //     SizedBox(width:  10),
                        //     Column(
                        //       crossAxisAlignment: CrossAxisAlignment.start,
                        //       children: [
                        //         SizedBox(height: 20,),
                        //         Text(
                        //           '8 Canada Square',
                        //           style: TextStyles.textStyles_14.apply(
                        //               color: ColorStyle.secondryBlack,
                        //               fontWeightDelta: 2
                        //           ),
                        //         ),
                        //         Text(
                        //           'London, E145HQ',
                        //           style: TextStyles.textStyles_14.apply(
                        //               color: ColorStyle.secondryBlack,
                        //               fontWeightDelta: 2
                        //           ),
                        //         ),
                        //       ],
                        //     )
                        //
                        //   ],
                        // ),
                        // SizedBox(height:  14),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     Text(
                        //       'City',
                        //       style: TextStyles.textStyles_14.apply(
                        //           color: ColorStyle.secondryBlack,
                        //           fontWeightDelta: 2
                        //       ),
                        //     ),
                        //
                        //     Text(
                        //       'London',
                        //       style: TextStyles.textStyles_14.apply(
                        //           color: ColorStyle.secondryBlack,
                        //           fontWeightDelta: 2
                        //       ),
                        //     ),
                        //
                        //   ],
                        // ),
                        // SizedBox(height:  14),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     Text(
                        //       'Country',
                        //       style: TextStyles.textStyles_14.apply(
                        //           color: ColorStyle.secondryBlack,
                        //           fontWeightDelta: 2
                        //       ),
                        //     ),
                        //     SizedBox(width:  10),
                        //     Text(
                        //       'United Kingdom',
                        //       style: TextStyles.textStyles_14.apply(
                        //           color: ColorStyle.secondryBlack,
                        //           fontWeightDelta: 2
                        //       ),
                        //     ),
                        //   ],
                        // ),
                        // SizedBox(height:  14),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     Text(
                        //       'SWIFT Code',
                        //       style: TextStyles.textStyles_14.apply(
                        //           color: ColorStyle.secondryBlack,
                        //           fontWeightDelta: 2
                        //       ),
                        //     ),
                        //     SizedBox(width:  10),
                        //     Text(
                        //       'MIDLGB22123',
                        //       style: TextStyles.textStyles_14.apply(
                        //           color: ColorStyle.secondryBlack,
                        //           fontWeightDelta: 2
                        //       ),
                        //     ),
                        //   ],
                        // ),
                        // SizedBox(height:  40),
                        SizedBox(height:  40),
                        GradientButtonWithBank(),
                        SizedBox(height:  40),



                      ],
                    ),
                    decoration: BoxDecoration(
                      color: ColorStyle.primaryWhite,
                      borderRadius: BorderRadius.circular(10),

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
