// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, sort_child_properties_last
// Packages
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flash_chat_flutter/Screens/login_screen.dart';
import 'package:flash_chat_flutter/Screens/registration_screen.dart';
import 'package:flutter/material.dart';

import '../components/rounded_button.dart';
// Screens

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  //如果声明为static const，则在编译时确定值。
  //调用对象后获取变量是在运行时确定值的
  //最好声明为static const。

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  // 动画控制
  AnimationController? controller;

  Animation? animation;

  // Ticker 是用于创建动画的一个重要概念。它主要用于控制动画的时间和帧速率
  // Ticker 的功能
  // 1. 时间驱动：
  // Ticker 会在每一帧调用回调函数，通常用于更新动画的状态。它确保动画能够根据屏幕刷新率进行平滑的更新。
  // 2. 帧更新：
  // 每当 Ticker 触发时，它会提供一个时间间隔（通常是自上次调用以来的时间），可以用来计算动画的进度。
  // 3. 控制动画的开始和停止：
  // 你可以启动和停止 Ticker，这样可以控制动画的生命周期。

  @override
  void initState() {
    super.initState();

    controller = AnimationController(duration: Duration(seconds: 2), vsync: this);
    animation = CurvedAnimation(parent: controller!, curve: Curves.easeIn);
    //controller?.reverse(from: 1.0);
    controller?.forward();
    // animation?.addStatusListener((status) {
    //   print(status);
    //   if (status == AnimationStatus.completed) {
    //     controller?.reverse(from: 1.0);
    //   } else if (status == AnimationStatus.dismissed) {
    //     controller?.forward();
    //   }
    // });
    controller?.addListener(() {
      setState(() {});
      //print(animation?.value);
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60, //animation?.value * 100,
                  ),
                ),
                DefaultTextStyle(
                  style: const TextStyle(fontSize: 45.0, fontWeight: FontWeight.w900, color: Colors.black),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText('Flash Chat'),
                      // TypewriterAnimatedText('Design first, then code'),
                      // TypewriterAnimatedText('Do not patch bugs out, rewrite them'),
                      // TypewriterAnimatedText('Do not test bugs out, design them out'),
                    ],
                    onTap: () {
                      print("Tap Event");
                    },
                    totalRepeatCount: 1,
                  ),
                ),
                // Text(
                //   'Flash Chat',
                //   style: TextStyle(
                //     fontSize: 45.0,
                //     fontWeight: FontWeight.w900,
                //   ),
                // ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(
              title: 'Log In',
              colour: Colors.lightBlueAccent,
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
            RoundedButton(
              title: 'Register',
              colour: Colors.blueAccent,
              onPressed: () {
                Navigator.pushNamed(context, RegisterScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
