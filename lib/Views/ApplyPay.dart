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
              // padding: EdgeInsets.only(left: 12,right: 12),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
                    padding: EdgeInsets.only(right: 18,left: 18),
                    // width: 164,
                    // height: 60,
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(ImageStyle.applelogo,height: 36,),
                            SizedBox(width: 4,),
                            Text(

                              "Pay",
                              style: TextStyles.textStyles_24.apply(
                                  color: ColorStyle.secondryBlack,
                                  fontWeightDelta: 2
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Image.asset(ImageStyle.card2),
                        SizedBox(height: 120,),
                       Container(
                         alignment: Alignment.center,
                         child:  Text(
                           "Card added to Apple Wallet",
                           style: TextStyles.textStyles_14.apply(
                               color: ColorStyle.secondryBlack,
                               fontWeightDelta: 2
                           ),
                         ),

                       ),
                        SizedBox(height: 8,),
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                            "You can use this card with Apple Pay to pay online. In-app and in-store whenever you see the signs.",
                            style: TextStyles.textStyles_12.apply(
                                color: ColorStyle.secondryBlack,
                                fontWeightDelta: 1
                            ),
                          ),

                        ),
                        SizedBox(height: 30,),
                        Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Image.asset(ImageStyle.wifit_tawer,height: 50,),
                     Container(
                       height: 40,
                       width: 70,
                       // alignment: Alignment.center,
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Image.asset(ImageStyle.applelogo,height: 20,),
                           SizedBox(width: 4,),
                           Text(

                             "Pay",
                             style: TextStyles.textStyles_16.apply(
                                 color: ColorStyle.secondryBlack,
                                 fontWeightDelta: 2
                             ),
                           ),
                         ],
                       ),
                       decoration: BoxDecoration(

                           borderRadius: BorderRadius.circular(5),
                           border: Border.all(
                             width: 1,
                             color: ColorStyle.secondryBlack,
                           )
                       ),

                     ),
                   ],
                 ),
                        SizedBox(height: 50,),
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
