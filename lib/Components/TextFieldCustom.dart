import 'package:flutter/material.dart';
import '../Styles/ColorStyle.dart';
import '../Utils/Constants.dart';
import '../Styles/TextStyles.dart';
import '../Styles/ImageStyle.dart';

class TextFieldCustom extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final String? title;
  final TextInputType? keyboardType;
  final Color? colorFill;
  final Color? colorBoder;
  final Color? colorText;
  final Color? colorHint;
  final TextStyle? textStyle;

  TextFieldCustom({
    Key? key,
    this.controller,
    this.title,
    this.hintText,
    this.keyboardType = TextInputType.text,
    this.colorFill = Colors.white,
    this.colorBoder = Colors.black,
    this.colorHint = Colors.grey,
    this.colorText = Colors.black,
    this.textStyle
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      style: textStyle?.apply(
          color: colorText
      ),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.only(
            left: 16,
            right: 16,
            top: 6,
            bottom: 6,
          ),
          filled: true,
          fillColor: colorFill,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(
              color: colorBoder!,
              width: 1
            )
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(
                  color: colorBoder!,
                  width: 1
              )
          ),
          hintText: hintText,
          hintStyle: textStyle?.apply(
            color: colorHint
          ),
      ),
    );
  }
}

class TextFieldCustomPrefix extends StatelessWidget {
  final TextEditingController? controller;
  final bool? obscureText;
  final String? hintText;
  final String? title;
  final TextInputType? keyboardType;

  TextFieldCustomPrefix({
    Key? key,
    this.controller,
    this.title,
    this.hintText,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText!,
      style: TextStyles.textStyles_16.apply(color: ColorStyle.secondryBlack),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.only(
            left: 16,
            right: 16,
            top: 6,
            bottom: 6,
          ),
          filled: true,
          fillColor: ColorStyle.hex("#236CA2").withOpacity(0.5),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          hintText: hintText,
          hintStyle:
              TextStyles.textStyles_16.apply(color: ColorStyle.grayColor),
          prefixIcon: Container(
            height: 30,
            padding: EdgeInsets.only(
              top: 8,
              bottom: 8,
            ),
            child: Image.asset(
              ImageStyle.user,
            ),
          )),
    );
  }
}

class TextFieldPasswordCustom extends StatefulWidget {
  final TextEditingController? controller;
  final String? hintText;
  final TextInputType? keyboardType;

  TextFieldPasswordCustom({
    Key? key,
    this.keyboardType = TextInputType.text,
    this.controller,
    this.hintText,
  }) : super(key: key);

  bool obscureText = true;

  @override
  _TextFieldPasswordCustomState createState() =>
      _TextFieldPasswordCustomState();
}

class _TextFieldPasswordCustomState extends State<TextFieldPasswordCustom> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      obscureText: widget.obscureText,
      style: TextStyles.textStyles_16.apply(color: ColorStyle.secondryBlack),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.only(
            left: 16,
            right: 16,
            top: 6,
            bottom: 6,
          ),
          filled: true,
          fillColor: ColorStyle.hex("#236CA2").withOpacity(0.5),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          hintText: widget.hintText,
          hintStyle:
              TextStyles.textStyles_16.apply(color: ColorStyle.grayColor),
          prefixIcon: Container(
            height: 30,
            padding: EdgeInsets.only(
              top: 8,
              bottom: 8,
            ),
            child: Image.asset(
              ImageStyle.lock,
            ),
          ),
          suffixIcon: InkWell(
            child: Icon(
              widget.obscureText
                  ? Icons.visibility_outlined
                  : Icons.visibility_off_outlined,
              size: 24,
              color: ColorStyle.primaryWhite,
            ),
            onTap: () {
              widget.obscureText = !widget.obscureText;

              setState(() {});
            },
          )),
    );
  }
}

class TextFieldOTP extends StatelessWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final Function(String)? onChanged;

  const TextFieldOTP({
    Key? key,
    this.controller,
    this.focusNode,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      // autofocus: true,
      controller: controller,
      focusNode: focusNode,
      textAlign: TextAlign.center,
      maxLength: 1,
      keyboardType: TextInputType.number,
      style: TextStyles.textStyles_32.apply(color: ColorStyle.primaryWhite),
      cursorColor: ColorStyle.primaryWhite,
      // cursorHeight: 40,
      decoration: InputDecoration(
        filled: true,
        fillColor: ColorStyle.hex("#263E6F"),
        contentPadding: EdgeInsets.all(0),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(width: 1,color: ColorStyle.primaryWhite),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(width: 1,color: ColorStyle.primaryWhite),
        ),
        counter: Offstage(),
        border: InputBorder.none,
      ),
      onChanged: onChanged,
    );
  }
}
