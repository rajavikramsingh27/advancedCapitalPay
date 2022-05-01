import 'package:advanced_capital_pay/Views/SignUp/EffectStyleSignUp.dart';
import 'package:flutter/material.dart';

import '../Components/AppBarStyle.dart';
import '../Components/BackgroundImage.dart';
import '../Components/ButtonCustom.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';

class ApplyPay extends StatelessWidget {
  const ApplyPay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImageBeneficiary(),
        Scaffold(
            appBar:     AppBarStyleCustomBenifi(
              title: Text(
                'Apply Pay',
                style: TextStyles.textStyles_20.apply(
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
              padding: EdgeInsets.only(left: 12,right: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
                    padding: EdgeInsets.only(right: 18,left: 18),
                    // width: 164,
                    // height: 60,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [




                        SizedBox(height: 20,),
                        Image.asset(ImageStyle.card2),
                        Text(
                          "Card added to Apple Wallet",
                          style: TextStyles.textStyles_14.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 2
                          ),
                        ),

                        Text(
                          "You can use this card with Apple Pay to pay online. In-app and in-store whenever you see the signs.",
                          style: TextStyles.textStyles_14.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 2
                          ),
                        ),
                        SizedBox(height: 30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            // SizedBox(width: 26,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [

                                Text(
                                  "AdvanceCapitalPay Response:",
                                  style: TextStyles.textStyles_14.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 2
                                  ),
                                ),
                                Text(
                                  "Hi Harrison, please confirm your ID card ",
                                  style: TextStyles.textStyles_12.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 1
                                  ),

                                ),
                                Text(
                                  "number before we procced.",
                                  style: TextStyles.textStyles_12.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 1
                                  ),

                                ),
                              ],
                            ),
                            SizedBox(width: 10,),
                            Image.asset(ImageStyle.Group2220
                              ,height: 44,),

                          ],
                        ),
                        SizedBox(height: 40,),
                        Text(
                          'Response',
                          style: TextStyles.textStyles_16.apply(
                              color: ColorStyle.secondryBlack,
                              fontWeightDelta: 2
                          ),
                        ),
                        SizedBox(height: 10,),
                        SizedBox(height: 10,),
                        Container(
                          padding: EdgeInsets.only(top: 140,left: 10,right: 10,bottom: 10),
                          alignment: Alignment.center,
                          // height: 164,
                          child:  Container(
                            height: 44,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  child: Icon(
                                    Icons.add,
                                    size: 14,
                                    color: ColorStyle.darkestBlueSignUp,
                                  ),
                                  height: 22,
                                  width: 22,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.circular(20),
                                    border: Border.all(
                                      width: 1.8,
                                      color: ColorStyle.darkestBlueSignUp,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Add Files or Drop Files Here',
                                  style: TextStyles.textStyles_12.apply(
                                    color: ColorStyle.darkestBlueSignUp,
                                  ),
                                ),
                              ],
                            ),
                            decoration: EffectStyleSignUp.decoration(ColorStyle.primaryWhite, 25),
                          ),
                          decoration: EffectStyleSignUp.decoration1(ColorStyle.primaryWhite, 25),
                        ),

                        SizedBox(height: 30,),
                        GradientButtonWithMassage(),
                        SizedBox(height: 40,),


                      ],
                    ),
                    decoration: BoxDecoration(
                      // color: ColorStyle.primaryWhite,
                      //   borderRadius: BorderRadius.circular(5),
                        color: ColorStyle.primaryWhite
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
