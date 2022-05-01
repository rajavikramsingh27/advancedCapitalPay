
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';

import 'package:advanced_capital_pay/Styles/EffectStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:notification_center/notification_center.dart';


class FourOptionSeries extends StatefulWidget {
  final List<String>? arrTitles;
  final List<String>? arrIconsActivate;
  final List<String>? arrIconsInActivate;

  FourOptionSeries({Key? key,
    this.arrTitles = const ['First', 'Second', 'Third', 'Fourth',],
    this.arrIconsActivate = const [ImageStyle.browserBlue, ImageStyle.user_1_blue, ImageStyle.password_set_blue, ImageStyle.login_blue],
    this.arrIconsInActivate = const [ImageStyle.browserBlue, ImageStyle.user_1, ImageStyle.passwordSet, ImageStyle.login],
  }) : super(key: key);

  @override
  _FourOptionSeriesState createState() => _FourOptionSeriesState();
}

class _FourOptionSeriesState extends State<FourOptionSeries> {

  List<bool> arrSelectOption = [true, false, false, false];
  List<bool> arrSelectOptionIcons = [true, false, false, false];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    NotificationCenter().subscribe('updateAccount', (index) {
      arrSelectOption[index] = true;
      arrSelectOptionIcons[index] = true;

      print(index);
      print(arrSelectOption);
      print(arrSelectOptionIcons);

      Future.delayed(Duration(seconds: 1), () {
        setState(() {

        });
      });
    });

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: ColorStyle.hex("#082561"),
      padding: EffectStyle.padding(26, 26, 10, 10),
      child: Stack(
        children: [
          Expanded(
              child: Container(
                height: 50,
                alignment: Alignment.center,
                child: DottedLine(
                  direction: Axis.horizontal,
                  lineLength: double.infinity,
                  lineThickness: 2.0,
                  dashLength: 6.0,
                  dashColor: Colors.white,
                  // dashGradient: [Colors.red, Colors.blue],
                  dashRadius: 10.0,
                  dashGapLength: 5.0,
                  dashGapColor: Colors.transparent,
                  // dashGapGradient: [Colors.red, Colors.blue],
                  dashGapRadius: 0.0,
                ),
              )
            // DashedLine()
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  child: Column(

                    children: [
                      Image.asset(
                        (arrSelectOptionIcons[0])
                            ? widget.arrIconsActivate![0]
                            : widget.arrIconsInActivate![0],
                        height: 50,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        widget.arrTitles![0],
                        style: TextStyles.textStyles_10.apply(
                          color: ColorStyle.primaryWhite,
                          fontWeightDelta: 1,
                        ),
                      ),
                    ],
                  )),
              Container(
                  child: Column(
                    children: [
                      Image.asset(
                        (arrSelectOptionIcons[1])
                            ? widget.arrIconsActivate![1]
                            : widget.arrIconsInActivate![1],
                        height: 50,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        widget.arrTitles![1],
                        style: TextStyles.textStyles_10.apply(
                          color: ColorStyle.primaryWhite,
                          fontWeightDelta: 1,
                        ),
                      ),
                    ],
                  )),
              Container(
                  child: Column(
                    children: [
                      Image.asset(
                        (arrSelectOptionIcons[2])
                            ? widget.arrIconsActivate![2]
                            : widget.arrIconsInActivate![2],
                        height: 50,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        widget.arrTitles![2],
                        style: TextStyles.textStyles_10.apply(
                          color: ColorStyle.primaryWhite,
                          fontWeightDelta: 1,
                        ),
                      ),
                    ],
                  )),
              if (widget.arrTitles!.length > 3)
              Container(
                  child: Column(
                    children: [
                      Image.asset(
                        (arrSelectOptionIcons[3])
                            ? widget.arrIconsActivate![3]
                            : widget.arrIconsInActivate![3],
                        height: 50,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Text(
                          widget.arrTitles![3],
                          style: TextStyles.textStyles_10.apply(
                            color: ColorStyle.primaryWhite,
                            fontWeightDelta: 1,
                          ),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ],
      ),
    );
  }
}


