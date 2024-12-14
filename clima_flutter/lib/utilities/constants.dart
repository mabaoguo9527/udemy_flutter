import 'package:flutter/material.dart';

const kTempTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 100.0,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 60.0,
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Spartan MB',
);

const kConditionTextStyle = TextStyle(
  fontSize: 100.0,
);

const kCityNameTextStyle = TextStyle(
  fontFamily: 'spartan MB',
  fontSize: 40.0,
);

const kSmallTextStyle = TextStyle(fontFamily: 'spartan MB', fontSize: 12.0, color: Colors.grey);

const kTextFieldInputDecoration = InputDecoration(
  //是否有TextFormField的背景色
  filled: true,
  fillColor: Colors.white,
  icon: Icon(
    Icons.location_city,
    color: Colors.white,
  ),
  // placeholder
  hintText: 'Enter City Name',
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  border: OutlineInputBorder(
    // 圆角
    borderRadius: BorderRadius.all(
      Radius.circular(
        10.0,
      ),
    ),
    //删除TextFormField边界
    borderSide: BorderSide.none,
  ),
);
