import 'dart:convert';

import 'package:get/get.dart';

class CarsProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = "http://45.61.146.42:5000";
    httpClient.defaultContentType = 'application/json';
  }

  Future<Response> getAllUser(token, pageNum) => get(
        "/api/user/admin/viewAllUsers",
        headers: {
          "token": "Bearer $token",
          'contentType': 'application/json',
          // 'contentLength': utf8.encode(json.encode(data)).length.toString()
        },
        query: {
          'pageNo': pageNum,
          'perPage': '10',
        },
      );

  Future<Response> addCars(token, Map data) => post(
        "/api/car/admin/add",
        json.encode(data),
        headers: {
          "token": "Bearer $token",
          'contentType': 'application/json',
          // 'contentLength': utf8.encode(json.encode(data)).length.toString()
        },
      );

  Future<Response> viewAllCarsPaginate(token, pageNum) => get(
        "/api/car/admin/viewAllCars",
        headers: {
          "token": "Bearer $token",
          'contentType': 'application/json',
          // 'contentLength': utf8.encode(json.encode(data)).length.toString()
        },
        query: {
          'pageNo': pageNum.toString(),
          'perPage': '10',
        },
      );

  Future<Response> getAllNotification(token, pageNum) => get(
        "/api/admin/notifications",
        headers: {
          "token": "Bearer $token",
          'contentType': 'application/json',
          // 'contentLength': utf8.encode(json.encode(data)).length.toString()
        },
        query: {
          'pageNo': pageNum,
          'perPage': '10',
        },
      );
}
