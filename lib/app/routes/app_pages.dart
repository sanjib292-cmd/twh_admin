import 'package:get/get.dart';

import '../modules/carlist/bindings/carlist_binding.dart';
import '../modules/carlist/views/carlist_view.dart';
import '../modules/editCars/bindings/edit_cars_binding.dart';
import '../modules/editCars/views/edit_cars_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/viewAllCarsResponse.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/notification/bindings/notification_binding.dart';
import '../modules/notification/views/notification_view.dart';
import '../modules/notificationList/bindings/notification_list_binding.dart';
import '../modules/notificationList/views/notification_list_view.dart';
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/onboarding/views/onboarding_view.dart';
import '../modules/privicyPolicy/bindings/privicy_policy_binding.dart';
import '../modules/privicyPolicy/views/privicy_policy_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/usersList/bindings/users_list_binding.dart';
import '../modules/usersList/views/users_list_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.CARLIST,
      page: () => const CarlistView(),
      binding: CarlistBinding(),
    ),
    // GetPage(
    //   name: _Paths.NOTIFICATION,
    //   page: () => const NotificationView(),
    //   binding: NotificationBinding(),
    // ),
    GetPage(
      name: _Paths.USERS_LIST,
      page: () => const UsersListView(),
      binding: UsersListBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => const OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATION_LIST,
      page: () => const NotificationListView(),
      binding: NotificationBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_CARS,
      page: () => EditCarsView(
        carDetails: Data.fromJson({}),
      ),
      binding: EditCarsBinding(),
    ),
    GetPage(
      name: _Paths.PRIVICY_POLICY,
      page: () => const PrivicyPolicyView(),
      binding: PrivicyPolicyBinding(),
    ),
  ];
}
