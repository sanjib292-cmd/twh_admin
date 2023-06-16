import 'package:get/get.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:twh_admin/app/modules/home/providers/user_provider.dart';
import 'package:twh_admin/app/modules/notificationList/notificationResponse.dart';

class NotificationController extends GetxController {
  //TODO: Implement NotificationController




  //TODO: Implement NotificationListController

  final count = 0.obs;
  CarsProvider carsProvider = Get.put(CarsProvider());
  final PagingController<int, Data> pagingController =
      PagingController(firstPageKey: 1);
  @override
  void onInit() {
    pagingController.addPageRequestListener((pageKey) {
      getAllNotifications(
        pageKey,
      );
    });
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

  getAllNotifications(page) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    var token = pref.getString('token');
    // print('token is $token');
    try {
      // print('PAGE${page}');
      var res = await carsProvider.getAllNotification('$token', '$page');

      if (res.body['code'] == 200) {
        print(res.body);
        NotificationList notificationList = NotificationList.fromJson(res.body);
        final isLastPage = notificationList.data!.length < 10;
        if (isLastPage) {
          pagingController.appendLastPage(notificationList.data!);
        } else {
          final nextPageKey = page + 1;
          pagingController.appendPage(notificationList.data!, nextPageKey);
        }
        return;
        // Get.snackbar('Sucess', 'Otp sent sucessfully');
      } else {
        return Get.snackbar('Error', '${res.body['message']}');
      }
    } on Exception catch (e) {
      // TODO
      print(e);
    }
  }

  void increment() => count.value++;
}


