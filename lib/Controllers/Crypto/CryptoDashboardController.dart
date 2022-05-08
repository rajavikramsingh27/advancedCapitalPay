import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Styles/ImageStyle.dart';


class CryptoDashboardController extends GetxController {
  RxList<String> images = <String>[
    ImageStyle.bitcoinbtclogo,
    ImageStyle.ethereum2,
    ImageStyle.Group92222,
    ImageStyle.Group92222,
  ].obs;
  RxList<String> images1 = <String>[
    ImageStyle.binancecoinbnblogo,
    ImageStyle.solanasollogo,
    ImageStyle.cardanoadalogo,

  ].obs;
  RxList<String> images2 = <String>[
    ImageStyle.dogecoindogelogo,
    ImageStyle.vechainvetlogo,
    ImageStyle.ravencoinrvnlogo,
    ImageStyle.balancerbal,
    ImageStyle.PlotX,
    ImageStyle.PlotX,

  ].obs;

  RxList<String> chooseSaving = [
    'Bitcoin',
    'Ethereum',
    'USDT (Erc20)',
    'USDT (Trc20)',
  ].obs;
  RxList<String> chooseSaving1 = [
    '\$ 62,637.95',
    '\$ 3,109.02',
    '\$ 4.28',
    '\$ 377.60',
  ].obs;
  RxList<String> chooseSaving2 = [
    '-1.41%',
    '-2.21%',
    '+7.89%',
    '-1.98%',
  ].obs;
  RxList<String> chooseSaving3 = [
    '\$ 20,414.07',
    '\$ 12,948.62',
    '\$ 408.67',
    '\$ 225.39',
  ].obs;
  RxList<String> chooseSaving4 = [
    '0.492342 BTC',
    '4.21 ETH',
    '95.48589 USDT',
    '0.613647 USDT',
  ].obs;
  RxList<String> chooseSaving5 = [
    'Binance Coin',
    'Solana',
    'Cardano',

  ].obs;
  RxList<String> chooseSaving6 = [
    'BNB',
    'SOL',
    'ADA',

  ].obs;

  RxList<String> chooseSaving7 = [
    '\$ 1.43',
    '\$ 5.41',
    '\$ 11.73',

  ].obs;
  RxList<String> chooseSaving8 = [
    '+1.09%',
    '-6.08%',
    '-5.41%',

  ].obs;
  RxList<String> chooseSaving9 = [
    'Dogecoin',
    'VeChain',
    'Ravencoin',
       'Balancer',
    'PlotX',
    'Elamachain',
  ].obs;

  RxList<String> chooseSaving10 = [
    'DOGE',
    'VET',

    'RVN',
    'BAL',
    'PLOT',
    'EL AMA',
  ].obs;

  RxList<String> chooseSaving11 = [
    '\$ 0.1278',
    '\$ 0.1726',
    '\$ 0.2222',
    '\$ 62.55',
    '\$ 0.08164',
    '\$ 0.00324',
  ].obs;
  RxList<String> chooseSaving12 = [
    '+39.34%',
    '+19.71%',

    '+16.11%',
    '+12.71%',
    '+109.96%',
    '+58.70%',
  ].obs;

}

