import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:twh_admin/app/modules/home/views/home_view.dart';
import 'package:twh_admin/app/modules/login/views/login_view.dart';
import 'package:twh_admin/app/modules/onboarding/adminRegisterReqest.dart';
import 'package:twh_admin/app/modules/onboarding/providers/user_provider.dart';

import '../adminLoginRequest.dart';
import '../adminLoginResponse.dart';

class OnboardingController extends GetxController {
  //TODO: Implement OnboardingController

  final count = 0.obs;
  UserProvider userProvider = Get.put(UserProvider());
  AdminRegisterReqest adminRegisterReqest = AdminRegisterReqest();
  AdminLoginReqest adminLoginReqest = AdminLoginReqest();
  TextEditingController name = TextEditingController();
  TextEditingController enail = TextEditingController();
  TextEditingController password = TextEditingController();

  TextEditingController emailLogin = TextEditingController();
  TextEditingController passwordLogin = TextEditingController();
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  registerAdmin({email, con, password, name}) async {
    adminRegisterReqest.email = email;
    adminRegisterReqest.password = password;
    adminRegisterReqest.name = name;
    // SharedPreferences pref = await SharedPreferences.getInstance();

    var res = await userProvider.registerAdmin(adminRegisterReqest.toJson());
    if (res.body['code'] == 200) {
      print(res.body);
      final snackBar = SnackBar(
        content: Text('${res.body['message']}'),
        backgroundColor: (Colors.black),
        action: SnackBarAction(
          label: 'dismiss',
          onPressed: () {},
        ),
      );

      ScaffoldMessenger.of(con).showSnackBar(snackBar);

      return Navigator.pushAndRemoveUntil(
        con,
        MaterialPageRoute(builder: (context) => LoginView()),
        (route) => false,
      );
    } else {
      final snackBar = SnackBar(
        content: Text('${res.body['message']}'),
        backgroundColor: (Colors.black),
        action: SnackBarAction(
          label: 'dismiss',
          onPressed: () {},
        ),
      );

      return ScaffoldMessenger.of(con).showSnackBar(snackBar);
    }
  }

  loginAdmin({email, con, password, diviceToken}) async {
    adminLoginReqest.email = email;
    adminLoginReqest.password = password;
    adminLoginReqest.adminDeviceToken = diviceToken;
    SharedPreferences pref = await SharedPreferences.getInstance();

    try {
      print('Requst ${adminLoginReqest.toJson()}');
  var res = await userProvider.loginAdmin(adminLoginReqest.toJson());
  print('Status check error ${res.body}');
  if (res.body['code'] == 200) {
    print(res.body);
    AdminLoginResponse adminLoginResponse =
        AdminLoginResponse.fromJson(res.body);
    pref.setString('token', "${adminLoginResponse.data!.token}");
    print('Token <><><><> ${adminLoginResponse.data!.token}');
    final snackBar = SnackBar(
      content: Text('${res.body['message']}'),
      backgroundColor: (Colors.black),
      action: SnackBarAction(
        label: 'dismiss',
        onPressed: () {},
      ),
    );
  
    ScaffoldMessenger.of(con).showSnackBar(snackBar);
  
    return Get.toNamed('/home');
  } else {
    final snackBar = SnackBar(
      content: Text('${res.body['message']}'),
      backgroundColor: (Colors.black),
      action: SnackBarAction(
        label: 'dismiss',
        onPressed: () {},
      ),
    );
  
    return ScaffoldMessenger.of(con).showSnackBar(snackBar);
  }
} on Exception catch (e) {
  // TODO
  print('E is $e');
}
  }

  void increment() => count.value++;
}
