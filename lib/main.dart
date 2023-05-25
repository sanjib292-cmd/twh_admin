import 'dart:ui';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
    apiKey: "AIzaSyAvJ7Ff9ikVZLqdcseDYNpprTAYH-lvKls",
    authDomain: "twsassam.firebaseapp.com",
    projectId: "twsassam",
    storageBucket: "twsassam.appspot.com",
    messagingSenderId: "355531562824",
    appId: "1:355531562824:web:14ff12686e933f95e59d7d"
),
);
  runApp(
    GetMaterialApp(
      defaultTransition:
                  Transition.noTransition, //this would be the solution
              transitionDuration: Duration(seconds: 0),
                  
              scrollBehavior: MaterialScrollBehavior().copyWith(
                dragDevices: {
                  PointerDeviceKind.mouse,
                  PointerDeviceKind.touch,
                  PointerDeviceKind.stylus,
                  PointerDeviceKind.unknown
                },
              ),
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
