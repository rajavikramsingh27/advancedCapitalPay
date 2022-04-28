import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Components/AppBarStyle.dart';
import '../Components/BackgroundImage.dart';
import '../Controllers/AccountDetails.dart';
import '../Controllers/CurrentAccountController.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';

class AccountDetails extends StatelessWidget {
  const AccountDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AccountDetailsConroller());
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBarStyle(
              leadingButton: BackButton(

              ),
              // trailingButton: IconButton(
              //   icon: Image.asset(
              //     ImageStyle.chat,
              //     height: 30,
              //   ),
              //   onPressed: () {},
              // ),
            ),
            body: GetBuilder<AccountDetailsConroller>(
                init: AccountDetailsConroller(),
                initState: (state) {
                  // controller.reset();
                  // print(controller.listSelected.value);
                },
                builder: (authController) {
                  return Obx(() =>
                      SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10,),
                            Container(
                              padding: EdgeInsets.only(left: 16,right: 16),
                              child: AppBarStyleCustom1(
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
                                userLogOutButton: IconButton(
                                  icon: Image.asset(
                                    ImageStyle.user_logout,
                                    height: 30,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              color: ColorStyle.blueSKY.withOpacity(.2),


                            ),
                            SizedBox(height: 22,),
                            Container(
                              padding: EdgeInsets.only(left: 20,),
                              child: Text(
                                'Your Account Details',
                                style: TextStyles.textStyles_20.apply(
                                    color: ColorStyle.primaryWhite,
                                    fontWeightDelta: 1
                                ),
                              ),
                            ),

                            SizedBox(height: 18,),
                            Container(
                              padding: EdgeInsets.only(left: 20,),
                              child: Text(
                                'Select Account to view details',
                                style: TextStyles.textStyles_16.apply(
                                    color: ColorStyle.primaryWhite,
                                    fontWeightDelta: 1
                                ),
                              ),
                            ),
                            SizedBox(height: 8,),
                            Container(
                              // padding: EdgeInsets.only(left: 10,right: 10),
                              // color: ColorStyle.secondryBlack,
                              // height: 233,
                              child:   ListView.builder(
                                  padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 20),
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
                                                      controller.chooseSaving[index],
                                                      style: TextStyles.textStyles_14.apply(
                                                          color: ColorStyle.secondryBlack,
                                                          fontWeightDelta: 2
                                                      ),
                                                    ),
                                                    SizedBox(height: 2,),
                                                    Text(
                                                      // 'Spare change',
                                                      controller.chooseSaving1[index],
                                                      style: TextStyles.textStyles_12.apply(
                                                        color: ColorStyle.secondryBlack,
                                                        // fontWeightDelta: 2
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
                                                controller.chooseSaving2[index],
                                                style: TextStyles.textStyles_12.apply(
                                                  color: ColorStyle.secondryBlack,
                                                  // fontWeightDelta: 2
                                                ),
                                              ),
                                              SizedBox(height: 2,),
                                              Text(
                                                // '          22:31',
                                                controller.chooseSaving3[index],
                                                style: TextStyles.textStyles_14.apply(
                                                    color: ColorStyle.secondryBlack,
                                                    fontWeightDelta: 2
                                                ),
                                              ),


                                            ],
                                          )


                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(ImageStyle.bg_back),
                                          fit: BoxFit.cover,
                                        ),
                                        color: ColorStyle.primaryWhite,
                                        borderRadius:
                                        BorderRadius.circular(4),
                                      ),
                                    );



                                  }),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              padding: EdgeInsets.only(left: 20,),
                              child: Text(
                                'Your Account Details',
                                style: TextStyles.textStyles_20.apply(
                                    color: ColorStyle.primaryWhite,
                                    fontWeightDelta: 1
                                ),
                              ),
                            ),
                            SizedBox(height: 22,),
                            Container(
                              margin: EdgeInsets.only(left: 20,right: 20,bottom: 20),

                              // height: 233,
                              child:   ListView.builder(
                                  padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 20),
                                  shrinkWrap: true,
                                  itemCount: controller.chooseAccountDetails.length,
                                  // itemCount: 1,
                                  // scrollDirection: Axis.horizontal,
                                  physics: BouncingScrollPhysics(),
                                  itemBuilder: (BuildContext context, int index) {
                                    return Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 8,),
                                        Text(
                                          controller.chooseAccountDetails[index],
                                          style: TextStyles.textStyles_16.apply(
                                              color: ColorStyle.secondryBlack,
                                              fontWeightDelta: 2),
                                        ),
                                        SizedBox(height: 8,),
                                        Container(
                                          // padding: EdgeInsets.only(left: 10,right: 10),

                                          margin: EdgeInsets.only(bottom: 8),
                                          // width: 329,
                                          height: 60,
                                          decoration: BoxDecoration(

                                              borderRadius:
                                              BorderRadius.circular(30),
                                              border: Border.all(
                                                width: 1,
                                                color: ColorStyle.secondryBlack,
                                              )
                                          ),
                                          child:Row(
                                            children: [
                                              SizedBox(width: 14,),
                                              Expanded(child: TextField(

                                                // obscureText: true,
                                                decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  // border: OutlineInputBorder(),
                                                  hintText: '03228464533',
                                                  labelStyle: TextStyles.textStyles_14.apply(
                                                    color: Colors.grey,
                                                    fontWeightDelta: 1,
                                                  ),
                                                ),
                                              ),),
                                              // SizedBox(width: 10,),
                                              Image.asset(ImageStyle.Iconawesomecopy, height: 24,),
                                              SizedBox(width: 14,),
                                            ],
                                          ) ,
                                        )
                                      ],
                                    );



                                  }),
                              decoration: BoxDecoration(
                                  color: ColorStyle.primaryWhite,
                                  borderRadius:
                                  BorderRadius.circular(8),

                              ),
                            )
                          ],
                        ),
                      )


                  );
                })



        )
      ],
    );
  }
}
