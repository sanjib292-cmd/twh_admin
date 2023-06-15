import 'dart:io';
import 'dart:typed_data';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:html' as html;
import 'package:flutter/foundation.dart';

import 'package:image_picker_web/image_picker_web.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:twh_admin/app/modules/home/addCarRequest.dart';
import 'package:twh_admin/app/modules/home/providers/user_provider.dart';
import 'package:twh_admin/app/modules/home/viewAllCarsResponse.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  var images = [].obs;
  var urls = [].obs;
  var non = "".obs;

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
// late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  // flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  void showFlutterNotification(RemoteMessage message) {
    RemoteNotification? notification = message.notification;
    AndroidNotification? android = message.notification?.android;
    print('messege is ${notification!.title}');
  }

  showPushNotification() {}

  getToken() async {
    var token = await FirebaseMessaging.instance.getToken(
        vapidKey:
            'BCH4EISRG1LId2S53NU04Jmv9Hns4e2c8OA1dbFrCgnArcUkZoUx1fuQEJsG0qhNLHGbulBQriQqMxtVxUpKnfQ');

    print('token is $token');
    return token;
  }

  @override
  void onInit() {
    pagingController.addPageRequestListener((pageKey) {
      viewAllCarsPagination(
        pageKey,
      );
    });
    FirebaseMessaging.instance.onTokenRefresh.listen((fcmToken) {
      // TODO: If necessary send token to application server.

      // Note: This callback is fired at each app startup and whenever a new
      // token is generated.
    }).onError((err) {
      // Error getting token.
    });
    // getToken();
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print('Got a message whilst in the foreground!');
      print('Message data: ${message.data}');

      if (message.notification != null) {
        print(
            'Message also contained a notification: ${message.notification!.title}');
      }
    });
    currentSelectedValue.value = safteyRating[0];
    currentSelectedValueTransmission.value = transmission[0];
    currentSelectedValueFueltype.value = fuelType[0];
    resellTypeobx.value = resellType[0];
    categoryObs.value = category[0];
    super.onInit();
  }

  AddCarsRequest addCarsRequest = AddCarsRequest();
  var viewAllCarsPaginate = ViewAllCarsResponse().obs;
  final PagingController<int, Data> pagingController =
      PagingController(firstPageKey: 1);

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

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
  CarsProvider carsProvider = Get.put(CarsProvider());

  Future uploadFile(html.File image) async {
    print('upload');
    try {
      FirebaseStorage storage = FirebaseStorage.instance;
      Reference ref = storage.ref().child("${image.name}");
      UploadTask uploadTask = ref.putBlob(image);
      TaskSnapshot snapshot = await uploadTask.whenComplete(() {});
      String downloadUrl = await snapshot.ref.getDownloadURL();
      // setState(() {
      print(downloadUrl);
      urls.add(downloadUrl);
    } on Exception catch (e) {
      print(e);
    }
  }

  loadImage(html.File file) async {
    final reader = html.FileReader();
    reader.readAsArrayBuffer(file);
    final res = await reader.onLoad.first;
    print('${res.total} bytes loaded');
    return reader.result as Uint8List;
  }

  Future<File> convertHtmlFileToIoFile(html.File htmlFile) async {
    final reader = html.FileReader();
    reader.readAsArrayBuffer(htmlFile);
    await reader.onLoad.first;
    final buffer = reader.result as List<int>;
    final ioFile = File(htmlFile.name)..writeAsBytesSync(buffer);
    return ioFile;
  }

  Future pickImage() async {
    html.File? imageFile = await ImagePickerWeb.getImageAsFile();

    await uploadFile(imageFile!);
    print('ok');
    var ioFile = await loadImage(imageFile);
    // print(ioFile.path);
    images.add(ioFile);
  }

  addCar({
    carName,
    modelNam,
    year,
    distance,
    safteyRat,
    marktPrice,
    sellPrice,
    fuel,
    engineCC,
    gear,
    imgs,
    con,
  }) async {
    addCarsRequest.carTitle = carName;
    addCarsRequest.engineCC=engineCC;
    addCarsRequest.modelName = modelNam;
    addCarsRequest.manufacturingYear = year;
    addCarsRequest.distanceDriven = distance;
    addCarsRequest.safetyRating = safteyRat;
    addCarsRequest.marketPrice = marktPrice;
    addCarsRequest.price = sellPrice;
    addCarsRequest.oilVariant = fuel;
    addCarsRequest.gearTransmission = gear;
    addCarsRequest.warranty = "1 year";
    addCarsRequest.imagesUrl = imgs;
    SharedPreferences pref = await SharedPreferences.getInstance();
    var token = pref.getString('token');

    var res = await carsProvider.addCars(
        '$token',
        addCarsRequest.toJson());
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
