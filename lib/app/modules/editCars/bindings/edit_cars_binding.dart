import 'package:get/get.dart';

import '../controllers/edit_cars_controller.dart';

class EditCarsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditCarsController>(
      () => EditCarsController(),
    );
  }
}
