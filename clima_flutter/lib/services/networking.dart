import 'dart:convert' as convert;
import 'dart:math';
import 'package:http/http.dart' as http;

class NetWorkHelper {
  NetWorkHelper({this.cityName});

  final String? cityName;

  final Map<String, String> cityCodeMap = <String, String>{
    '北京市': '110000',
    '东城区': '110101',
    '西城区': '110102',
    '朝阳区': '110105',
    '丰台区': '110106',
    '石景山区': '110107',
    '海淀区': '110108',
    '门头沟区': '110109',
    '房山区': '110111',
    '通州区': '110112',
    '顺义区': '110113',
    '昌平区': '110114',
    '大兴区': '110115',
    '怀柔区': '110116',
    '平谷区': '110117',
    '密云区': '110118',
    '延庆区': '110119',
  };

  Future<dynamic> getData() async {
    // This example uses the Google Books API to search for books about http.
    // https://developers.google.com/books/docs/overview
    String city = cityName ?? cityCodeMap.keys.elementAt(Random().nextInt(17));
    String? cityCode = cityCodeMap[city];
    print('cityCode' + cityCode!);
    var url = Uri.https('restapi.amap.com', '/v3/weather/weatherInfo', {'key': '0870dc900c337ac3613752af34bb3292', 'city': cityCode, 'extensions': 'base'});

    //curl -X GET https://restapi.amap.com/v3/weather/weatherInfo?key=0870dc900c337ac3613752af34bb3292&city=110105&extensions=base

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body) as Map<String, dynamic>;
      var weather = jsonResponse['lives'][0];
      //print('weather from http: $weather.');
      return weather;
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }
}
