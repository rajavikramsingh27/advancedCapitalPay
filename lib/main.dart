

import 'package:advanced_capital_pay/Components/BackgroundImage.dart';
import 'package:advanced_capital_pay/Components/ChatWithUs.dart';
import 'package:advanced_capital_pay/Views/AdvanceCapitalPayHelpCenter.dart';
import 'package:advanced_capital_pay/Views/AppSettings.dart';
import 'package:advanced_capital_pay/Views/ApplyPay.dart';
import 'package:advanced_capital_pay/Views/BeneficiaryBankDetails.dart';
import 'package:advanced_capital_pay/Views/CryptoDashboard.dart';
import 'package:advanced_capital_pay/Views/CurrencyExchangePage.dart';
import 'package:advanced_capital_pay/Views/MyMessages.dart';
import 'package:advanced_capital_pay/Views/SignUp/PersonalApplication8.dart';
import 'package:advanced_capital_pay/Views/Terms&Conditions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import '../Views/SplashScreen.dart';
import 'Components/AppBarStyle.dart';
import 'Views/NewBeneficiary1.dart';
import 'Views/TabbarScreen.dart';



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
      // home: ApplyPay(),
      // home: TabbarScreen(),
      // home: AppSettings(),
      home: CryptoDashboard(),
      // home: AppSettings(),
      //   home: SuccessfulCurrencyExchange()


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
