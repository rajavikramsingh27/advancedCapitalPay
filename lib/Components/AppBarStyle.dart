import 'package:advanced_capital_pay/Styles/ColorStyle.dart';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:auto_size_text/auto_size_text.dart';

class AppBarStyle extends StatelessWidget implements PreferredSizeWidget {
  final Function()? onTap;
  final Widget? leadingButton;
  final Widget? trailingButton;

  AppBarStyle({
    Key? key,
    this.onTap,
    this.leadingButton,
    this.trailingButton,
  }) : super(key: key);

  double heightAppBar = 70;

  @override
  Size get preferredSize => new Size.fromHeight(heightAppBar);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: heightAppBar,
      backgroundColor: Colors.transparent,
      // leadingWidth: 0,
      leading: (leadingButton == null) ? Container() : leadingButton,
      centerTitle: true,
      title: Image.asset(
        ImageStyle.logo_white,
        height: 52,
      ),
      actions: [
        if (trailingButton != null) Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            trailingButton!
          ],
        ),
        SizedBox(
          width: 16,
        )
      ],
    );
  }
}

class AppBarStyleCryptoDashboard extends StatelessWidget implements PreferredSizeWidget {
  final Function()? onTap;
  final Widget? leadingButton;
  final Widget? trailingButton;

  AppBarStyleCryptoDashboard({
    Key? key,
    this.onTap,
    this.leadingButton,
    this.trailingButton,
  }) : super(key: key);

  double heightAppBar = 70;

  @override
  Size get preferredSize => new Size.fromHeight(heightAppBar);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: heightAppBar,
      backgroundColor: Colors.transparent,
      // leadingWidth: 0,
      leadingWidth: 90,
      leading: (leadingButton == null) ? Container() : leadingButton,
      centerTitle: true,
      title: Image.asset(
        ImageStyle.logo_white,
        height: 44,
      ),
      actions: [
        if (trailingButton != null) trailingButton!,
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}

class AppBarStyleStatusBar extends StatelessWidget
    implements PreferredSizeWidget {
  double heightAppBar = 0;

  @override
  Size get preferredSize => new Size.fromHeight(heightAppBar);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, heightAppBar),
        child: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          elevation: 0,
          backgroundColor: Colors.transparent,
        ));
  }
}

class AppBarStyleTitle extends StatelessWidget implements PreferredSizeWidget {
  final Function()? onTap;
  final Widget? leadingButton;
  final TextStyle styleTitle;
  final List<Widget>? trailingButton;
  final String? title;
  final Color? colorTitle;
  final Color? backgroundColor;
  final int? maxLinesTitle;

  AppBarStyleTitle({
    Key? key,
    this.onTap,
    this.leadingButton,
    this.styleTitle = const TextStyle(),
    this.trailingButton = const [],
    this.title,
    this.colorTitle = Colors.white,
    this.backgroundColor = Colors.transparent,
    this.maxLinesTitle = 1,
  }) : super(key: key);

  double heightAppBar = 50;

  @override
  Size get preferredSize => new Size.fromHeight(heightAppBar);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: heightAppBar,
      backgroundColor: backgroundColor,
      leadingWidth: (leadingButton == null) ? 0 : 46,
      leading: (leadingButton == null) ? Container() : leadingButton,
      centerTitle: true,
      title: AutoSizeText(
        title!,
        textAlign: TextAlign.center,
        maxLines: maxLinesTitle,
        style: styleTitle.apply(
          color: colorTitle
        ),
        // TextStylesPoppins.textStyles_16.apply(color: colorTitle, fontWeightDelta: 1, fontSizeDelta: 2),
      ),
      actions: trailingButton
      // [
      //   if (trailingButton != null) trailingButton!,
      //   SizedBox(
      //     width: 10,
      //   )
      // ],
    );
  }
}

class AppBarStyleLeadingTitleTrailing extends StatelessWidget
    implements PreferredSizeWidget {
  final Function()? onTapLeading;
  final String? leadingImage;
  final List<Widget>? trailingAction;
  final double? leadingWidth;
  final String? nameUser;
  final TextStyle? nameStyle;
  final String? descriptionUser;
  final TextStyle? descriptionStyle;
  final String? timeLastLogin;
  final Color? backgroundColor;

  AppBarStyleLeadingTitleTrailing({
    Key? key,
    this.onTapLeading,
    this.leadingImage = '',
    this.trailingAction,
    this.leadingWidth = 70,
    this.nameUser = '',
    this.descriptionUser = '',
    this.timeLastLogin = '',
    this.nameStyle,
    this.descriptionStyle,
    this.backgroundColor = Colors.transparent,
  }) : super(key: key);

  double heightAppBar = 80;

  @override
  Size get preferredSize => new Size.fromHeight(heightAppBar);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: heightAppBar,
      backgroundColor: backgroundColor,
      leadingWidth: leadingWidth,
      leading: InkWell(
        child: Container(
          padding: EdgeInsets.only(left: 10),
          child: Image.asset(
            leadingImage!,
            height: 30,
            width: 30,
          ),
        ),
        onTap: onTapLeading,
      ),
      // centerTitle: true,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (nameUser!.isNotEmpty)
          AutoSizeText(
            nameUser!,
            style: nameStyle,
            maxLines: 1,
            // style: TextStyles.textStyles_14.apply(
            //   color: ColorStyle.primaryWhite,
            // ),
          ),
          if (descriptionUser!.isNotEmpty)
          AutoSizeText(
            descriptionUser!,
            style: descriptionStyle,
            maxLines: 1,
            // style: TextStyles.textStyles_14.apply(
            //   color: ColorStyle.primaryWhite,
            // ),
          ),
          if (timeLastLogin!.isNotEmpty)
          AutoSizeText(
            timeLastLogin!,
            maxLines: 1,
            style: TextStylesPoppins.textStyles_7.apply(
              color: ColorStyle.primaryWhite,
              // fontWeightDelta: 1,
            ),
          ),
        ],
      ),

      actions: trailingAction,
    );
  }
}

