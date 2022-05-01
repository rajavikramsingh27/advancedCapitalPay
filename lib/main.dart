import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import '../Views/SplashScreen.dart';
import '../Views/TabbarScreen.dart';
import '../Views/CurrencyExchange.dart';
import '../Views/TransferSummary.dart';
import '../Views/AccountTransferSummary.dart';

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
        home: TabbarScreen(),
      // home: Material(
      //   child: TransferSummary(),
      // ),
      // home: AccountTransferSummary(),
    );
  }
}
