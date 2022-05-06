


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import '../Views/SignIn.dart';

import '../Views/CryptoScanOrTake.dart';
import '../Views/CryptoRequestAmount.dart';
import '../Views/CryptoRecieveAmount.dart';
import '../Views/SplashScreen.dart';
import '../Views/SendBitcoins1.dart';
import '../Views/CryptoTransactionDetails.dart';
import '../Views/TransactionSummarys.dart';
import '../Views/TransactionSuccesfuls.dart';



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
        // home: SplashScreen(),
      // home: CryptoTrade(),
      // home: SignIn(),
      home: SplashScreen(),
      // home: Exchange(),
      // home: TabbarScreen(),
      // home: CryptoRequestAmount(),
      // home: Material(
      //   color: ColorStyle.darkestBlueSignUp,
      //   child: SearchByBankSwift(),
      // ),

      // home: CryptoTransactionList(),
      // home: TabbarScreen(),
      // home: AppSettings(),
      // home: TabbarScreen(),

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
      //     ),
      // )
    );
  }
}
