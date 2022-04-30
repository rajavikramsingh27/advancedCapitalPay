import 'package:flutter/material.dart';

import '../Styles/ColorStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';


class PayingFromAccount extends StatelessWidget {
  const PayingFromAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Image.asset(
            ImageStyle.Card,
            // width: MediaQuery.of(context).size.width,
            // height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                child:  Text(
                  'Harrison Smith Plus+ A/C   **0624USD',
                  // controller.listApplyLeave[index],
                  style: TextStyles
                      .textStyles_14
                      .apply(
                      fontWeightDelta: 2,
                      color: ColorStyle
                          .secondryBlack),
                ),
                height: 30,
                width: double.infinity,
                color: ColorStyle.primaryWhite,
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                child:  Text(
                  '\$ 207,582.58',
                  // controller.listApplyLeave[index],
                  style: TextStyles
                      .textStyles_16
                      .apply(
                      fontWeightDelta: 2,
                      color: ColorStyle
                          .secondryBlack),
                ),
                height: 30,
                width: double.infinity,
                color: ColorStyle.primaryWhite,
              ),
              SizedBox(
                height: 4,
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                child:  Text(
                  '00117380624',
                  // controller.listApplyLeave[index],
                  style: TextStyles
                      .textStyles_10
                      .apply(
                      fontWeightDelta: 1,
                      color: ColorStyle
                          .secondryBlack),
                ),
                height: 20,
                width: 100,
                color: ColorStyle.primaryWhite,
              ),
            ],
          ),
        ],
      ),
    );

    //   Container(
    //   height: 220,
    //   child:   ListView.builder(
    //       // padding: EdgeInsets.only(top: 20),
    //       shrinkWrap: true,
    //       itemCount: 2,
    //       scrollDirection: Axis.horizontal,
    //       // physics: NeverScrollableScrollPhysics(),
    //       itemBuilder:
    //           (BuildContext context, int index) {
    //         return   Stack(
    //           children: [
    //             Image.asset(
    //               ImageStyle.Card,
    //               // width: MediaQuery.of(context).size.width,
    //               // height: MediaQuery.of(context).size.height,
    //               fit: BoxFit.cover,
    //             ),
    //             Column(
    //
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: [
    //                 SizedBox(
    //                   height: 22,
    //                 ),
    //                 Container(
    //                   padding: EdgeInsets.only(left: 10),
    //                   alignment: Alignment.centerLeft,
    //                   child:  Text(
    //                     'Harrison Smith Plus+ A/C   **0624USD',
    //                     // controller.listApplyLeave[index],
    //                     style: TextStyles
    //                         .textStyles_14
    //                         .apply(
    //                         fontWeightDelta: 2,
    //                         color: ColorStyle
    //                             .secondryBlack),
    //                   ),
    //                   height: 30,
    //                   width: double.infinity,
    //                   color: ColorStyle.primaryWhite,
    //                 ),
    //                 SizedBox(
    //                   height: 22,
    //                 ),
    //                 Container(
    //                   padding: EdgeInsets.only(left: 10),
    //                   alignment: Alignment.centerLeft,
    //                   child:  Text(
    //                     '\$ 207,582.58',
    //                     // controller.listApplyLeave[index],
    //                     style: TextStyles
    //                         .textStyles_16
    //                         .apply(
    //                         fontWeightDelta: 2,
    //                         color: ColorStyle
    //                             .secondryBlack),
    //                   ),
    //                   height: 30,
    //                   width: double.infinity,
    //                   color: ColorStyle.primaryWhite,
    //                 ),
    //                 Container(
    //                   padding: EdgeInsets.only(left: 10),
    //                   alignment: Alignment.centerLeft,
    //                   child:  Text(
    //                     '00117380624',
    //                     // controller.listApplyLeave[index],
    //                     style: TextStyles
    //                         .textStyles_10
    //                         .apply(
    //                         fontWeightDelta: 1,
    //                         color: ColorStyle
    //                             .secondryBlack),
    //                   ),
    //                   height: 20,
    //                   width: 100,
    //                   color: ColorStyle.primaryWhite,
    //                 ),
    //               ],
    //             ),
    //           ],
    //         );
    //       }),
    // );




  }
}
