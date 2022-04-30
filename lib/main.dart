import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import '../Views/SplashScreen.dart';

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
      home: SplashScreen(),
      // home: TabbarScreen(),
      // home: AppSettings(),
      // home: TabbarScreen(),
      // home: AppSettings(),
      //   home: SuccessfulCurrencyExchange()

      // home: TabbarScreen()
      // home: TabbarScreen()
      // home: TabbarScreen()
      // home: TabbarScreen()
      // home: TabbarScreen()
      // home: TabbarScreen()
      // home: TabbarScreen()
      // home: TabbarScreen()
    );
  }
}
