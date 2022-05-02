import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import '../Views/SplashScreen.dart';
import '../Views/TabbarScreen.dart';
import '../Views/CurrencyExchange.dart';
import '../Views/TransferSummary.dart';
import '../Views/ApplePay.dart';



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
      // home: Exchange(),
      home: TabbarScreen(),
      // home: ApplePay(),
      // home: Material(
      //   color: ColorStyle.darkestBlueSignUp,
      //   child: SearchByBankSwift(),
      // ),
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
