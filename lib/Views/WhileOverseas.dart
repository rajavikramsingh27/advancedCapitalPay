import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



import '../Components/AppBarStyle.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';
import 'SignUp/ComponentsSignUp.dart';

class WhileOverseas extends StatelessWidget {
  const WhileOverseas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          ImageStyle.tiard,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.cover,
        ),
        Scaffold(
            appBar: AppBarStyleTitle(
              title: 'While Overseas',
              leadingButton: IconButton(
                icon: Image.asset(
                  ImageStyle.back_circle,
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
            ),
            backgroundColor: Colors.transparent,
            body:SingleChildScrollView(
              child:  Column(
                children: [
                  Container(
                    // alignment: Alignment.topRight,
                    //   padding: EdgeInsets.only(top: 10,),
                      height: 225,
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 14),
                            child:   Text(
                              'Savannah\'s Wedding Day 25th November 2022',
                              // controller.listApplyLeave[index],
                              style: TextStyles
                                  .textStyles_12
                                  .apply(
                                  fontWeightDelta: 1,
                                  color: ColorStyle
                                      .primaryWhite),
                            ),
                          ),

                          SizedBox(
                            height: 110,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 14,right: 14),
                            height: 64,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 40,
                                        height:50 ,
                                        alignment: Alignment.bottomCenter,
                                        child: Text(
                                          ' 20',
                                          // controller.listApplyLeave[index],
                                          style: TextStyles
                                              .textStyles_24
                                              .apply(
                                              fontWeightDelta: 1,
                                              color: ColorStyle
                                                  .primaryWhite),
                                        ),
                                        // decoration: BoxDecoration(
                                        //     color: ColorStyle.blueSKY
                                        // ),
                                      ),
                                      Container(
                                        width: 65,
                                        child: Text(
                                          ' November Departing',
                                          // controller.listApplyLeave[index],
                                          style: TextStyles
                                              .textStyles_12
                                              .apply(
                                              fontWeightDelta: 1,
                                              color: ColorStyle
                                                  .primaryWhite),
                                        ),
                                      ),


                                    ],
                                  ),
                                ),

                                Container(
                                  alignment: Alignment.center,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 40,
                                        height:50 ,
                                        alignment: Alignment.bottomCenter,
                                        child: Text(
                                          ' 20',
                                          // controller.listApplyLeave[index],
                                          style: TextStyles
                                              .textStyles_24
                                              .apply(
                                              fontWeightDelta: 1,
                                              color: ColorStyle
                                                  .primaryWhite),
                                        ),
                                        // decoration: BoxDecoration(
                                        //     color: ColorStyle.blueSKY
                                        // ),
                                      ),

                                      Container(
                                        width: 65,
                                        child: Text(
                                          ' November Departing',
                                          // controller.listApplyLeave[index],
                                          style: TextStyles
                                              .textStyles_12
                                              .apply(
                                              fontWeightDelta: 1,
                                              color: ColorStyle
                                                  .primaryWhite),
                                        ),
                                      ),


                                    ],
                                  ),
                                ),






                              ],
                            ),
                            decoration: BoxDecoration(
                                color: ColorStyle.secondryBlack.withOpacity(0.5)
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageStyle.Group2201,
                          ),
                          fit: BoxFit.cover,
                        ),
                      )
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 20,right: 20,top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Seychelles',
                                    // controller.listApplyLeave[index],
                                    style: TextStyles
                                        .textStyles_14
                                        .apply(
                                        fontWeightDelta: 2,
                                        color: ColorStyle
                                            .secondryBlack),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Row(
                                      children: [
                                        Text(
                                          'Add Destination',
                                          // controller.listApplyLeave[index],
                                          style: TextStyles
                                              .textStyles_12
                                              .apply(
                                              fontWeightDelta: 1,
                                              color: ColorStyle
                                                  .secondryBlack),
                                        ),
                                        SizedBox(
                                          width: 6,
                                        ),
                                        Image.asset(
                                          ImageStyle.adddestination,
                                          width: 26,
                                          height: 26,
                                          // fit: BoxFit.cover,
                                        ),




                                      ],
                                    ),
                                  ),








                                ],
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'My Travel Notes',
                                    // controller.listApplyLeave[index],
                                    style: TextStyles
                                        .textStyles_14
                                        .apply(
                                        fontWeightDelta: 2,
                                        color: ColorStyle
                                            .secondryBlack),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Row(
                                      children: [
                                        Text(
                                          'Edit',
                                          // controller.listApplyLeave[index],
                                          style: TextStyles
                                              .textStyles_12
                                              .apply(
                                              fontWeightDelta: 1,
                                              color: ColorStyle
                                                  .secondryBlack),
                                        ),
                                        SizedBox(
                                          width: 6,
                                        ),
                                        Image.asset(
                                          ImageStyle.Edit,
                                          width: 26,
                                          height: 26,
                                          color: ColorStyle.secondryBlack,
                                          // fit: BoxFit.cover,
                                        ),




                                      ],
                                    ),
                                  ),








                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Savannah\'s Wedding in Seychelles ',
                                style: TextStyles
                                    .textStyles_12
                                    .apply(
                                    fontWeightDelta: 1,
                                    color: ColorStyle
                                        .secondryBlack),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                    'Reminder to contact Savannah\'s mum and'
                                    ' thank her for sorting out the flight details.',
                                // controller.listApplyLeave[index],
                                style: TextStyles
                                    .textStyles_12
                                    .apply(
                                    fontWeightDelta: 1,
                                    color: ColorStyle
                                        .secondryBlack),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Text(
                                'Your Private Travel Notes',
                                // controller.listApplyLeave[index],
                                style: TextStyles
                                    .textStyles_12
                                    .apply(
                                    fontWeightDelta: 3,
                                    color: ColorStyle
                                        .secondryBlack),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.only(left: 16,right: 16),
                                // width: 148,
                                height: 98,
                                child:Text(
                                  "Savannah's Wedding in Seychelles"
                                      " Reminder to contact Savannah's mum and "
                                      "thank her for sorting out the flight details.",
                                  // controller.listApplyLeave[index],
                                  style: TextStyles
                                      .textStyles_12
                                      .apply(
                                      fontWeightDelta: 1,
                                      color: ColorStyle
                                          .secondryBlack),
                                ),
                                decoration: BoxDecoration(
                                  // color: ColorStyle.blueLight,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                      color: ColorStyle.secondryBlack
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 26,
                              ),
                              Text(
                                'Overseas I Plan To',
                                // controller.listApplyLeave[index],
                                style: TextStyles
                                    .textStyles_12
                                    .apply(
                                    fontWeightDelta: 3,
                                    color: ColorStyle
                                        .secondryBlack),
                              ),
                              SizedBox(
                                height: 19,
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            ImageStyle.searchsymbol,
                                            width: 24,
                                            height: 24,
                                            // fit: BoxFit.cover,
                                          ),
                                          SizedBox(
                                            width: 6,
                                          ),
                                          Text(
                                            'Use ATMs Frequently',
                                            // controller.listApplyLeave[index],
                                            style: TextStyles
                                                .textStyles_12
                                                .apply(
                                                fontWeightDelta: 1,
                                                color: ColorStyle
                                                    .secondryBlack),
                                          ),


                                        ],
                                      ),
                                    ),
                                    Image.asset(
                                      ImageStyle.Component11,
                                      width: 25,
                                      // height: 30,
                                      // fit: BoxFit.cover,
                                    ),






                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 21,
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            ImageStyle.coins,
                                            width: 24,
                                            height: 24,
                                            // fit: BoxFit.cover,
                                          ),
                                          SizedBox(
                                            width: 6,
                                          ),
                                          Text(
                                            'Make Large Purchases',
                                            // controller.listApplyLeave[index],
                                            style: TextStyles
                                                .textStyles_12
                                                .apply(
                                                fontWeightDelta: 1,
                                                color: ColorStyle
                                                    .secondryBlack),
                                          ),


                                        ],
                                      ),
                                    ),

                                    Image.asset(
                                      ImageStyle.Component11,
                                      width: 24,
                                      height: 24,
                                      // fit: BoxFit.cover,
                                    ),






                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 24,
                              ),
                              Text(
                                'If you\'ve got an idea of how you\'ll '
                                    'be using your cards, let us know, it\'ll help us keep '
                                    'an eye out for suspicious activity.',
                                style: TextStyles
                                    .textStyles_12
                                    .apply(
                                    fontWeightDelta: 1,
                                    color: ColorStyle
                                        .secondryBlack),
                              ),
                              SizedBox(
                                height: 24,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    width: 148,
                                    height: 37,
                                    child:    Text(
                                      'Delete',
                                      // controller.listApplyLeave[index],
                                      style: TextStyles
                                          .textStyles_12
                                          .apply(
                                          color: ColorStyle
                                              .blueSKY),
                                    ),
                                    decoration: BoxDecoration(
                                      // color: ColorStyle.blueLight,
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(
                                          color: ColorStyle.blueSKY
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    width: 148,
                                    height: 36,
                                    child:  Text(
                                      'Submit',
                                      // controller.listApplyLeave[index],
                                      style: TextStyles
                                          .textStyles_12
                                          .apply(
                                          color: ColorStyle
                                              .primaryWhite),
                                    ),
                                    decoration: BoxDecoration(
                                        color: ColorStyle.blueSKY,
                                        borderRadius: BorderRadius.circular(50)
                                    ),
                                  ),


                                ],
                              ),
                              // Row(
                              //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              //   children: [
                              //     ElevatedButtonCustom(
                              //       // width:284,
                              //       text: 'Delete',
                              //       colorBG: ColorStyle.blueSKY,
                              //       radiusBorder: 30,
                              //       textStyle: TextStyles.textStyles_16.apply(
                              //           color: ColorStyle.primaryWhite,
                              //           fontWeightDelta: 1),
                              //       onTap: () {
                              //         // Get.to(BusinessApplication1());
                              //       },
                              //     ),
                              //     ElevatedButtonCustom(
                              //       // width:284,
                              //       text: 'Submit',
                              //       colorBG: ColorStyle.blueSKY,
                              //       radiusBorder: 30,
                              //       textStyle: TextStyles.textStyles_16.apply(
                              //           color: ColorStyle.primaryWhite,
                              //           fontWeightDelta: 1),
                              //       onTap: () {
                              //         // Get.to(BusinessApplication1());
                              //       },
                              //     ),
                              //
                              //
                              //   ],
                              // ),







                            ],
                          ),
                          width: double.infinity,
                          // height: 300,
                          decoration: BoxDecoration(
                            color: ColorStyle.primaryWhite,
                            // borderRadius: BorderRadius.circular(10)

                          ),
                        ),

                      ],
                    ),
                  ),


                ],
              ),
            )
        ),
      ],
    );
  }
}
