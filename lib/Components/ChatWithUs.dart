
import 'package:advanced_capital_pay/Components/AppBarStyle.dart';
import 'package:advanced_capital_pay/Components/ButtonCustom.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:flutter/material.dart';

import '../Styles/ColorStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';
import 'package:get/get.dart';
import '../Controllers/ChatWithUsController.dart';

class ChatWithUs  {

  static chatWithUs() {
    final controller = Get.put(ChatWithUsController());

    return Get.bottomSheet(
        GetBuilder(
            init: ChatWithUsController(),
            initState: (state) {
              controller.reset();
            },
            builder: (authController) {
          return Obx(()=>Material(
            color: ColorStyle.primaryWhite,
            child: Container(
              height: controller.heightScreen.value,
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(child: Column(
                    children: [
                      AppBar(
                        elevation: 0,
                        title: Text(
                          'Chat With Us',
                          style: TextStylesPoppins.textStyles_15
                              .apply(color: ColorStyle.secondryBlack, fontWeightDelta: 2),
                        ),
                        centerTitle: true,
                        leading: Icon(
                          Icons.menu,
                          color: ColorStyle.secondryBlack,
                        ),
                        actions: [
                          IconButton(
                            icon: Icon(
                              Icons.close_fullscreen_outlined,
                              color: ColorStyle.secondryBlack,
                            ),
                            onPressed: () {
                              controller.isMaximize.value = !controller.isMaximize.value;
                              controller.heightScreen.value = controller.isMaximize.value
                                  ? Get.context!.size!.height-AppBar().preferredSize.height : Get.context!.size!.height-300;
                            },
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.minimize_sharp,
                              color: ColorStyle.secondryBlack,
                            ),
                            onPressed: () {
                              Get.back();
                            },
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
                        decoration: BoxDecoration(
                            color: ColorStyle.primaryWhite,
                            boxShadow: [
                          BoxShadow(
                            color: ColorStyle.grey.withOpacity(.4),
                            blurRadius: 10.0,
                            // spreadRadius: 2.0,
                          ), //BoxShadow
                        ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Row(
                              children: [
                                Container(
                                  child: Icon(Icons.person, color: Colors.white, size: 30),
                                  decoration: BoxDecoration(
                                      color: Colors.black12.withOpacity(.1),
                                      borderRadius: BorderRadius.circular(50)),
                                  height: 44,
                                  width: 44,
                                ),
                                SizedBox(width: 10,),
                                Expanded(child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Customer Service Representative',
                                      style: TextStylesPoppins.textStyles_12.apply(
                                          color: ColorStyle.secondryBlack,
                                          fontWeightDelta: 2),
                                    ),
                                    Text(
                                      'AdvanceCapitalPay Support',
                                      style: TextStylesPoppins.textStyles_12.apply(
                                          color: ColorStyle.grey, fontWeightDelta: 2),
                                    ),
                                  ],
                                ),)
                              ],
                            ),),
                            Row(
                              children: [
                                InkWell(
                                  child: Icon(
                                    Icons.thumb_up_outlined,
                                    color: Colors.grey,
                                  ),
                                  onTap: () {},
                                ),
                                SizedBox(width: 10,),
                                InkWell(
                                  child: Icon(
                                    Icons.thumb_down_alt_outlined,
                                    color: Colors.grey,
                                  ),
                                  onTap: () {},
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Expanded(child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.check, size: 18, color: ColorStyle.blueSKY,),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 8),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Hello, I need some help with my account.',
                                    style: TextStylesPoppins.textStyles_12.apply(
                                        color: ColorStyle.primaryWhite, fontWeightDelta: 1),
                                  ),
                                  decoration: BoxDecoration(
                                      color: ColorStyle.secondryBlack,
                                      borderRadius: BorderRadius.circular(16)),
                                  height: 50,
                                  width: 300,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 8),
                              alignment: Alignment.center,
                              child: Text(
                                'Chat started',
                                style: TextStylesPoppins.textStyles_14
                                    .apply(color: ColorStyle.grey, fontWeightDelta: 1),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 16, right: 16),
                              alignment: Alignment.center,
                              child: Text(
                                'Customer Service Representative joined the chat',
                                style: TextStylesPoppins.textStyles_14
                                    .apply(color: ColorStyle.grey, fontWeightDelta: 1),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 8),
                              alignment: Alignment.center,
                              child: Text(
                                'Customer Service Representative',
                                style: TextStylesPoppins.textStyles_14
                                    .apply(color: ColorStyle.grey, fontWeightDelta: 1),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  child: Icon(Icons.person, color: Colors.white, size: 24,),
                                  decoration: BoxDecoration(
                                      color: Colors.black12.withOpacity(.1),
                                      borderRadius: BorderRadius.circular(50)),
                                  height: 44,
                                  width: 44,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  padding: EffectStyle.padding(16, 16, 10, 10),
                                  decoration: BoxDecoration(
                                      color: ColorStyle.grey.withOpacity(.2),
                                      borderRadius: BorderRadius.circular(16)),
                                  child: Text(
                                    'Hi, how can we help you today?',
                                    style: TextStylesPoppins.textStyles_14.apply(
                                        color: ColorStyle.secondryBlack.withOpacity(.5),
                                        fontWeightDelta: 1),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 310,
                            ),
                          ],
                        ),
                      )),
                    ],
                  ),),
                  Container(
                    padding: EdgeInsets.only(left: 16, right: 16, top: 6, bottom: 10),
                    decoration: BoxDecoration(
                        color: ColorStyle.primaryWhite,
                        boxShadow: [
                          BoxShadow(
                              color: ColorStyle.grey.withOpacity(.4),
                              blurRadius: 1.5,
                              spreadRadius: 1.5,
                              offset: Offset(0, 0)
                          ), //BoxShadow
                        ]),
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        InkWell(
                          child: Icon(
                            Icons.attach_file,
                            size: 30,
                          ),
                          onTap: () {},
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: TextField(
                            minLines: 1,
                            maxLines: 4,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.zero,
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey, width: 0.0),
                              ),
                              hintText: 'Type a message here......',
                            ),
                          ),
                        ),
                        InkWell(
                          child:
                          Icon(Icons.send_sharp, color: ColorStyle.secondryBlack),
                          onTap: () {},
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ));
        }),
      isScrollControlled: true,
    );
  }

}
