import 'dart:convert';

import 'package:get/get.dart';

class UserProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = "https://backend.thewagonhouse.in";
    httpClient.defaultContentType = 'application/json';
  }

  Future<Response> registerAdmin(Map data) => post(
        "/api/admin/register",
        json.encode(data),
      
      );

  Future<Response> loginAdmin(Map data) => post(
        "/api/admin/login",
        json.encode(data),
      
      );
}
