import 'package:flutter/material.dart';

import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
        ),
      ),
      // theme: ThemeData(
      //   // 主颜色，好像不生效了
      //   primaryColor: Color(0xFF0A0E21),
      //   // appBar 的主题
      //   appBarTheme: const AppBarTheme(
      //     backgroundColor: Color(0xFF0A0E21),
      //     foregroundColor: Colors.white,
      //   ),
      //   // body 的背景色
      //   scaffoldBackgroundColor: Color(0xFF0A0E21),
      //   textTheme: const TextTheme(
      //     bodyLarge: TextStyle(color: Colors.white),
      //     bodyMedium: TextStyle(color: Colors.white),
      //     bodySmall: TextStyle(color: Colors.white),
      //   ),
      //   // 浮动按钮主题
      //   floatingActionButtonTheme: const FloatingActionButtonThemeData(
      //     foregroundColor: Colors.white,
      //     backgroundColor: Colors.red,
      //   ),
      // ),
      home: const InputPage(),
    );
  }
}
