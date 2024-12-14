import 'dart:io';

import 'networking.dart';

class WeatherModel {
  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  Future<dynamic> getLocationWeather() async {
    var data;
    await Future.delayed(Duration(milliseconds: 300), () async {
      NetWorkHelper netWorkHelper = NetWorkHelper();
      data = await netWorkHelper.getData();
      print(data);
    });
    return data;
  }

  Future<dynamic> getCityWeather(String cityName) async {
    var data;
    await Future.delayed(Duration(milliseconds: 300), () async {
      NetWorkHelper netWorkHelper = NetWorkHelper(cityName: cityName);
      data = await netWorkHelper.getData();
      print(data);
    });
    return data;
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
