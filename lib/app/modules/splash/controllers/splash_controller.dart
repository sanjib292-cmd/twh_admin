import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController

  final count = 0.obs;
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

  isUserLoggedIn() async {
    // var phone, userId;
    SharedPreferences pref = await SharedPreferences.getInstance();
    var token = pref.getString('token');

    if (token == null || token == '') {
      return Get.toNamed('/onboarding');
    }

    // print('Token is $token $phone $userId');

    Get.toNamed('/home');
  }

  void increment() => count.value++;
}
