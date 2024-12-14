import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

void main(List<String> arguments) async {
  // This example uses the Google Books API to search for books about http.
  // https://developers.google.com/books/docs/overview
  var url = Uri.https('restapi.amap.com', '/v3/weather/weatherInfo', {'key': '0870dc900c337ac3613752af34bb3292', 'city': '110105', 'extensions': 'base'});

  //curl -X GET https://restapi.amap.com/v3/weather/weatherInfo?key=0870dc900c337ac3613752af34bb3292&city=110105&extensions=base

  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body) as Map<String, dynamic>;
    var weather = jsonResponse['lives'];
    print('weather from http: $weather.');
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}
