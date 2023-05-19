import 'package:get/get.dart';

import '../controllers/carlist_controller.dart';

class CarlistBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CarlistController>(
      () => CarlistController(),
    );
  }
}
