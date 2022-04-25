import '../Styles/SizeStyle.dart';
import 'package:flutter/material.dart';
import '../Utils/Constants.dart';
import '../Styles/TextStyles.dart';
import '../Styles/ImageStyle.dart';
import '../Styles/ColorStyle.dart';

class ElevatedButtonCustom extends StatelessWidget {
  final Function()? onTap;
  final String? text;
  final Color? colorBG;
  // final Color? colorText;
  final double? width;
  final double? radiusBorder;
  final Color? colorBorder;
  final TextStyle? textStyle;

  const ElevatedButtonCustom({
    Key? key,
    this.onTap,
    this.text = "Elevated Button",
    this.colorBG = Colors.red,
    // this.colorText = Colors.white,
    this.width = 200,
    this.radiusBorder = 8,
    this.colorBorder = Colors.transparent,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: colorBG,
        fixedSize: Size(width!, 50),
        elevation: 0,
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radiusBorder!),
            side: BorderSide(color: colorBorder!)),
      ),
      child: Text(
        text!,
        textAlign: TextAlign.center,
        style: textStyle!,
      ),
      onPressed: onTap,
    );
  }
}

class GradientButton extends StatelessWidget {
  final double? width;
  final double? height;
  final String? imageName;
  final String? text;
  final Function()? onTap;

  const GradientButton({
    Key? key,
    this.width = 200,
    this.height = 50,
    this.imageName = ImageStyle.gradientSignIn,
    this.text = "GradientButton",
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
          width: width,
          height: height,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(imageName!), fit: BoxFit.fill)),
          child: Text(
            text!,
            style: TextStyles.textStyles_16.apply(
              color: ColorStyle.primaryWhite,
            ),
          ),
        ),
        onTap: onTap);
  }
}

class GradientButtonWithArrow extends StatelessWidget {
  final double? width;
  final double? height;
  final String? imageName;
  final String? text;
  final Function()? onTap;
  final IconData? icon;

  const GradientButtonWithArrow(
      {Key? key,
      this.width = 200,
      this.height = 50,
      this.imageName = ImageStyle.gradientSignIn,
      this.text = "GradientButtonSkyColor",
      this.onTap,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
          width: width,
          height: height,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(imageName!), fit: BoxFit.fill)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 16,
              ),
              Text(
                text!,
                style: TextStyles.textStyles_16.apply(
                  color: ColorStyle.primaryWhite,
                ),
              ),
              Icon(
                icon,
                size: 16,
                color: ColorStyle.primaryWhite,
              ),
            ],
          ),
        ),
        onTap: onTap);
  }
}
