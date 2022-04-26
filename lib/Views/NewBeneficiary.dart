import 'package:flutter/material.dart';


import '../Components/AppBarStyle.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';
class NewBeneficiary extends StatelessWidget {
  const NewBeneficiary({Key? key}) : super(key: key);

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
              title: 'Travel Destination',
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
                      padding: EdgeInsets.only(top: 160,),
                      height: 225,
                      child:  Column(

                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 14,right: 14),
                            height: 64,
                            child: Row(
                              children: [
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
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                               'When will you be away?',
                                // controller.listApplyLeave[index],
                                style: TextStyles
                                    .textStyles_12
                                    .apply(

                                    color: ColorStyle
                                        .secondryBlack),
                              ),

                              SizedBox(
                                height: 13,
                              ),
                              Text(
                              'Departure Date',
                                // controller.listApplyLeave[index],
                                style: TextStyles
                                    .textStyles_12
                                    .apply(
                                  fontWeightDelta: 1,
                                    color: ColorStyle
                                        .secondryBlack),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                      Icons.calendar_month
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'November 20, 2022',
                                    // controller.listApplyLeave[index],
                                    style: TextStyles
                                        .textStyles_14
                                        .apply(
                                        color: ColorStyle
                                            .secondryBlack),
                                  ),



                                ],
                              ),

                              SizedBox(
                                height: 25,
                              ),
                              Text(
                                'Return Date',
                                // controller.listApplyLeave[index],
                                style: TextStyles
                                    .textStyles_12
                                    .apply(
                                    fontWeightDelta: 1,
                                    color: ColorStyle
                                        .secondryBlack),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                      Icons.calendar_month
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'December 11, 2022',
                                    // controller.listApplyLeave[index],
                                    style: TextStyles
                                        .textStyles_14
                                        .apply(
                                        color: ColorStyle
                                            .secondryBlack),
                                  ),



                                ],
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
                                      'Cancel',
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
                                      'Continue',
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









                            ],
                          ),
                          width: double.infinity,
                          height: 300,
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
