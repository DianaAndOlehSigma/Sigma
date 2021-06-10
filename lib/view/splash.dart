import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sigma/resources/colors.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    super.initState();

    _loadWidget();
  }

  _loadWidget() async {
    var _duration = Duration(seconds: 5);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Get.toNamed('/firstRoute');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: ColorsData().backGroundColor
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
        body: Center(
          child: Image.asset(
            'assets/images/logo.png',
            height: 300,
            width: 300,
          ),
        )
      ),
    );
  }
}