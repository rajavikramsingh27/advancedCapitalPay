
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:get/get.dart';


class CryptoMarketController extends GetxController {
  RxList<String> images = <String>[
    ImageStyle.bitcoinbtclogo,
    ImageStyle.eth,
    ImageStyle.shared,
    ImageStyle.bnb,
    ImageStyle.ltc,
    ImageStyle.doge,

  ].obs;

  RxList<String> chooseSaving = [
    'Bitcoin',
    'Ethereum',
    'Shared',
    'Binance',
    'Litecoin',
    'Dogecoin',
  ].obs;


  RxList<String> chooseSaving1 = [
    '\$ 15,340',
    '\$ 3,340.02',
    '\$ 9,340.05',
    '\$ 6,684.25',
    '\$ 105.51',
    '\$ 46.54',
  ].obs;
  RxList<String> chooseSaving2 = [
    '+7.89%',
    '-1.42%',
    '-1.41%',
    '+7.89%',
    '+7.89%',
    '+7.98%',
  ].obs;
  RxList<String> chooseSaving3 = [
    '\$ 10,340',
    '\$ 04,34007',
    '\$ 1,340',
    '\$ 6,120',
    '\$ 404,5',
    '\$ 46.54',
  ].obs;
  RxList<String> chooseSaving4 = [
    '0.484628  BTC',
    '4.215 ETH',
    '2.5495 Shard',
    '65.6546 BNB',
    '24.0548 LTC',
    '154.878 Doge',
  ].obs;

  RxList<String> arrTypeCrypto = [
    '(BTC)',
    '(ETH)',
    '(Shard)',
    '(BNB)',
    '(LTC)',
    '(Doge)',
  ].obs;

  RxList<String> arrTypeCryptoColor = [
    '#F7931A',
    '#627EEA',
    '#00B8FF',
    '#F3BA2F',
    '#A1BEEC',
    '#C2A633',
  ].obs;

  RxInt  index = 0.obs;
  RxBool  isCoins = true.obs;

  reset() {
    index.value = 0;
    isCoins.value = true;
  }

}