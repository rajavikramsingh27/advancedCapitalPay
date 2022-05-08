
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Components/AppBarStyle.dart';
import '../../Components/SearchBarCustom.dart';
import '../../Styles/ColorStyle.dart';
import '../../Styles/EffectStyle.dart';
import '../../Styles/ImageStyle.dart';
import '../../Styles/TextStyles.dart';
import '../../Components/BackgroundImage.dart';
import '../../Controllers/TransferBetweenAccountController.dart';

import 'package:get/utils.dart';
import 'dart:ui';
import '../../../../Styles/ColorStyle.dart';
import '../../../../Styles/EffectStyle.dart';
import '../../../../Styles/ImageStyle.dart';
import '../../../../Styles/TextStyles.dart';
import '../../Controllers/Crypto/CryptoRecieveController.dart';



class CryptoRecieve extends StatelessWidget {
  CryptoRecieve({Key? key}) : super(key: key);

  final controller = Get.put(CryptoRecieveController());

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(
          imageName: ImageStyle.cryptoBG1,
        ),
        Scaffold(
          appBar: AppBarStyle(
            leadingButton: IconButton(
              icon: Image.asset(ImageStyle.back_circle, height: 30,),
              onPressed: () {
                Get.back();
              },
            ),
            trailingButton: InkWell(
              child: Text(
                'Done',
                maxLines: 1,
                style: TextStylesSFCompactDisplay.textStyles_14
                    .apply(
                  color: ColorStyle.primaryWhite,
                  // fontWeightDelta: 2,
                ),
              ),
              onTap: () {

              },
            ),
          ),
          backgroundColor: ColorStyle.darkestBlue.withOpacity(0.3),
          body: Column(
            children: [
              SizedBox(height: 6),
              Container(
                child: Text(
                  'Recieve',
                  maxLines: 1,
                  style: TextStylesSFCompactDisplay.textStyles_14
                      .apply(
                    color: ColorStyle.primaryWhite,
                    // fontWeightDelta: 2,
                  ),
                ),
                alignment: Alignment.center,
              ),
              SizedBox(height: 16),
              Container(
                width: double.infinity,
                height: 40,
                margin: EdgeInsets.only(left: 16, right: 16),
                padding: EdgeInsets.only(left: 6, right: 6),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: ColorStyle.grayColor,
                      size: 30,
                    ),
                    Expanded(
                        child: TextField(
                          style: TextStylesPoppins.textStyles_16.apply(
                            color: ColorStyle.secondryBlack,
                            fontWeightDelta: 0,
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(bottom: 5),
                            hintText: "Search",
                            hintStyle: TextStylesSFCompactDisplay.textStyles_15.apply(
                              color: ColorStyle.grey,
                              fontWeightDelta: 0,
                            ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                          onChanged: (value) {

                          },
                        ))
                  ],
                ),
              ),
              Expanded(child: ListView.separated(
                  padding: EffectStyle.padding(24, 24, 16, 16),
                  shrinkWrap: true,
                  itemCount: controller.images.length,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 10,);
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                          color: ColorStyle.blueLight
                              .withOpacity(.1),
                          borderRadius:
                          BorderRadius.circular(4),
                        ),
                        padding: EdgeInsets.only(left: 12, right: 12, top: 16, bottom: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              crossAxisAlignment:
                              CrossAxisAlignment
                                  .center,
                              children: [
                                Image.asset(
                                  controller.images[index],
                                  height: 48,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment
                                      .start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          controller.chooseSaving[
                                          index],
                                          style: TextStylesSFCompactDisplay
                                              .textStyles_10
                                              .apply(
                                              color: ColorStyle
                                                  .primaryWhite,
                                              fontWeightDelta:
                                              1),
                                        ),
                                        SizedBox(width: 3,),
                                        Text(
                                          controller.arrTypeCrypto[
                                          index],
                                          style: TextStylesSFCompactDisplay
                                              .textStyles_10
                                              .apply(
                                              color: ColorStyle
                                                  .hex(controller.arrTypeCryptoColor[index]),
                                              fontWeightDelta:
                                              1),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      // 'Spare change',
                                      controller
                                          .chooseSaving1[
                                      index],
                                      style: TextStylesSFCompactDisplay
                                          .textStyles_14
                                          .apply(
                                          color: ColorStyle
                                              .primaryWhite,
                                          fontWeightDelta:
                                          2),
                                    ),
                                    Text(
                                      // 'Spare change',
                                      controller
                                          .chooseSaving2[
                                      index],
                                      style: TextStylesSFCompactDisplay
                                          .textStyles_10
                                          .apply(
                                          color: controller.chooseSaving2[index].contains('+') ? Colors.green : Colors.red,
                                          fontWeightDelta:
                                          1),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Expanded(child: Container(
                              child: Image.asset(
                                ImageStyle.light2,
                                // height: 38,
                              ),
                              padding: EffectStyle.padding(8, 8, 0, 0),
                            )),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      controller
                                          .chooseSaving3[index],
                                      style: TextStylesSFCompactDisplay
                                          .textStyles_10
                                          .apply(
                                          color: ColorStyle
                                              .primaryWhite,
                                          fontWeightDelta:
                                          3),
                                    ),
                                    Text(
                                      controller
                                          .chooseSaving4[index],
                                      style: TextStylesSFCompactDisplay
                                          .textStyles_10
                                          .apply(
                                          color: ColorStyle
                                              .primaryWhite,
                                          fontWeightDelta: 0),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10,),
                                Image.asset(ImageStyle.qrCode,
                                  height: 40,
                                  fit: BoxFit.fill,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      onTap: () {
                        // Get.to(CryptoTransactionList());
                      },
                    );
                  }),)
            ],
          ),
        ),
      ],
    );
  }
}


