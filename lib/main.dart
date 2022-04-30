
import 'package:advanced_capital_pay/Components/TitleTextFieldDownArrow.dart';
import 'package:advanced_capital_pay/Components/RedioButtonCustom.dart';
import 'package:advanced_capital_pay/Styles/TextStyles.dart';
import 'package:advanced_capital_pay/Views/AccountTransferSummary.dart';
import 'package:advanced_capital_pay/Views/TransferBetween.dart';
import 'package:advanced_capital_pay/Views/WhileOverseas.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import '../Views/SplashScreen.dart';
import '../Views/TabbarScreen.dart';
import 'package:advanced_capital_pay/Views/SplashScreen.dart';

import 'Components/DropdownButtonCustom.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        // home: WhileOverseas()
        home: SplashScreen(),
        // home: Material(
        //     child: AccountTransferSummary(
        //       // firstText: 'No',
        //       // secondText: 'Yes',
        //       // colorFirst: ColorsDropdownButtonTextField.green,
        //       // colorSecond: Colors.green,
        //       //
        //       // textStyleFirst: TextStyles.textStyles_16.apply(
        //       //   color: Colors.green
        //       // ),
        //       // textStyleSecond: TextStyles.textStyles_16.apply(
        //       //     color: Colors.green
        //       // ),
        //     ),
        // )
    );
  }
}

// merging...
// merging...