import 'dart:io';
import 'package:flutter/material.dart';

import '../../Components/PickerCustom.dart';
import '../../Styles/ColorStyle.dart';
import '../../Styles/EffectStyle.dart';
import '../../Styles/TextStyles.dart';
import '../../Views/Auth/EffectStyleSignUp.dart';

class SelectFiles extends StatefulWidget {
  Color? colorBG;
  Color? colorBorder;
  SelectFiles({Key? key, required this.colorBG, required this.colorBorder}) : super(key: key);

  @override
  _SelectFilesState createState() => _SelectFilesState();
}

class _SelectFilesState extends State<SelectFiles> {

  File? fileSelected;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 150,
        alignment: Alignment.topCenter,
        padding: EffectStyle.padding(20, 20, 12, 12),
        decoration: BoxDecoration(
            color: widget.colorBG,
            borderRadius: EffectStyle.radiusCustom(2),
            border: Border.all(width: 1, color: widget.colorBorder!)),
        child: Column(
          children: [
            Container(
              height: 50,
              decoration: EffectStyleSignUp.decoration(ColorStyle.primaryWhite, 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Icon(
                      Icons.add,
                      size: 18,
                      color: ColorStyle.darkestBlueSignUp,
                    ),
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        width: 1.8,
                        color: ColorStyle.darkestBlueSignUp,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Select Files',
                    style: TextStylesPoppins.textStyles_16.apply(
                      color: ColorStyle.darkestBlueSignUp,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),

            if (fileSelected!=null)
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: EffectStyle.padding(4, 0, 4, 4),
                  decoration: BoxDecoration(
                color: ColorStyle.hex('#FFFCD1'),
                borderRadius: EffectStyle.radiusCustom(2),
              ),
              child: Row(
                children: [
                  Image.file(fileSelected!, height: double.infinity, width: 30,),
                  SizedBox(width: 6,),
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '5143BE49-1821-4BDD-B180-5CE',
                        maxLines: 1,
                        style: TextStylesPoppins.textStyles_16.apply(
                            color: ColorStyle.secondryBlack,
                            fontWeightDelta: 1
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            '395.8kb',
                            style: TextStylesPoppins.textStyles_14.apply(
                                color: ColorStyle.secondryBlack,
                                fontWeightDelta: 1
                            ),
                          ),
                          SizedBox(width: 6,),
                          InkWell(
                            child: Container(
                              padding: EffectStyle.padding(16, 16, 8, 8),
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: EffectStyle.radiusCustom(6)
                              ),
                              child: Text(
                                'Delete',
                                style: TextStylesPoppins.textStyles_12.apply(
                                  color: ColorStyle.primaryWhite,
                                ),
                              ),
                            ),
                            onTap: () {
                              fileSelected = null;
                              setState(() {

                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),)
                ],
              ),
            ),),
          ],
        ),
      ),
      onTap: () {
        PickerCustom.imagePicker((file) {
          fileSelected = file;

          setState(() {

          });
        });
      },
    );
  }
}
