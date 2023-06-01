import 'dart:convert';

import 'package:get/get.dart';

class UserProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = "http://192.168.0.185:5000";
    httpClient.defaultContentType = 'application/json';
  }

  Future<Response> registerAdmin(Map data) => post(
        "/api/admin/register",
        json.encode(data),
        headers: {
          'contentType': 'application/json',
          // 'contentLength': utf8.encode(json.encode(data)).length.toString()
        },
      );

  Future<Response> loginAdmin(Map data) => post(
        "/api/admin/login",
        json.encode(data),
        headers: {
          'contentType': 'application/json',
          // 'contentLength': utf8.encode(json.encode(data)).length.toString()
        },
      );
}
