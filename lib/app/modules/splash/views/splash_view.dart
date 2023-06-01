import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../onboarding/controllers/onboarding_controller.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  SplashView({Key? key}) : super(key: key);

  func(context) {
    final splashController = Get.put(SplashController());
    // controller.playSound(context);
    Future.delayed(Duration(seconds: 2), () {
      splashController.isUserLoggedIn();
    });
  }

  @override
  Widget build(BuildContext context) {
    // onboardingController.isUserLoggedIn(context);
    func(context);

    return Scaffold(
        body: SafeArea(
      child: Container(
          height: Get.height,
          width: Get.width,
          color: Color(0xff0065F2),
          child: Container(
            child: Center(
              child: SplashhImg(),
            ),
            // duration: 3000,
            // splash: SplashhImg(),
            // // function:onboardingController.isUserLoggedIn(context),

            // // return  onboardingController.isUserLoggedIn(context);

            // nextScreen:onboardingController.isUserLoggedIn(context),
            // splashTransition: SplashTransition.fadeTransition,
            // backgroundColor: Color(0xff0065F2)),
          )),
    ));
  }
}

class SplashhImg extends StatelessWidget {
  const SplashhImg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        color: Color(0xff0065F2),
        child: Center(
          child: Container(
            height: 100,
            width: 300,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/dada.png'), fit: BoxFit.contain)),
          ),
        ),
      ),
    );
  }
}
