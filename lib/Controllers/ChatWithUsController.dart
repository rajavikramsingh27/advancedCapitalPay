
import 'package:get/get.dart';

class ChatWithUsController extends GetxController {

  RxDouble heightScreen = 0.0.obs;
  RxBool isMaximize = false.obs;

  reset() {
    isMaximize.value = false;

    Future.delayed(Duration(milliseconds: 100), () {
      heightScreen.value = Get.context!.size!.height-300;
    });
  }
}