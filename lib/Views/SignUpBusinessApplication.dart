import 'package:advanced_capital_pay/Components/DropdownButtonCustom.dart';
import 'package:flutter/material.dart';

import '../Components/BackgroundImage.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';

class SignUpBusinessApplication extends StatelessWidget {
  const SignUpBusinessApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(ImageStyle.bgGradient)),
        BackgroundImage(
          imageName: ImageStyle.bgTransactionListCripto,
        ),
        Scaffold(
            backgroundColor: ColorStyle.darkestBlue.withOpacity(0.8),
            body:Center(
              child:  SingleChildScrollView(
                padding: EdgeInsets.only(left: 10,right:10),
                child: Container(
                  padding: EdgeInsets.only(left: 22,right:22,top: 42),
                  // margin: EdgeInsets.only(left: 10,right:10,),
                  // width: double.infinity,
                  // height: 540,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Signature',
                        style: TextStylesSFCompactDisplay.textStyles_14
                            .apply(
                          color: ColorStyle.secondryBlack,
                          fontWeightDelta: 1,
                        ),
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        width: 308,
                        height: 104,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none
                            // border: OutlineInputBorder(),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          border: Border.all(
                            color: ColorStyle.grey,
                          ),
                          // image: DecorationImage(
                          //   // image: AssetImage("assets/images/bgTransactionListCripto.png"),
                          //   fit: BoxFit.cover,
                          // ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 122,
                        height: 42,
                        child:Text(
                          'Clear',
                          style: TextStylesSFCompactDisplay.textStyles_14
                              .apply(
                            color: ColorStyle.primaryWhite,
                            fontWeightDelta: 2,
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: ColorStyle.secondryBlack
                          // image: DecorationImage(
                          //   // image: AssetImage("assets/images/bgTransactionListCripto.png"),
                          //   fit: BoxFit.cover,
                          // ),
                        ),
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      Text(
                        'Signature Date',
                        style: TextStylesSFCompactDisplay.textStyles_14
                            .apply(
                          color: ColorStyle.secondryBlack,
                          fontWeightDelta: 1,
                        ),
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      DropdownButtonCustom(
                        padding: EdgeInsets.only(left: 16,right: 16),
                        colorBorder: Colors.grey,
                        iconWidget: Icon(
                            Icons.arrow_drop_down_sharp
                        ),
                        listValue: ['Date', '1', '2','3','4','5','6','7','8','9','10','11','12','13','14','15'],
                        selectedValue: "Date",
                        onChanged: (text) {},
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      DropdownButtonCustom(
                        padding: EdgeInsets.only(left: 16,right: 16),
                        colorBorder: Colors.grey,
                        iconWidget: Icon(
                            Icons.arrow_drop_down_sharp
                        ),
                        listValue: ['Month', 'January', 'Febuary','March','Aprail','May','June','July','August','September','October','November','Decdmber',],
                        selectedValue: "Month",
                        onChanged: (text) {},
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      DropdownButtonCustom(
                        padding: EdgeInsets.only(left: 16,right: 16),
                        colorBorder: Colors.grey,
                        iconWidget: Icon(
                            Icons.arrow_drop_down_sharp
                        ),
                        listValue: ['Year', '2008', '2009','2010','2011','2012','2013','2014','2015','2016','2017','2018','2019','2020','2021','2022',],
                        selectedValue: "Year",
                        onChanged: (text) {},
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: Container(
                          alignment: Alignment.center,
                          width: 122,
                          height: 42,
                          child:Text(
                            'Save',
                            style: TextStylesSFCompactDisplay.textStyles_14
                                .apply(
                              color: ColorStyle.hex('#E4E4E4'),
                              fontWeightDelta: 2,
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: ColorStyle.secondryBlack.withOpacity(0.3)
                            // image: DecorationImage(
                            //   // image: AssetImage("assets/images/bgTransactionListCripto.png"),
                            //   fit: BoxFit.cover,
                            // ),
                          ),
                        ),

                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ColorStyle.primaryWhite,
                    // image: DecorationImage(
                    //   // image: AssetImage("assets/images/bgTransactionListCripto.png"),
                    //   fit: BoxFit.cover,
                    // ),
                  ),
                ),
              ),
            )
        ),
      ],
    );
  }
}
