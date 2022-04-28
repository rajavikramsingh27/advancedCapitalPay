import 'package:advanced_capital_pay/Views/SignUp/ComponentsSignUp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../Controllers/SavingGoal2Controller.dart';
import '../Controllers/SavingGoalController.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';
import '../Views/OTPScreen.dart';
import '../Components/BackgroundImage.dart';
import '../Components/AppBarStyle.dart';
import '../Components/TextFieldCustom.dart';
import 'ForgotPassword/ForgotPassword.dart';
import 'SignUp/PersonalApplication1.dart';

class SavingGoal2 extends StatelessWidget {
  const SavingGoal2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SavingGoal2Controller());
    return Scaffold(
      backgroundColor: ColorStyle.primaryWhite,
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

      body: GetBuilder<SavingGoal2Controller>(
          init: SavingGoal2Controller(),
          initState: (state) {
            // controller.reset();
            // print(controller.listSelected.value);
          },
          builder: (authController) {
            return Obx(() =>
                SingleChildScrollView(
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Container(
                        padding: EdgeInsets.only(left: 20,right: 20),
                        height: 235,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              children: [

                                Container(
                                    child:  Icon(Icons.arrow_back,color: ColorStyle.primaryWhite,size: 18,),
                                    height: 28,
                                    width: 28,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            width: 2,
                                            color: ColorStyle.primaryWhite
                                        )
                                    )
                                ),
                                Container(width: 98,),
                                Text(
                                  'Maldives',
                                  style: TextStyles.textStyles_24.apply(
                                      color: ColorStyle.primaryWhite,
                                      fontWeightDelta: 2
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              '68 days left',
                              style: TextStyles.textStyles_12.apply(
                                  color: ColorStyle.primaryWhite,
                                  fontWeightDelta: 2
                              ),
                            ),
                            Text(
                              '8,187.89',
                              style: TextStyles.textStyles_24.apply(
                                  color: ColorStyle.primaryWhite,
                                  fontWeightDelta: 2
                              ),
                            ),
                            Container(height: 40,),
                            ComponentsSignUpCustom.topProgress(5),
                            Container(height: 20,),
                          ],
                        ),

                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageStyle.card_3),
                            fit: BoxFit.cover,
                          ),
                        ),

                      ),
                      SizedBox(height: 48,),
                      Container(
                        padding: EdgeInsets.only(left: 20,right: 20),

                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  child: Image.asset(
                                    ImageStyle.wallet4,

                                  ),
                                  height: 64,
                                  width: 64,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: ColorStyle.ligthBlue,
                                    boxShadow: [
                                      BoxShadow(
                                        color: ColorStyle.blueSKY,
                                        // spreadRadius: 10,
                                        blurRadius: 2,
                                        // offset: Offset(0, 7), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  'Add Funds',
                                  style: TextStyles.textStyles_12.apply(
                                      color: ColorStyle.ligthBlue,
                                      fontWeightDelta: 2
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  child: Image.asset(
                                    ImageStyle.withdraw2,
                                    height: 10,
                                    color: ColorStyle.ligthBlue,
                                  ),
                                  height: 64,
                                  width: 64,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: ColorStyle.primaryWhite,
                                    boxShadow: [
                                      BoxShadow(
                                        color: ColorStyle.grey.withOpacity(.3),
                                        // spreadRadius: 10,
                                        blurRadius: 2,
                                        // offset: Offset(0, 7), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  'Withdraw',
                                  style: TextStyles.textStyles_12.apply(
                                      color: ColorStyle.ligthBlue,
                                      fontWeightDelta: 2
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  child: Image.asset(
                                    ImageStyle.menudotsvertical,
                                    height: 10,
                                    width: 10,
                                    color: ColorStyle.ligthBlue,
                                  ),
                                  height: 64,
                                  width: 64,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: ColorStyle.primaryWhite,
                                    boxShadow: [
                                      BoxShadow(
                                        color: ColorStyle.grey.withOpacity(.3),
                                        // spreadRadius: 1,
                                        blurRadius: 3,
                                        // offset: Offset(0, 7), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  'More',
                                  style: TextStyles.textStyles_12.apply(
                                      color: ColorStyle.ligthBlue,
                                      fontWeightDelta: 2
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 16,),
                      Container(
                        height: 1,
                        color: ColorStyle.grey,
                      ),
                      SizedBox(height: 20,),
                      Container(
                          padding: EdgeInsets.only(left: 20,),

                          child:  Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              SizedBox(height: 8),
                              Text(
                                'Saving rules',
                                style: TextStyles.textStyles_16.apply(
                                    color: ColorStyle.secondryBlack,
                                    fontWeightDelta: 2
                                ),
                              ),
                              Container(
                                // padding: EdgeInsets.only(left: 10,right: 10),
                                // color: ColorStyle.secondryBlack,
                                height: 160,
                                child:   ListView.builder(
                                    // padding: EdgeInsets.only(left: 10,right: 10,top: 20),
                                    shrinkWrap: true,
                                    itemCount: controller.images1.length,
                                    // itemCount: 1,
                                    // scrollDirection: Axis.horizontal,
                                    physics: BouncingScrollPhysics(),
                                    itemBuilder: (BuildContext context, int index) {
                                      return  Row(

                                        children: [
                                          Container(
                                            child: Image.asset(
                                              controller.images1[index],
                                              // height: 10,
                                            ),
                                            height: 64,
                                            width: 64,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(40),

                                            ),
                                          ),
                                          SizedBox(width: 12,),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                // ' Spare change',
                                                controller.chooseSaving[index],
                                                style: TextStyles.textStyles_14.apply(
                                                    color: ColorStyle.grey,
                                                    fontWeightDelta: 2
                                                ),
                                              ),
                                              Text(
                                                // 'Round-Up ',
                                                controller.chooseSaving1[index],
                                                style: TextStyles.textStyles_14.apply(
                                                    color: ColorStyle.secondryBlack,
                                                    fontWeightDelta: 2
                                                ),
                                              ),
                                            ],
                                          ),



                                        ],
                                      );



                                    }),
                              ),



                            ],
                          )
                      ),
                      SizedBox(height: 16,),
                      Container(
                        height: 1,
                        color: ColorStyle.grey,
                      ),
                      SizedBox(height: 16,),
                      Container(
                       padding: EdgeInsets.only(left: 10),
                       child:  Text(
                         'Activity',
                         style: TextStyles.textStyles_16.apply(
                             color: ColorStyle.secondryBlack,
                             fontWeightDelta: 2
                         ),
                       ),
                     ),
                      Container(
                        // padding: EdgeInsets.only(left: 10,right: 10),
                        // color: ColorStyle.secondryBlack,
                        height: 233,
                        child:   ListView.builder(
                            padding: EdgeInsets.only(left: 20,right: 20,top: 20),
                            shrinkWrap: true,
                            itemCount: controller.images.length,
                            // itemCount: 1,
                            // scrollDirection: Axis.horizontal,
                            physics: BouncingScrollPhysics(),
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                padding: EdgeInsets.only(left: 10,right: 10),
                                margin: EdgeInsets.only(bottom: 8),
                                // width: 329,
                                height: 80,
                                child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                   Container(
                                     child: Row(

                                       children: [
                                         Image.asset(
                                           controller.images[index],
                                           height: 38,
                                         ),
                                         SizedBox(width: 10,),
                                         Column(
                                           crossAxisAlignment: CrossAxisAlignment.start,
                                           children: [
                                             SizedBox(height: 20,),
                                             Text(
                                               // 'KFC',
                                               controller.chooseActivity[index],
                                               style: TextStyles.textStyles_14.apply(
                                                   color: ColorStyle.secondryBlack,
                                                   fontWeightDelta: 2
                                               ),
                                             ),
                                             SizedBox(height: 2,),
                                             Text(
                                               'Spare change',
                                               style: TextStyles.textStyles_14.apply(
                                                   color: ColorStyle.grey,
                                                   fontWeightDelta: 2
                                               ),
                                             ),


                                           ],
                                         ),
                                       ],
                                     ),
                                   ),
                                    // SizedBox(width: 100,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        SizedBox(height: 20,),
                                        Text(
                                          // '     + S 1.90',
                                          controller.chooseDoller[index],
                                          style: TextStyles.textStyles_14.apply(
                                              color: ColorStyle.green,
                                              fontWeightDelta: 2
                                          ),
                                        ),
                                        SizedBox(height: 2,),
                                        Text(
                                          // '          22:31',
                                          controller.chooseTime[index],
                                          style: TextStyles.textStyles_14.apply(
                                              color: ColorStyle.grey,
                                              fontWeightDelta: 2
                                          ),
                                        ),


                                      ],
                                    )


                                  ],
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius:
                                  BorderRadius.circular(10),
                                ),
                              );



                            }),
                      )



                    ],
                  ),
                )


            );
          })


    );
  }
}
