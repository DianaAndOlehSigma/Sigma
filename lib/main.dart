import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sigma/config/routes.dart';
import 'package:sigma/services/auth_service.dart';
import 'package:sigma/view/splash.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
        future: Firebase.initializeApp(),
        builder: (context, snapshot){
          if(snapshot.connectionState == ConnectionState.done){
            return AuthService().handleAuth();
          } else {
            return SplashScreen();
          }
        },
      ),
      getPages: AppPages.routes,
    );
  }
}
