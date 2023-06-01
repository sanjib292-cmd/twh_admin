import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:twh_admin/app/modules/onboarding/views/onboarding_view.dart';

import '../../home/controllers/home_controller.dart';
import '../../onboarding/controllers/onboarding_controller.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final homecontroller = Get.put(HomeController());
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Row(
        children: [
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('bg1.jpg'), fit: BoxFit.fill)),
            child: Stack(
              children: [],
            ),
          )),
          Expanded(
            child: Center(
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 60.0),
                      child: Container(
                        height: 90,
                        width: 157,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('dada.png'),
                                fit: BoxFit.fill)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Text(
                        "Hello Again!",
                        style: TextStyle(
                          color: Color(0xff333333),
                          fontSize: 35,
                          fontFamily: "Urbanist",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: SizedBox(
                        child: Text(
                          "Welcome Back",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0x7f333333),
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 40.0),
                        child: TextFieldOnboarding(
                          cntrlr: controller.emailLogin,
                          hintText: 'Email address',
                          icon: Icons.mail_outline,
                        )),
                    Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: TextFieldOnboarding(
                          cntrlr: controller.passwordLogin,
                          hintText: 'Password',
                          icon: Icons.password,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Container(
                        width: 370,
                        child: Text(
                          "Must be at least 8 characters",
                          style: TextStyle(
                            color: Color(0xff333333),
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: GestureDetector(
                        onTap: () async {
                          var token =await homecontroller.getToken();
                          controller.loginAdmin(
                            con: context,
                              email: controller.emailLogin.text,
                              password: controller.passwordLogin.text,
                              diviceToken: token);
                        },
                        child: MouseRegion(
                             cursor: SystemMouseCursors.click,
                          child: Container(
                              width: 370,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Color(0xff0575E6)),
                              child: Center(
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
