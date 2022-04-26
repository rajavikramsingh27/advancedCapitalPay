import 'package:flutter/material.dart';

import '../Components/AppBarStyle.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';

class TravelDestination extends StatelessWidget {
  const TravelDestination({Key? key}) : super(key: key);

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
                  Image.asset(
                    ImageStyle.Group2201,
                    // width: 30,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 20,right: 20,top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Where are you going?',
                                // controller.listApplyLeave[index],
                                style: TextStyles
                                    .textStyles_14
                                    .apply(
                                  fontWeightDelta: 2,
                                    color: ColorStyle
                                        .secondryBlack),
                              ),
                              SizedBox(
                                height: 11,
                              ),
                              Container(
                                alignment: Alignment.center,
                                // width: 148,
                                height: 50,
                                child:      TextFormField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Search for a country',

                                    // labelText: 'label',
                                    prefixIcon: Icon(
                                      Icons.search,
                                      color: ColorStyle.secondryBlack,
                                    ),
                                    // contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  // color: ColorStyle.blueLight,
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                      color: ColorStyle.blueSKY
                                  ),
                                ),
                              ),

                              SizedBox(
                                height: 11,
                              ),
                              Text(
                             'Tell us what your planned destinations are, '
                              'including any stopovers. We\'ll make '
                            'sure your account is working and secure.',
                                // controller.listApplyLeave[index],
                                style: TextStyles
                                    .textStyles_12
                                    .apply(

                                    color: ColorStyle
                                        .secondryBlack),
                              ),
                              SizedBox(
                                height: 11,
                              ),
                              Text(
                                'Selected Desintation',
                                // controller.listApplyLeave[index],
                                style: TextStyles
                                    .textStyles_14
                                    .apply(
                                    color: ColorStyle
                                        .secondryBlack),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Germany',
                                    // controller.listApplyLeave[index],
                                    style: TextStyles
                                        .textStyles_14
                                        .apply(
                                        color: ColorStyle
                                            .secondryBlack),
                                  ),
                                  Icon(
                                    Icons.cancel_outlined
                                  )


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
                          height: 375,
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
