import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Styles/ColorStyle.dart';
import '../../Styles/EffectStyle.dart';
import '../../Styles/ImageStyle.dart';
import '../../Styles/TextStyles.dart';

class BalanceSheetCellComponenets extends StatelessWidget {
  final String? titleOne;
  final String? titleTwo;
  final String? valueOne;
  final String? valueTwo;

  const BalanceSheetCellComponenets({
    Key? key,
    this.titleOne = 'Title One',
    this.titleTwo = 'Title Two',
    this.valueOne = 'Value One',
    this.valueTwo = 'Value Two',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EffectStyle.padding(16, 16, 16, 16),
      decoration: BoxDecoration(
          color: ColorStyle.primaryWhite,
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                ImageStyle.bgDailyAccountBalance,
              ))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                ImageStyle.cardDailyAccountBalance,
                width: 76,
                height: 46,
                fit: BoxFit.fill,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titleOne!,
                    style: TextStylesPoppins.textStyles_14.apply(
                        color: ColorStyle.secondryBlack, fontWeightDelta: 2),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    valueOne!,
                    style: TextStylesPoppins.textStyles_12.apply(
                        color: ColorStyle.secondryBlack, fontWeightDelta: 1),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                titleTwo!,
                style: TextStylesPoppins.textStyles_14
                    .apply(color: ColorStyle.secondryBlack, fontWeightDelta: 1),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                valueTwo!,
                style: TextStylesPoppins.textStyles_14
                    .apply(color: ColorStyle.secondryBlack, fontWeightDelta: 4),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
