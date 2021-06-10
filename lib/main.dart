import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sigma/config/routes.dart';
import 'package:sigma/resources/colors.dart';
import 'package:sigma/view/splash.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      getPages: AppPages.routes,
    );
  }
}
