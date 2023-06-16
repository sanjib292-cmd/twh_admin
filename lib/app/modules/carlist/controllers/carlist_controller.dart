import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:twh_admin/app/modules/home/viewAllCarsResponse.dart';

import '../../home/providers/user_provider.dart';

class CarlistController extends GetxController {
  //TODO: Implement CarlistController

  final count = 0.obs;
  var isLoading2 = false.obs;
  CarsProvider carsProvider = Get.put(CarsProvider());

  var non = "".obs;
  var viewAllCarsPaginate = ViewAllCarsResponse().obs;
  final PagingController<int, Data> pagingController =
      PagingController(firstPageKey: 1);
  @override
  void onInit() {
    pagingController.addPageRequestListener((pageKey) {
      viewAllCarsPagination(
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

  viewAllCarsPagination(page) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    var token = pref.getString('token');
    print('token is $token');
    isLoading2.value = true;
    try {
      print('PAGE${page}');
      var res = await carsProvider.viewAllCarsPaginate('$token', page);
      print("base ${carsProvider.baseUrl}");

      if (res.body['code'] == 200) {
        isLoading2.value = false;
        print(res.body);
        ViewAllCarsResponse viewAllCarsResponse =
            ViewAllCarsResponse.fromJson(res.body);
        viewAllCarsPaginate.value = viewAllCarsResponse;
        final isLastPage = viewAllCarsResponse.data!.length < 10;
        if (isLastPage) {
          pagingController.appendLastPage(viewAllCarsResponse.data!);
        } else {
          final nextPageKey = page + 1;
          pagingController.appendPage(viewAllCarsResponse.data!, nextPageKey);
        }
        return;
        // Get.snackbar('Sucess', 'Otp sent sucessfully');
      } else {
        isLoading2.value = false;
        print("body ${res.body}");
        return Get.snackbar('Error', 'Server error while sending otp');
      }
    } on Exception catch (e) {
      // TODO
      print(e);
    }
  }

  void increment() => count.value++;
}
