
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:flutter/material.dart';
import '../../Styles/ColorStyle.dart';
import '../../Styles/TextStyles.dart';
import 'package:advanced_capital_pay/Components/ComponentsSignUp.dart';

class ListViewGuidlinesTerms extends StatelessWidget {
  final String? title;
  final List? arrList;

  const ListViewGuidlinesTerms({Key? key, this.title, this.arrList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 16,),
        Text(
          title!,
          textAlign: TextAlign.left,
          style: TextStyles.textStyles_14.apply(
            color: ColorStyle.secondryBlack,
            fontWeightDelta: 2,
          ),
        ),
        SizedBox(height: 10,),
        ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          itemCount: arrList!.length,
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 10,
            );
          },
          itemBuilder: (context, index) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ComponentsSignUp.check(),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Text(
                      arrList![index],
                      style: TextStyles.textStyles_14.apply(
                          color: ColorStyle.secondryBlack,
                          fontWeightDelta: 0
                      ),
                    )
                )
              ],
            );
          },
        )
      ],
    );
  }
}
