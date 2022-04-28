import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Components/AppBarStyle.dart';
import '../Components/BackgroundImage.dart';
import '../Components/ButtonCustom.dart';
import '../Components/TextFieldCustom.dart';
import '../Controllers/PreferredLanguageSelectionController.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';

class PreferredLanguageSelection extends StatelessWidget {
  const PreferredLanguageSelection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(PreferredLanguageSelectionController());
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
          body: GetBuilder<PreferredLanguageSelectionController>(
          init: PreferredLanguageSelectionController(),
    initState: (state) {
    controller.reset();
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
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.only(left: 20,),
                child: Text(
                  'Preferred Language Selection',
                  style: TextStyles.textStyles_20.apply(
                      color: ColorStyle.primaryWhite,
                      fontWeightDelta: 2
                  ),
                ),
              ),
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
                        height: 60,
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
                                  Text(
                                    // 'KFC',
                                    controller.chooseLanguage[index],
                                    style: TextStyles.textStyles_14.apply(
                                        color: ColorStyle.secondryBlack,
                                        fontWeightDelta: 2
                                    ),
                                  ),
                                ],
                              ),
                            ),
                           InkWell(
                             child:  Container(

                               decoration: BoxDecoration(

                                   color: (controller.intAppBar.value == index)
                                       ? ColorStyle.blueSKY
                                       : Colors.white,
                                   borderRadius:
                                   BorderRadius.circular(12),
                                   border: Border.all(
                                     width: 1,
                                     color: (controller.intAppBar.value == index)
                                         ? ColorStyle.primaryWhite
                                         : ColorStyle.secondryBlack
                                   )
                               ),

                               child: Icon(
                                 (controller.intAppBar.value == false) ?  Icons.check :  Icons.check,
                                 color: ( controller.intAppBar.value == false)
                                     ? Colors.black
                                     :  ColorStyle.primaryWhite,
                                 size: 18,
                               ),
                               alignment: Alignment.center,
                               width: 24,
                               height: 24,

                             ),
                             onTap: (){
                               controller.intAppBar.value = index;
                             },
                           )
                            // SizedBox(width: 100,),

                          ],
                        ),
                        decoration: BoxDecoration(
                          color: ColorStyle.primaryWhite,
                          borderRadius:
                          BorderRadius.circular(4),
                        ),
                      );



                    }),
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
