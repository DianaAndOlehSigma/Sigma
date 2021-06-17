import 'package:get/get.dart';
import 'package:sigma/view/bottom_nav_bar_sceens/product_detail_sceen.dart';
import 'package:sigma/view/log_in/phone_verify_screen.dart';
import 'package:sigma/view/log_in/first_screen.dart';
import 'package:sigma/view/bottom_nav_bar_sceens/main_screen.dart';
import 'package:sigma/view/log_in/sms_screen.dart';
import 'package:sigma/view/splash/splash.dart';
import 'package:sigma/view/widgets/bottomNavigationBar.dart';


class AppPages{
  static final routes = [
    GetPage(name: '/mainRoute', page: () => MainScreen()),
    GetPage(name: '/splashRoute', page: () => SplashScreen()),
    GetPage(name: '/firstRoute', page: () => FirstScreen()),
    GetPage(name: '/phoneVerifyRoute', page: () => PhoneVerifyScreen()),
    GetPage(name: '/smsRoute', page: () => SmsScreen()),
    GetPage(name: '/bottomNavigationBarRoute', page: () => MainBottomNavigationBar()),
    GetPage(name: '/productDetailRoute', page: () => ProductDetailScreen()),
  ];
}