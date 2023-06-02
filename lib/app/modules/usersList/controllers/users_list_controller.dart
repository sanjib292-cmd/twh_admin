import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:twh_admin/app/modules/home/providers/user_provider.dart';

import '../getallUserResponse.dart';

class UsersListController extends GetxController {
  //TODO: Implement UsersListController

  final count = 0.obs;
  CarsProvider carsProvider = Get.put(CarsProvider());
  final PagingController<int, Data> pagingController =
      PagingController(firstPageKey: 1);
  @override
  void onInit() {
    pagingController.addPageRequestListener((pageKey) {
      getAllUsers(
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

  getAllUsers(page) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    var token = pref.getString('token');
    print('token is $token');
    try {
      print('PAGE${page}');
      var res = await carsProvider.getAllUser('$token', '$page');

      if (res.body['code'] == 200) {
        print(res.body);
        getAllUserList getAlluser = getAllUserList.fromJson(res.body);
        final isLastPage = getAlluser.data!.length < 10;
        if (isLastPage) {
          pagingController.appendLastPage(getAlluser.data!);
        } else {
          final nextPageKey = page + 1;
          pagingController.appendPage(getAlluser.data!, nextPageKey);
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
