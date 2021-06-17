import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sigma/resources/colors.dart';
import 'package:sigma/view/splash/splash_controller.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  final controller = SplashController();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  _SplashScreenState() {
    Get.put(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: backgroundColor),
      child: Scaffold(
          key: scaffoldKey,
          backgroundColor: Colors.transparent,
          body: Center(
            child: Image.asset(
              'assets/images/logo.png',
              height: 300,
              width: 300,
            ),
          )),
    );
  }
}