class AppBarStyleCustom1 extends StatelessWidget
    implements PreferredSizeWidget {
  final Function()? onTap;
  final Widget? leadingButton;
  final Widget? trailingButton;
  final Widget? userLogOutButton;

  AppBarStyleCustom1({
    Key? key,
    this.onTap,
    this.leadingButton,
    this.trailingButton,
    this.userLogOutButton,
  }) : super(key: key);

  double heightAppBar = 70;

  @override
  Size get preferredSize => new Size.fromHeight(heightAppBar);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: heightAppBar,
      backgroundColor: Colors.transparent,
      // leadingWidth: 0,

      leading: (leadingButton == null)
          ? Container()
          : Image.asset(
              ImageStyle.ellipse2,
              height: 52,
            ),
      // centerTitle: true,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'HARRISON SMITH',
            style: TextStylesPoppins.textStyles_16
                .apply(color: ColorStyle.primaryWhite, fontWeightDelta: 1),
          ),
          Text(
            'Your Personal Settings',
            style: TextStylesPoppins.textStyles_10.apply(
              color: ColorStyle.primaryWhite,
            ),
          ),
        ],
      ),
      actions: [
        if (trailingButton != null) trailingButton!,
        if (userLogOutButton != null) userLogOutButton!,
      ],
    );
  }
}

class AppBarStyleCustomBeni extends StatelessWidget implements PreferredSizeWidget {
  final Function()? onTap;
  final Widget? leadingButton;
  final Widget? trailingButton;
  final Widget? settingButton;

  AppBarStyleCustomBeni({
    Key? key,
    this.onTap,
    this.leadingButton,
    this.trailingButton,
    this.settingButton,
  }) : super(key: key);

  double heightAppBar = 70;

  @override
  Size get preferredSize => new Size.fromHeight(heightAppBar);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: heightAppBar,
      backgroundColor: Colors.transparent,
      // leadingWidth: 0,

      leading: (leadingButton == null) ? Container() : leadingButton,
      centerTitle: true,
      title: Text(
        'Beneficiary',
        style: TextStylesPoppins.textStyles_20.apply(
          color: ColorStyle.primaryWhite,
        ),
      ),
      actions: [
        if (trailingButton != null) trailingButton!,
      ],
    );
  }
}

class AppBarStyleCustomBenifi extends StatelessWidget
    implements PreferredSizeWidget {
  final Function()? onTap;
  final Widget? leadingButton;
  final Widget? trailingButton;
  final Widget? settingButton;
  final Widget? title;

  AppBarStyleCustomBenifi({
    Key? key,
    this.onTap,
    this.leadingButton,
    this.trailingButton,
    this.settingButton,
    this.title,
  }) : super(key: key);

  double heightAppBar = 70;

  @override
  Size get preferredSize => new Size.fromHeight(heightAppBar);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: heightAppBar,
      backgroundColor: Colors.transparent,
      // leadingWidth: 0,

      leading: (leadingButton == null) ? Container() : leadingButton,
      centerTitle: true,
      title: title,
      actions: [
        if (trailingButton != null) trailingButton!,
      ],
    );
  }
}

// class AppBarStyle1 extends StatelessWidget implements PreferredSizeWidget {
//   final Function()? onTap;
//
//   const AppBarStyle1({Key? key, this.onTap}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return PreferredSize(
//       preferredSize: Size.fromHeight(45.0),
//       child: AppBar(
//         elevation: 0,
//         centerTitle: false,
//         title: Column(
//           children: [
//             Text(
//               'Your Cards',
//               style: TextStylesPoppins.textStyles_20.apply(
//                 color: ColorStyle.primaryWhite,
//                 fontWeightDelta: 1,
//               ),
//             ),
//             Text(
//               '1 physical card, 1 virtual card',
//               style: TextStylesPoppins.textStyles_10.apply(
//                 color: ColorStyle.primaryWhite,
//                 fontWeightDelta: 1,
//               ),
//               // style: TextStyles.textSize_12.apply(
//               //   color: ColorStyle.secondryBlack,
//               //   fontSizeFactor: 0.8,
//               // ),
//               // style: TextStyle(
//               //   color: ColorStyle.titleColor,
//               //   fontSize: 18,
//               //   fontFamily: 'GEDinarOne',
//               //
//               // ),
//             ),
//           ],
//         ),
//         backgroundColor: Colors.transparent,
//         leadingWidth: 100,
//         leading: Row(
//           children: [],
//         ),
//         actions: [
//           InkWell(
//               child: Icon(
//                 Icons.message_outlined,
//                 color: ColorStyle.primaryWhite,
//                 size: 30,
//               ),
//               onTap: onTap),
//           InkWell(
//               child: Icon(
//                 Icons.settings,
//                 color: ColorStyle.primaryWhite,
//                 size: 30,
//               ),
//               onTap: onTap),
//         ],
//       ),
//     );
//   }
//
//   @override
//   Size get preferredSize => new Size.fromHeight(50);
// }
