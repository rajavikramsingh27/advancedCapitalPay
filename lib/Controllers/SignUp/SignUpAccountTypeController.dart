import 'package:get/get.dart';
import '../../Styles/ImageStyle.dart';
import '../../Utils/Constants.dart';

class SignUpAccountTypeController extends GetxController {
  RxList<String> arrPlanTitle = [
    'LITE',
    'Starter',
    'Plus',
    'Premium',
  ].obs;

  RxList<String> arrPlanPrice = [
    'Free account',
    '£2.25/m',
    '£4.85/m',
    '£11.50/m',
  ].obs;

  RxList<String> arrPlanIcons = <String>[
    ImageStyle.signup1,
    ImageStyle.signup2,
    ImageStyle.signup3,
    ImageStyle.signup4,
  ].obs;

  RxInt indexPlan = 0.obs;
  RxBool isDropDown = false.obs;

  reset() {
    isPrivate.value = true;
    indexPlan.value = 0;
    isDropDown.value = false;
  }
}
