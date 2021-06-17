import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {

  _loadWidget() async {
    var _duration = const Duration(seconds: 5);
    return Timer(_duration, navigation);
  }

  void navigation() {
    Get.toNamed('/bottomNavigationBarRoute');
  }

  @override
  void onInit() {
    super.onInit();
    _loadWidget();
  }
}
