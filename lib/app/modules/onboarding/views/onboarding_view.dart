import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/bg1.jpg'), fit: BoxFit.fill)),
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
                                image: AssetImage('assets/dada.png'),
                                fit: BoxFit.fill)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Text(
                        "Welcome!",
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
                        width: 370,
                        child: Text(
                          "Register to create your account and start customizing your dashboard.",
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
                          cntrlr: controller.name,
                          hintText: 'Name',
                          icon: Icons.verified_user,
                        )),
                    Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: TextFieldOnboarding(
                          cntrlr: controller.enail,
                          hintText: 'Email address',
                          icon: Icons.mail_outline,
                        )),
                    Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: TextFieldOnboarding(
                          cntrlr: controller.password,
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
                        onTap: (){
                          controller.registerAdmin(email: controller.enail.text,password: controller.password.text,name: controller.name.text,con: context);
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
                                  "Sign Up",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                              )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 17.0),
                      child: Container(
                        width: 370,
                        child: Opacity(
                          opacity: 0.70,
                          child: Row(
                            children: [
                              Text(
                                "Already have an account?",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              GestureDetector(
                                onTap: (){
                                  Get.toNamed('/login');
                                },
                                child: MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: Text(
                                    " Sign in",
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 14,
                                    ),
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
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TextFieldOnboarding extends StatelessWidget {
  var hintText, icon,cntrlr;
  TextFieldOnboarding({this.hintText, this.icon,this.cntrlr});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      child: TextField(
        controller: cntrlr,
        decoration: InputDecoration(
          hintText: '   ${hintText}',
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Icon(icon),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0x7f333333), width: 1.5),
            borderRadius: BorderRadius.circular(6.0),
          ),
        ),
      ),
    );
  }
}
