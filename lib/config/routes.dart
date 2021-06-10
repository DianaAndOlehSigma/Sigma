import 'package:get/get.dart';
import 'package:sigma/view/auth_screen.dart';
import 'package:sigma/view/first_screen.dart';
import 'package:sigma/view/main_screen.dart';
import 'package:sigma/view/splash.dart';


class AppPages{
  static final routes = [
    GetPage(name: '/mainRoute', page: () => MainScreen()),
    GetPage(name: '/splashRoute', page: () => SplashScreen()),
    GetPage(name: '/firstRoute', page: () => FirstScreen()),
    GetPage(name: '/authRoute', page: () => AuthScreen()),
  ];
}