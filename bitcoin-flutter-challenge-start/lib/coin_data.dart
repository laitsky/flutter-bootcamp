//TODO: Add your imports here.
import 'package:http/http.dart' as http;
import 'dart:convert' show jsonDecode;

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate';
const apiKey = 'D710B2E8-BC80-4AA0-93CB-F10EAA49DB16';

class CoinData {
  String _convertedRates;
  //TODO: Create your getCoinData() method here.
  Future<dynamic> getCoinData() async {
    var url = '$coinAPIURL/BTC/USD';
    var response = await http.get(
      url,
      headers: {'X-CoinAPI-Key': apiKey},
    );

    var decoded = jsonDecode(response.body);
    _convertedRates = decoded['rate'].toStringAsFixed(2);
  }

  String getConvertedRates() => _convertedRates;
}
