import 'package:get/get.dart';
import '../Styles/ImageStyle.dart';

class MainDashboardController extends GetxController {
  RxInt listType = 1.obs;

  RxInt indexPage = 0.obs;

  RxList<String> arrCardsImage = [
    ImageStyle.card_1,
    ImageStyle.card_2,
  ].obs;

  RxList<String> arrTitles =
      ['Free virtual card', 'Contactless debit card'].obs;
  RxList<String> arrDescription = [
    'Create your free virtual card. Use it with Apple Pay and anywhere online that accept Mastercard',
    'Receive your card and start spending in-store and online'
  ].obs;

  RxList<String> arrButtonTitle =
      ['Create virtual card', 'Order your card'].obs;

  reset() {
    listType.value = 1;
  }
}
