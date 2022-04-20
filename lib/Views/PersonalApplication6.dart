import 'package:advanced_capital_pay/Components/ButtonCustom.dart';
import 'package:flutter/material.dart';

import '../Components/AppBarStyle.dart';
import '../Components/DropdownButtonCustom.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/EffectStyle.dart';
import '../Styles/TextStyles.dart';

class PersonalApplication6 extends StatelessWidget {
  const PersonalApplication6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarStyleAuth(
        title: 'Edit Signature Mr. Test Test',
      ),
      body: SingleChildScrollView(
        padding: EffectStyle.padding(20, 20, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              'Company director or Shareholder',
              style: TextStyles.textStyles_14.apply(
                color: ColorStyle.secondryBlack,
                fontWeightDelta: 1,
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Row(
              children: [
                Container(


                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                   border: Border.all(
                     width: 1,
                     color: Colors.grey
                   ),
                    borderRadius: BorderRadius.circular(20),

                  ),

                ),
                SizedBox(width: 10,),
                Text(
                  'Company director',
                  style: TextStyles.textStyles_12.apply(
                    color: ColorStyle.secondryBlack,
                    fontWeightDelta: 1,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Container(


                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 1,
                        color: Colors.grey
                    ),
                    borderRadius: BorderRadius.circular(20),

                  ),

                ),
                SizedBox(width: 10,),
                Text(
                  'Shareholder (10% or more)',
                  style: TextStyles.textStyles_12.apply(
                    color: ColorStyle.secondryBlack,
                    fontWeightDelta: 1,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Container(

                  child: Icon(
                    Icons.check,
                    size: 18,
                    color: ColorStyle.primaryWhite,
                  ),
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    color: ColorStyle.blueLight,
                    borderRadius: BorderRadius.circular(20),

                  ),

                ),
                SizedBox(width: 10,),
                Text(
                  'Authorized Signature',
                  style: TextStyles.textStyles_12.apply(
                    color: ColorStyle.secondryBlack,
                    fontWeightDelta: 1,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),

            Text(
              'Your Name',
              style: TextStyles.textStyles_14.apply(
                color: ColorStyle.secondryBlack,
                fontWeightDelta: 1,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            DropdownButtonCustom(
              colorBorder: Colors.grey,
              onChanged: (text) {},
              listValue: ['Mr.', 'Miss', 'Mrs'],
              selectedValue: "Mr.",
            ),
            SizedBox(
              height: 12,
            ),
            TextField(
              // obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Test',
                labelStyle: TextStyles.textStyles_14.apply(
                  color: Colors.grey,
                  fontWeightDelta: 1,
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            TextField(
              // obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Test',
                labelStyle: TextStyles.textStyles_14.apply(
                  color: Colors.grey,
                  fontWeightDelta: 1,
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            TextField(
              // obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Test',
                labelStyle: TextStyles.textStyles_14.apply(
                  color: Colors.grey,
                  fontWeightDelta: 1,
                ),
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Text(
              'Country of Birth',
              style: TextStyles.textStyles_14.apply(
                color: ColorStyle.secondryBlack,
                fontWeightDelta: 1,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            DropdownButtonCustom(
              colorBorder: Colors.grey,
              onChanged: (text) {},
              listValue: [
                'Date',
                '01', '02', '03' ,'04', '05', '06' ,'07', '08', '09' ,'10', '11', '12', '13', '14', '15',
                '16', '17', '18', '19', '20', '21', '22', '23', '24' ,'25', '26', '27', '28', '29', '30' ,'31',



              ],
              selectedValue: "Date",
            ),
            SizedBox(
              height: 12,
            ),
            DropdownButtonCustom(
              colorBorder: Colors.grey,
              onChanged: (text) {},
              listValue: [
                'Month',
                'January', 'Fabruary', 'March' ,'April', 'May', 'June' ,'July', 'August', 'September' ,'October', 'November', 'December',




              ],
              selectedValue: "Month",
            ),
            SizedBox(
              height: 12,
            ),
            DropdownButtonCustom(
              colorBorder: Colors.grey,
              onChanged: (text) {},
              listValue: [
                'Year',
                '1991', '1992', '1993' ,'1994', '1995', '1996' ,'1997', '1998', '1999' ,'2000', '2001', '2002', '2003', '2004', '2005',
                '2006', '2007', '2008', '2009', '2010', '2011', '2012', '2013', '2014' ,'2015', '2016', '2017', '2018', '2019', '2020' ,'2021',
                '2022', '2023'



              ],
              selectedValue: "Year",
            ),
            SizedBox(
              height: 28,
            ),
            Text(
              'Nationality',
              style: TextStyles.textStyles_14.apply(
                color: ColorStyle.secondryBlack,
                fontWeightDelta: 1,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            DropdownButtonCustom(
              colorBorder: Colors.grey,
              onChanged: (text) {},
              listValue: [
                     'Nationlity',
                'India',
                'Amarica',



              ],
              selectedValue: "Nationlity",
            ),
            SizedBox(
              height: 28,
            ),
            Text(
              'Email Address',
              style: TextStyles.textStyles_14.apply(
                color: ColorStyle.secondryBlack,
                fontWeightDelta: 1,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            TextField(
              // obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText:  '1223@test.com',
                labelStyle: TextStyles.textStyles_14.apply(
                  color: Colors.grey,
                  fontWeightDelta: 1,
                ),
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Text(
              'Company Role',
              style: TextStyles.textStyles_14.apply(
                color: ColorStyle.secondryBlack,
                fontWeightDelta: 1,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            TextField(
              // obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText:  'Test',
                labelStyle: TextStyles.textStyles_14.apply(
                  color: Colors.grey,
                  fontWeightDelta: 1,
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
           Container(
             height: 150,
             child: TextField(
               // obscureText: true,
               decoration: InputDecoration(
                 border: InputBorder.none,
                 focusedBorder: InputBorder.none,
                 enabledBorder: InputBorder.none,
                 errorBorder: InputBorder.none,
                 disabledBorder: InputBorder.none,

                 // hintText:  'Test',
                 labelStyle: TextStyles.textStyles_14.apply(
                   color: Colors.grey,
                   fontWeightDelta: 1,
                 ),
               ),
             ),
             decoration: BoxDecoration(
               border: Border.all(
                 width: 1,
                 color: Colors.grey

               )
             ),
           ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButtonCustom(
                    text: 'Clear',
                    colorBG: ColorStyle.secondryBlack,
                    colorText: ColorStyle.primaryWhite,
                    onTap: () {

                    },
                  ),
                ),

                Container(
                 width: 200,


                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Container(
                  width: 170,


                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(child: ElevatedButtonCustom(
                  text: 'Save',
                  colorBG: ColorStyle.blueSKY,
                  colorText: ColorStyle.primaryWhite,
                  onTap: () {
                    // Get.to(PersonalApplication2());
                  },
                ),),
              ],
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      )
    );
  }
}
