import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../Components/AppBarStyle.dart';
import '../Components/BackgroundImage.dart';
import '../Components/ButtonCustom.dart';
import '../Components/CountryPicker.dart';
import '../Components/NewBeneficiarySummary.dart';
import '../Components/TextFieldCustom.dart';
import '../Controllers/BeneficiaryInternationalController.dart';
import '../Controllers/PreferredLanguageSelection1Controller.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';


class PreferredLanguageSelection1 extends StatelessWidget {
  const PreferredLanguageSelection1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(PreferredLanguageSelection1Controller());
    return Stack(
      children: [
        BackgroundImageBeneficiary(),
        Scaffold(
            appBar:     AppBarStyleCustomBenifi(
              title: Text('Select Exchange From'),
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

            body:   GetBuilder<PreferredLanguageSelection1Controller>(
    init: PreferredLanguageSelection1Controller(),
    initState: (state) {
    // controller.reset();
    // print(controller.listSelected.value);
    },
    builder: (authController) {
    return Obx(() =>
        SingleChildScrollView(
          padding: EdgeInsets.only(left: 14,right: 14,top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(child: Container(
                // margin: EdgeInsets.only(left: 4),
                alignment: Alignment.center,
                child:  Row(
                  children: [
                    SizedBox(width: 10,),
                    Icon(Icons.search,color: ColorStyle.primaryWhite.withOpacity(.4),),
                    SizedBox(width: 10,),
                    Expanded(child:   TextField(
                      // obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search',
                        hintStyle: TextStyles.textStyles_12.apply(
                          color: ColorStyle.primaryWhite.withOpacity(.4),
                          fontWeightDelta: 1,
                        ),
                      ),
                    ),)
                  ],
                ),
                // width: 174,
                height: 50,
                decoration: BoxDecoration(
                    color: ColorStyle.primaryWhite.withOpacity(.6),
                    borderRadius: BorderRadius.circular(10)
                ),
              ),),
              SizedBox(height: 12,),
              Text(
                'Popular',
                style: TextStyles.textStyles_14.apply(
                    color: ColorStyle.primaryWhite,
                    fontWeightDelta: 2
                ),
              ),
              SizedBox(height: 12,),
              Container(
                // padding: EdgeInsets.only(left: 10,right: 10),
                // color: ColorStyle.blueSKY,
                height: 240,
                child:   ListView.builder(
                  padding: EdgeInsets.only(top: 20),
                    shrinkWrap: true,
                    itemCount: controller.images1.length,
                    // itemCount: 1,
                    // scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child:  Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                        Container(
                          child: Row(
                            children: [
                              SizedBox(width: 12,),
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
                              Text(
                                // ' Spare change',
                                controller.choosePopular[index],
                                style: TextStyles.textStyles_14.apply(
                                    color: ColorStyle.secondryBlack,
                                    fontWeightDelta: 2
                                ),
                              ),
                              SizedBox(width: 12,),
                              Text(
                                // ' Spare change',
                                controller.choosePopular[index],
                                style: TextStyles.textStyles_14.apply(
                                    color: ColorStyle.grey,
                                    fontWeightDelta: 2
                                ),
                              ),

                            ],
                          ),
                        ),
                            Container(

                              child: Text(
                                // ' Spare change',
                                controller.choosePopular2[index],
                                style: TextStyles.textStyles_14.apply(
                                    color: ColorStyle.secondryBlack,
                                    fontWeightDelta: 2
                                ),
                              ),
                              padding: EdgeInsets.only(right: 12),
                            )
                            // SizedBox(width: 2,),




                          ],
                        ),
                        decoration: BoxDecoration(
                          color: ColorStyle.primaryWhite,
                          borderRadius: BorderRadius.circular(10)
                        ),
                      );



                    }),
              ),
              SizedBox(height: 12,),
              Text(
                'Cryptocurrencies',
                style: TextStyles.textStyles_14.apply(
                    color: ColorStyle.primaryWhite,
                    fontWeightDelta: 2
                ),
              ),
              SizedBox(height: 12,),
              Container(
                // padding: EdgeInsets.only(left: 10,right: 10),
                // color: ColorStyle.blueSKY,
                height: 240,
                child:   ListView.builder(
                    padding: EdgeInsets.only(top: 20),
                    shrinkWrap: true,
                    itemCount: controller.images2.length,
                    // itemCount: 1,
                    // scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(

                        margin: EdgeInsets.only(bottom: 10),
                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  SizedBox(width: 12,),
                                  Container(
                                    child: Image.asset(
                                      controller.images2[index],
                                      // height: 10,
                                    ),
                                    height: 64,
                                    width: 64,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),

                                    ),
                                  ),
                                  SizedBox(width: 12,),
                                  Text(
                                    // ' Spare change',
                                    controller.choosePopular3[index],
                                    style: TextStyles.textStyles_14.apply(
                                        color: ColorStyle.secondryBlack,
                                        fontWeightDelta: 2
                                    ),
                                  ),
                                  SizedBox(width: 12,),
                                  Text(
                                    // ' Spare change',
                                    controller.choosePopular4[index],
                                    style: TextStyles.textStyles_14.apply(
                                        color: ColorStyle.grey,
                                        fontWeightDelta: 2
                                    ),
                                  ),

                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,

                                children: [
                                  Text(
                                    // ' Spare change',
                                    controller.choosePopular5[index],
                                    style: TextStyles.textStyles_12.apply(
                                        color: ColorStyle.secondryBlack,
                                        fontWeightDelta: 2
                                    ),
                                  ),
                                  Text(
                                    // ' Spare change',
                                    controller.choosePopular6[index],
                                    style: TextStyles.textStyles_12.apply(
                                        color: ColorStyle.secondryBlack,
                                        fontWeightDelta: 2
                                    ),
                                  ),
                                ],
                              ),
                              padding: EdgeInsets.only(right: 12),
                            )
                            // SizedBox(width: 2,),




                          ],
                        ),
                        decoration: BoxDecoration(
                            color: ColorStyle.primaryWhite,
                            borderRadius: BorderRadius.circular(10)
                        ),
                      );



                    }),
              ),
              SizedBox(height: 12,),
              Text(
                'A',
                style: TextStyles.textStyles_14.apply(
                    color: ColorStyle.primaryWhite,
                    fontWeightDelta: 2
                ),
              ),
              SizedBox(height: 12,),
              Container(
                // padding: EdgeInsets.only(left: 10,right: 10),
                // color: ColorStyle.blueSKY,
                height: 100,
                child:   ListView.builder(
                    padding: EdgeInsets.only(top: 20),
                    shrinkWrap: true,
                    itemCount: controller.images3.length,
                    // itemCount: 1,
                    // scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(

                        margin: EdgeInsets.only(bottom: 10),
                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  SizedBox(width: 12,),
                                  Container(
                                    child: Image.asset(
                                      controller.images3[index],
                                      // height: 10,
                                    ),
                                    height: 64,
                                    width: 64,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),

                                    ),
                                  ),
                                  SizedBox(width: 12,),
                                  Text(
                                    // ' Spare change',
                                    controller.choosePopular7[index],
                                    style: TextStyles.textStyles_14.apply(
                                        color: ColorStyle.secondryBlack,
                                        fontWeightDelta: 2
                                    ),
                                  ),
                                  SizedBox(width: 12,),
                                  Text(
                                    // ' Spare change',
                                    controller.choosePopular8[index],
                                    style: TextStyles.textStyles_14.apply(
                                        color: ColorStyle.grey,
                                        fontWeightDelta: 2
                                    ),
                                  ),

                                ],
                              ),
                            ),
                            Container(
                              child:    Text(
                                // ' Spare change',
                                controller.choosePopular9[index],
                                style: TextStyles.textStyles_12.apply(
                                    color: ColorStyle.secondryBlack,
                                    fontWeightDelta: 2
                                ),
                              ),
                              padding: EdgeInsets.only(right: 12),
                            )
                            // SizedBox(width: 2,),




                          ],
                        ),
                        decoration: BoxDecoration(
                            color: ColorStyle.primaryWhite,
                            borderRadius: BorderRadius.circular(10)
                        ),
                      );



                    }),
              ),
              SizedBox(height: 40,),


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
