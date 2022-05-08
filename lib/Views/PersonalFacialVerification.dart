import 'package:advanced_capital_pay/Components/ComponentsSignUp.dart';
import 'package:advanced_capital_pay/Controllers/PersonalFacialVerificationController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Components/AppBarStyle.dart';
import '../Components/ButtonCustom.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/EffectStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';
import 'SignUp/EffectStyleSignUp.dart';


class PersonalFacialVerification extends StatelessWidget {
  const PersonalFacialVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final  controller = Get.put(PersonalFacialVerificationController());
    return Stack(
      children: [
        Image.asset(
          ImageStyle.bg_1,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.cover,
        ),
        Scaffold(
            appBar: AppBarStyleStatusBar(),
            backgroundColor: Colors.transparent,
            body:  GetBuilder(
              init: PersonalFacialVerificationController(),
              initState: (state) {},
              builder: (authController) {
                return Obx(() =>SingleChildScrollView(
                  padding: EffectStyle.padding(16, 16, 0, 16),
                  child: Column(
                    children: [
                      Image.asset(
                        ImageStyle.application,
                        width: MediaQuery.of(context).size.width,
                        // fit: BoxFit.fill,
                        // height: heightAppBar,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      ComponentsSignUp.topProgress(7),
                      SizedBox(
                        height: 16,
                      ),
                      Container(


                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                  child: Text(
                                    'ACFVC8JTJ',
                                    style: TextStylesPoppins.textStyles_14.apply(
                                      color: ColorStyle.primaryWhite,
                                      fontWeightDelta: 1,
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                  width: 102,
                                  height: 43,
                                  decoration: EffectStyleSignUp.decoration(ColorStyle.darkestBlueSignUp)
                              ),
                              SizedBox(
                                height: 12,
                              ),
                             Container(
                                 padding: EdgeInsets.only(left: 20, right: 20),
                               child:  Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,

                                 children: [
                                   ComponentsSignUp.title(
                                     'Facial Verification Process',
                                   ),
                                   SizedBox(height: 20,),
                                   Container(

                                     child: Column(
                                       // crossAxisAlignment: CrossAxisAlignment.start,
                                       // mainAxisAlignment: MainAxisAlignment.center,
                                       children: [
                                         SizedBox(height: 40,),
                                         Text(
                                           "Let's Get Your Verified",
                                           style: TextStylesPoppins.textStyles_14
                                               .apply(color: ColorStyle.hex('#1D75BD'),),
                                         ),
                                         SizedBox(height: 14,),
                                         Text(
                                           'Before you start please prepare your '
                                               ' identity  document and make sure it is '
                                               ' valid. We also '' require to agree to '
                                               ' your processing of your  personal'
                                               '  data.',
                                           textAlign: TextAlign.center,
                                           style: TextStylesPoppins.textStyles_14
                                               .apply(color: ColorStyle.secondryBlack, ),
                                         ),
                                         SizedBox(height: 40,),
                                         Row(
                                           mainAxisAlignment: MainAxisAlignment.center,
                                           children: [

                                             Column(
                                               crossAxisAlignment: CrossAxisAlignment.start,
                                               children: [
                                                 Container(
                                                   height: 22,
                                                   width: 22,
                                                   alignment: Alignment.centerLeft,
                                                   child: ElevatedButton(

                                                     style: ElevatedButton.styleFrom(
                                                         primary: Colors.transparent,
                                                         elevation: 0,
                                                         padding: EdgeInsets.all(0)),
                                                     child: Icon(
                                                       controller.agree.value ?
                                                       Icons.check_box : Icons.check_box_outline_blank_outlined,
                                                       color: ColorStyle.hex('#1D75BD'),
                                                     ),
                                                     onPressed: () {
                                                       controller.agree.value =
                                                       !controller.agree.value;
                                                       // setState(() {});
                                                     },
                                                   ),
                                                   // decoration: BoxDecoration(
                                                   //     border: Border.all(
                                                   //         width: 1,
                                                   //         color: ColorStyle.blueLight
                                                   //     )
                                                   // ),
                                                 ),
                                                 // Container(
                                                 //   height: 18,
                                                 //   width: 18,
                                                 //
                                                 //   decoration: BoxDecoration(
                                                 //       border: Border.all(
                                                 //           width: 1,
                                                 //           color: ColorStyle.blueLight
                                                 //       )
                                                 //   ),
                                                 // ),
                                                 SizedBox(height: 24,),
                                               ],
                                             ),
                                             SizedBox(width: 14,),
                                             Column(
                                               crossAxisAlignment: CrossAxisAlignment.start,

                                               children: [

                                                 Text(
                                                   'I agree to the processing of my personal',

                                                   style: TextStylesPoppins.textStyles_14
                                                       .apply(color: ColorStyle.secondryBlack,),
                                                 ),
                                                 Row(
                                                   children: [

                                                     Text(

                                                       'data, as described',

                                                       style: TextStylesPoppins.textStyles_14
                                                           .apply(color: ColorStyle.secondryBlack, ),
                                                     ),
                                                     Text(

                                                       ' in the Consent to',

                                                       style: TextStylesPoppins.textStyles_14
                                                           .apply(color: Colors.red,),
                                                     ),
                                                   ],
                                                 ),
                                                 Text(

                                                   'Personal Data Processing.',
                                                   style: TextStylesPoppins.textStyles_14
                                                       .apply(color: Colors.red, ),
                                                 ),
                                               ],
                                             )
                                           ],
                                         ),
                                         SizedBox(height: 40,),
                                         ElevatedButtonCustom(
                                           text: 'Next',
                                           textStyle: TextStylesPoppins.textStyles_14
                                               .apply(color: ColorStyle.primaryWhite,fontWeightDelta: 2),
                                           colorBG: ColorStyle.secondryBlack,

                                           width: 140,
                                           radiusBorder: 2,
                                           onTap: () {},
                                         ),
                                         SizedBox(height: 40,),

                                       ],
                                     ),
                                     decoration: BoxDecoration(
                                       color: ColorStyle.primaryWhite,
                                       boxShadow: [

                                         BoxShadow(
                                           color: Colors.black12,
                                           blurRadius: 25.0, // soften the shadow
                                           spreadRadius: 5.0, //extend the shadow
                                           offset: Offset(
                                             15.0, // Move to right 10  horizontally
                                             15.0, // Move to bottom 10 Vertically
                                           ),
                                         )
                                       ],
                                     ),
                                   ),
                                   SizedBox(height: 20,),

                                   ComponentsSignUp.backContinue('Back', () {

                                   }, 'Continue', () {
                                     // Get.to(PersonalApplication10());
                                   }
                                   )
                                 ],
                               ),
                             )
                            ],
                          ),
                          decoration: EffectStyleSignUp.decoration()
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Text(
                        'Please follow the instructions provided throughout '
                            ' the application to apply to on-board as an AdvanceCapitalClient. '
                            ' If you have previously started an application.',
                        style: TextStylesPoppins.textStyles_14.apply(
                          color: ColorStyle.secondryBlack,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      InkWell(
                        child: Text(
                          'Click Here.',
                          style: TextStylesPoppins.textStyles_14.apply(
                              color: ColorStyle.darkestBlueSignUp,
                              fontWeightDelta: 2
                          ),
                          textAlign: TextAlign.center,
                        ),
                        onTap: () {},
                      )
                    ],
                  ),
                ));
              },
            ),

            ),
      ],
    );
  }
}
