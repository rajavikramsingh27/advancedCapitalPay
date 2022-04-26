import 'package:advanced_capital_pay/Components/ButtonCustom.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';
import '../Views/OTPScreen.dart';
import '../Components/BackgroundImage.dart';
import '../Components/AppBarStyle.dart';
import '../Components/TextFieldCustom.dart';
import 'ForgotPassword/ForgotPassword.dart';
import 'SignUp/PersonalApplication1.dart';


class SavingGoal extends StatelessWidget {
  const SavingGoal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          // appBar: AppBarStyleCustom(
          //   leadingButton: IconButton(
          //     icon: Image.asset(
          //       ImageStyle.ellipse2,
          //       height: 30,
          //     ),
          //     onPressed: () {},
          //   ),
          //   trailingButton: IconButton(
          //     icon: Image.asset(
          //       ImageStyle.chat,
          //       height: 30,
          //     ),
          //     onPressed: () {},
          //   ),
          //   settingButton: IconButton(
          //     icon: Image.asset(
          //       ImageStyle.settings,
          //       height: 30,
          //     ),
          //     onPressed: () {},
          //   ),
          // ),
          body:SingleChildScrollView(

            child:  Column(
              children: [
                Container(
                  padding: EdgeInsets.only(
                      left: 12,
                      right: 12


                  ),
                  child: AppBarStyleCustom(
                    leadingButton: IconButton(
                      icon: Image.asset(
                        ImageStyle.ellipse2,
                        height: 30,
                      ),
                      onPressed: () {},
                    ),
                    trailingButton: IconButton(
                      icon: Image.asset(
                        ImageStyle.chat,
                        height: 30,
                      ),
                      onPressed: () {},
                    ),
                    settingButton: IconButton(
                      icon: Image.asset(
                        ImageStyle.settings,
                        height: 30,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
               SizedBox(height: 10,),
                Container(
                  height: MediaQuery.of(context).size.height,
                       child: Column(
                         children: [
                           SizedBox(height: 20,),
                           Container(
                             alignment: Alignment.center,
                             child: Text(
                               'Total saving',
                               style: TextStyles.textStyles_20.apply(
                                   color: ColorStyle.grey,
                                   fontWeightDelta: 2
                               ),
                             ),
                           ),
                           Container(
                             alignment: Alignment.center,
                             child: Text(
                               'S 8,187.89',
                               style: TextStyles.textStyles_46.apply(
                                   color: ColorStyle.secondryBlack,
                                   fontWeightDelta: 2
                               ),
                             ),
                           ),
                           SizedBox(height: 28,),
                           Container(
                             margin: EdgeInsets.only(left: 22, right: 22),
                             height: 80,
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.end,
                               children: [
                                 Icon(Icons.cancel_outlined,color: ColorStyle.primaryWhite,),
                                 Row(

                                   children: [
                                     SizedBox(width: 12,),
                                     Image.asset(
                                       ImageStyle.finance,
                                       height: 38,
                                     ),
                                     SizedBox(width: 24,),
                                     Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         Row(
                                           children: [
                                             Text(
                                               'You are doing',
                                               style: TextStyles.textStyles_12.apply(
                                                 color: ColorStyle.primaryWhite,
                                               )
                                               ),
                                             Text(
                                                 ' great',
                                                 style: TextStyles.textStyles_12.apply(
                                                   color: ColorStyle.primaryWhite,
                                                   fontWeightDelta: 3
                                                 )
                                             ),
                                             Text(
                                                 ' this month',
                                                 style: TextStyles.textStyles_12.apply(
                                                   color: ColorStyle.primaryWhite,
                                                 )
                                             ),
                                           ],
                                         ),
                                         Row(
                                           children: [
                                             Text(
                                               'with',
                                               style: TextStyles.textStyles_14.apply(
                                                 color: ColorStyle.primaryWhite,
                                               ),
                                             ),
                                             Text(
                                               ' S 730.4 ',
                                               style: TextStyles.textStyles_14.apply(
                                                 color: ColorStyle.primaryWhite,
                                                 fontWeightDelta: 2
                                               ),
                                             ),
                                             Text(
                                               ' saved',
                                               style: TextStyles.textStyles_14.apply(
                                                 color: ColorStyle.primaryWhite,
                                               ),
                                             ),
                                           ],
                                         ),

                                       ],
                                     )


                                   ],
                                 ),

                               ],
                             ),
                             decoration: BoxDecoration(
                               boxShadow: [
                                 BoxShadow(
                                   color:ColorStyle.blueSKY,
                                   // spreadRadius: 10,
                                   blurRadius: 4,
                                   // offset: Offset(0, 7), // changes position of shadow
                                 ),
                               ],
                               borderRadius: BorderRadius.circular(8),
                               color:ColorStyle.blueSKY,


                             ),

                           ),
                           SizedBox(height: 28,),
                          Container(
                            padding: EdgeInsets.only(
                                left: 22,
                                right: 22


                            ),
                            child:  Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Saving Goals',
                                  style: TextStyles.textStyles_24.apply(
                                      color: ColorStyle.secondryBlack,
                                      fontWeightDelta: 3
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Icon(
                                    Icons.add,
                                    color: ColorStyle.primaryWhite,
                                    size: 30,
                                  ),
                                  height: 36,
                                  width: 36,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color:ColorStyle.blueSKY,

                                  ),
                                ),
                              ],
                            ),
                          )
                         ],
                       ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(39),
                      topLeft: Radius.circular(39),
                    ),
                    color:ColorStyle.blueSKY,
                    image: DecorationImage(
                      image: AssetImage(ImageStyle.bg_Image),
                      fit: BoxFit.cover,
                    ),
                  ),

                )

              ],
            ),
          )


        )
      ],
    );
  }
}
