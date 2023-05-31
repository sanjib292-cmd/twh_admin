import 'dart:ui';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyCq3sA2gjHmiuxGAIA6ikFD9ILJHsB1NV8",
        authDomain: "the-wagon-house-9314a.firebaseapp.com",
        projectId: "the-wagon-house-9314a",
        storageBucket: "the-wagon-house-9314a.appspot.com",
        messagingSenderId: "482125193930",
        appId: "1:482125193930:web:ef7823520ecacf8d404a33",
        measurementId: "G-JWDKWEHC6L"),
  );
  runApp(
    GetMaterialApp(
      defaultTransition: Transition.noTransition, //this would be the solution
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
