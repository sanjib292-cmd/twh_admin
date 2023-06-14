import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:twh_admin/app/modules/editCars/deleteCar.dart';
import 'package:twh_admin/app/modules/editCars/providers/edit_cars_provider.dart';

import '../editCarReq.dart';

class EditCarsController extends GetxController {
  //TODO: Implement EditCarsController

  final count = 0.obs;
    var non = "".obs;
      EditCar editCar = EditCar();
      DeleteCar deleteCar = DeleteCar();

  var currentSelectedValue = "".obs;
  var currentSelectedValueTransmission = "".obs;
  var currentSelectedValueFueltype = "".obs;
  var resellTypeobx = "".obs;
  var categoryObs = "".obs;
  var lbltxt = "Label Text".obs;
  var kmDri = ''.obs;
  var name = TextEditingController();
  var engine = TextEditingController();
  var milageContr = TextEditingController();
  var modelYearContr = TextEditingController();
  var currentMarketPriceCn = TextEditingController();
  var carModelCn = TextEditingController();
  var kmDriven = TextEditingController();
  var priceContr = TextEditingController();
  var price = ''.obs;
  var modelYear = ''.obs;
  var currentMarketPrice = ''.obs;
  var carModel = ''.obs;
  var milage = ''.obs;
  var carname = ''.obs;
  var engineCC = ''.obs;
  var isLoading2 = false.obs;
  var urls=[].obs;
    var safteyRating = [
    "1",
    "2",
    "3",
    "4",
    "5",
  ];

  var transmission = [
    "Autometic",
    "Manul",
  ];

  var fuelType = ["Petrol", "Disel", "Electric"];
  var resellType = ["New", "Second hand", "Third Owner"];
  var category = ["New Arrival", "Second hand", "Third Owner"];
    EditCarsProvider carsProvider = Get.put(EditCarsProvider());
  @override
  void onInit() {
        currentSelectedValue.value = safteyRating[0];
    currentSelectedValueTransmission.value = transmission[0];
    currentSelectedValueFueltype.value = fuelType[0];
    resellTypeobx.value = resellType[0];
    categoryObs.value = category[0];
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



   editCars({
    carName,
    modelNam,
    id,
    year,
    sellPrice,
    fuel,
    gear,
    imgs,
    con,
  }) async {
    editCar.sId=id;
    editCar.carTitle = carName;
    editCar.modelName = modelNam;
    editCar.manufacturingYear = year;
  
    editCar.price = sellPrice;
    editCar.oilVariant = fuel;
    editCar.gearTransmission = gear;
    editCar.warranty = "1 year";
    editCar.imagesUrl = imgs;
    SharedPreferences pref = await SharedPreferences.getInstance();
    var token = pref.getString('token');

    var res = await carsProvider.editCars(
        '$token',
        editCar.toJson());
    print('phone is ${res.request}  ${res.status} ${res.statusText}');

    if (res.body['code'] == 200) {
      print(res.body);
      final snackBar = SnackBar(
        content: Text('${res.body['message']}'),
        backgroundColor: (Colors.black),
        action: SnackBarAction(
          label: 'dismiss',
          onPressed: () {},
        ),
      );

      return ScaffoldMessenger.of(con).showSnackBar(snackBar);
      // return Navigator.pushAndRemoveUntil(
      //   con,
      //   MaterialPageRoute(builder: (context) => OtpviewView()),
      //   (route) => false,
      // );
    } else {
      print("body ${res.body}");
      final snackBar = SnackBar(
        content: Text('${res.body['message']}'),
        backgroundColor: (Colors.black),
        action: SnackBarAction(
          label: 'dismiss',
          onPressed: () {},
        ),
      );

      return ScaffoldMessenger.of(con).showSnackBar(snackBar);
    }
  }



  deleteCars({
    id,
    con,
  }) async {
    deleteCar.sId=id;
    SharedPreferences pref = await SharedPreferences.getInstance();
    var token = pref.getString('token');

    var res = await carsProvider.deleteCar(
        '$token',
        deleteCar.toJson());
    print('phone is ${res.request}  ${res.status} ${res.statusText}');

    if (res.body['code'] == 200) {
      print(res.body);
      final snackBar = SnackBar(
        content: Text('${res.body['message']}'),
        backgroundColor: (Colors.black),
        action: SnackBarAction(
          label: 'dismiss',
          onPressed: () {},
        ),
      );

      return ScaffoldMessenger.of(con).showSnackBar(snackBar);
      // return Navigator.pushAndRemoveUntil(
      //   con,
      //   MaterialPageRoute(builder: (context) => OtpviewView()),
      //   (route) => false,
      // );
    } else {
      print("body ${res.body}");
      final snackBar = SnackBar(
        content: Text('${res.body['message']}'),
        backgroundColor: (Colors.black),
        action: SnackBarAction(
          label: 'dismiss',
          onPressed: () {},
        ),
      );

      return ScaffoldMessenger.of(con).showSnackBar(snackBar);
    }
  }

  void increment() => count.value++;
}
