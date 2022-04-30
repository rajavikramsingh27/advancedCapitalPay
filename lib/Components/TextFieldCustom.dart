import 'package:flutter/material.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/TextStyles.dart';

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
  final double? radiusBorder;

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
    this.textStyle,
    this.radiusBorder = 8.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      style: textStyle?.apply(color: colorText),
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
            borderRadius: BorderRadius.circular(radiusBorder!),
            borderSide: BorderSide(color: colorBoder!, width: 1)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radiusBorder!),
            borderSide: BorderSide(color: colorBoder!, width: 1)),
        hintText: hintText,
        hintStyle: textStyle?.apply(color: colorHint),
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
  final Color? colorFill;
  final Color? colorBoder;
  final TextStyle? textStyle;
  final double? radiusBorder;
  final Widget? prefix;

  TextFieldCustomPrefix({
    Key? key,
    this.controller,
    this.title,
    this.hintText,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.colorFill,
    this.colorBoder = Colors.red,
    this.textStyle,
    this.radiusBorder = 8,
    this.prefix,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText!,
      style: textStyle,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.only(
            left: 16,
            right: 16,
            top: 6,
            bottom: 6,
          ),
          filled: true,
          fillColor: colorFill,
          // ColorStyle.hex("#236CA2").withOpacity(0.5),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radiusBorder!),
            borderSide: BorderSide(color: colorBoder!, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radiusBorder!),
            borderSide: BorderSide(color: colorBoder!, width: 1),
          ),
          hintText: hintText,
          hintStyle:
              TextStyles.textStyles_16.apply(color: ColorStyle.grey),
          prefixIcon: Container(
              height: 30,
              padding: EdgeInsets.only(
                top: 8,
                bottom: 8,
              ),
              child: prefix

              // Image.asset(
              //   ImageStyle.user,
              //   color: Colors.red,
              // ),
              )),
    );
  }
}

class TextFieldPasswordCustom extends StatefulWidget {
  final TextEditingController? controller;
  final String? hintText;
  final String? title;
  final TextInputType? keyboardType;
  final Color? colorFill;
  final Color? colorBoder;
  final TextStyle? hintTextStyle;
  final TextStyle? textStyle;
  final double? radiusBorder;
  final Widget? prefix;
  final Color? colorSuffix;
  final EdgeInsets? contentPadding;

  TextFieldPasswordCustom({
    Key? key,
    this.controller,
    this.title,
    this.hintText,
    this.keyboardType = TextInputType.text,
    this.colorFill,
    this.colorBoder = Colors.transparent,
    this.textStyle,
    this.hintTextStyle,
    this.radiusBorder = 8,
    this.prefix,
    this.colorSuffix = Colors.white,
    this.contentPadding = EdgeInsets.zero,
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
      style: widget.textStyle,
      decoration: InputDecoration(
          contentPadding: widget.contentPadding,

          // EdgeInsets.only(
          //   left: 16,
          //   right: 16,
          //   top: 6,
          //   bottom: 6,
          // ),

          filled: true,
          fillColor: widget.colorFill,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.radiusBorder!),
            borderSide: BorderSide(color: widget.colorBoder!, width: 1),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.radiusBorder!),
            borderSide: BorderSide(color: widget.colorBoder!, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.radiusBorder!),
            borderSide: BorderSide(color: widget.colorBoder!, width: 1),
          ),
          hintText: widget.hintText,
          hintStyle: widget.hintTextStyle,
          prefixIcon: widget.prefix,
          suffixIcon: InkWell(
            child: Icon(
              widget.obscureText
                  ? Icons.visibility_outlined
                  : Icons.visibility_off_outlined,
              size: 24,
              color: widget.colorSuffix,
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
          borderSide: BorderSide(width: 1, color: ColorStyle.primaryWhite),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(width: 1, color: ColorStyle.primaryWhite),
        ),
        counter: Offstage(),
        border: InputBorder.none,
      ),
      onChanged: onChanged,
    );
  }
}

