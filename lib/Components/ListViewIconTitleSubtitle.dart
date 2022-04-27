import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:flutter/material.dart';
import '../../Styles/ColorStyle.dart';
import '../../Styles/TextStyles.dart';
import 'package:advanced_capital_pay/Views/SignUp/ComponentsSignUp.dart';
import '../Styles/ImageStyle.dart';

class ListViewIconTitleSubtitle extends StatelessWidget {
  final String? title;
  final List? arrListIcons;
  final List? arrListTitles;
  final List? arrListSubtitles;

  const ListViewIconTitleSubtitle(
      {Key? key, this.title = 'Title',
        this.arrListIcons,
        this.arrListTitles,
        this.arrListSubtitles,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        // left: 16,
        // right: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            title!,
            textAlign: TextAlign.left,
            style: TextStyles.textStyles_14.apply(
              color: ColorStyle.primaryWhite,
              fontWeightDelta: 2,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EffectStyle.padding(16, 16, 10, 10),
            decoration: BoxDecoration(
              color: ColorStyle.primaryWhite,
              borderRadius: EffectStyle.radiusCustom(8)
            ),
            child: ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              itemCount: arrListIcons!.length,
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              separatorBuilder: (context, index) {
                return Container(
                  margin: EffectStyle.padding(0, 0, 10, 10),
                  height: 1,
                  color: ColorStyle.grey,
                );
              },
              itemBuilder: (context, index) {
                return Container(
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Image.asset(
                              arrListIcons![index],
                              height: 26,
                              width: 26,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: Text(
                                arrListTitles![index],
                                // controller.listApplyLeave[index],
                                style: TextStyles
                                    .textStyles_12
                                    .apply(
                                    color: ColorStyle
                                        .secondryBlack),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            arrListSubtitles![index],
                            // controller.listApplyLeave[index],
                            style: TextStyles
                                .textStyles_8
                                .apply(
                                color: ColorStyle
                                    .secondryBlack),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 20,
                            color: ColorStyle.secondryBlack,
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
