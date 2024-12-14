import 'package:http/http.dart';
import 'dart:convert';

const List<String> currenciesList = ['AUD', 'BRL', 'CAD', 'CNY', 'EUR', 'GBP', 'HKD', 'IDR', 'ILS', 'INR', 'KRW', 'JPY', 'MXN', 'NOK', 'NZD', 'PLN', 'RON', 'RUB', 'SEK', 'SGD', 'USD', 'ZAR'];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
  'DOGE',
];

const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate';
const apikey = 'bbe8dfe7-7e09-48e3-bd8a-dd29d6746482';

class CoinData {
  Future getCoinData(String selectedCurrency) async {
    Map<String, String> cryptoPrices = {};
    for (String crypto in cryptoList) {
      String requestURL = '$coinAPIURL/$crypto/$selectedCurrency?apikey=$apikey';
      Response response = await get(Uri.parse(requestURL));
      if (response.statusCode == 200) {
        var decodeData = jsonDecode(response.body);
        var lastPrice = decodeData['rate'];
        cryptoPrices[crypto] = lastPrice.toStringAsFixed(2);
      } else {
        print("statusCode : ${response.statusCode}");
        throw 'Problem with the get request';
      }
    }
    return cryptoPrices;
  }
}