class TFLabelCustom extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final String? title;
  final TextInputType? keyboardType;
  final Color? colorFill;
  final Color? colorBoder;
  final TextStyle? hintTextStyle;
  final TextStyle? textStyle;
  final double? radiusBorder;
  final Color? colorSuffix;
  final String? labelText;
  final EdgeInsets? contentPadding;

  TFLabelCustom({
    Key? key,
    this.controller,
    this.title,
    this.hintText,
    this.keyboardType = TextInputType.text,
    this.colorFill,
    this.colorBoder = Colors.transparent,
    this.textStyle,
    this.hintTextStyle,
    this.radiusBorder = 8,
    this.colorSuffix = Colors.white,
    this.labelText = '',
    this.contentPadding = EdgeInsets.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      style: textStyle,
      decoration: InputDecoration(
        contentPadding: contentPadding,
        filled: true,
        fillColor: colorFill,
        labelText: labelText!,
        labelStyle: TextStyles.textStyles_14.apply(
          color: Colors.grey,
          fontWeightDelta: 1,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radiusBorder!),
          borderSide: BorderSide(color: colorBoder!, width: 1),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radiusBorder!),
          borderSide: BorderSide(color: colorBoder!, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radiusBorder!),
          borderSide: BorderSide(color: colorBoder!, width: 1),
        ),
        hintText: hintText,
        hintStyle: hintTextStyle,
      ),
    );
  }
}

class TFPasswordLabelCustom extends StatefulWidget {
  final TextEditingController? controller;
  final String? hintText;
  final String? title;
  final TextInputType? keyboardType;
  final Color? colorFill;
  final Color? colorBoder;
  final TextStyle? hintTextStyle;
  final TextStyle? textStyle;
  final double? radiusBorder;
  final Color? colorSuffix;
  final String? labelText;
  final EdgeInsets? contentPadding;

  TFPasswordLabelCustom({
    Key? key,
    this.controller,
    this.title,
    this.hintText,
    this.keyboardType = TextInputType.text,
    this.colorFill,
    this.colorBoder = Colors.transparent,
    this.textStyle,
    this.hintTextStyle,
    this.radiusBorder = 8,
    this.colorSuffix = Colors.white,
    this.labelText = '',
    this.contentPadding = EdgeInsets.zero,
  }) : super(key: key);

  bool obscureText = true;

  @override
  _TFPasswordLabelCustomState createState() => _TFPasswordLabelCustomState();
}

class _TFPasswordLabelCustomState extends State<TFPasswordLabelCustom> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      obscureText: widget.obscureText,
      style: widget.textStyle,
      decoration: InputDecoration(
          contentPadding: widget.contentPadding,
          filled: true,
          fillColor: widget.colorFill,
          labelText: widget.labelText!,
          labelStyle: TextStyles.textStyles_14.apply(
            color: Colors.grey,
            fontWeightDelta: 1,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.radiusBorder!),
            borderSide: BorderSide(color: widget.colorBoder!, width: 1),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.radiusBorder!),
            borderSide: BorderSide(color: widget.colorBoder!, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.radiusBorder!),
            borderSide: BorderSide(color: widget.colorBoder!, width: 1),
          ),
          hintText: widget.hintText,
          hintStyle: widget.hintTextStyle,
          suffixIcon: InkWell(
            child: Icon(
              widget.obscureText
                  ? Icons.visibility_outlined
                  : Icons.visibility_off_outlined,
              size: 24,
              color: widget.colorSuffix,
            ),
            onTap: () {
              widget.obscureText = !widget.obscureText;

              setState(() {});
            },
          )),
    );
  }
}

class TextFieldRadius extends StatelessWidget {
  const TextFieldRadius({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: 'KindaCode.com',
          // contentPadding: const EdgeInsets.all(15),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30))),
      onChanged: (value) {
        // do something
      },
    );
  }
}
