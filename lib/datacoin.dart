import 'dart:convert';
import 'package:http/http.dart' as http;


const List<String> coinList = [
  'BTC', 'ETH', 'ADA','SOL','BNB','DOGE'
];

const List<String> coinName=[
  'Bitcoin', 'Ethereum', 'Cardano','Solana','Binance Coin','Dogecoin'
];

const List<String> coinImage =[
  'https://s2.coinmarketcap.com/static/img/coins/64x64/1.png', //BTC
  'https://s2.coinmarketcap.com/static/img/coins/64x64/1027.png', //ETH
  'https://s2.coinmarketcap.com/static/img/coins/64x64/2010.png', //ADA
  'https://s2.coinmarketcap.com/static/img/coins/64x64/5426.png', //SOL
  'https://s2.coinmarketcap.com/static/img/coins/64x64/1839.png', //BNB
  'https://s2.coinmarketcap.com/static/img/coins/64x64/74.png', //DOGE
];

const List<String> coinPrices =[
  '\$43,717.87',
  '\$3,092.81',
  '\$2,26',
  '\$138.92',
  '\$349.33',
  '\$0.208',
];
