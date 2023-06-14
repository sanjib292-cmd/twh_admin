import 'dart:convert';

import 'package:get/get.dart';

class EditCarsProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = "https://backend.thewagonhouse.in";
    httpClient.defaultContentType = 'application/json';
  }


    Future<Response> editCars(token, Map data) => post(
        "/api/car/admin/update",
        json.encode(data),
        headers: {
          "token": "Bearer $token",
        },
      );

          Future<Response> deleteCar(token, Map data) => post(
        "/api/car/admin/delete",
        json.encode(data),
        headers: {
          "token": "Bearer $token",
        },
      );
}
