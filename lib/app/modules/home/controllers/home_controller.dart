import 'dart:io';
import 'dart:typed_data';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:html' as html;
import 'package:flutter/foundation.dart';

import 'package:image_picker_web/image_picker_web.dart';

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
  var kmDriven = TextEditingController();
  var priceContr = TextEditingController();
  var price = ''.obs;
  var modelYear = ''.obs;
  var milage = ''.obs;
  var carname = ''.obs;
  var engineCC = ''.obs;
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
            'BPmR38QXweP-EMKEtZjPiYvK_jTmhYhaSRj7xC3IV69yzb7Ln8B9Lmy3lw1L8Kdu-MFhCt39rMkvn_47lMjsGBI');
    print('token is $token');
  }

  @override
  void onInit() {
    FirebaseMessaging.instance.onTokenRefresh.listen((fcmToken) {
      // TODO: If necessary send token to application server.

      // Note: This callback is fired at each app startup and whenever a new
      // token is generated.
    }).onError((err) {
      // Error getting token.
    });
    getToken();
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print('Got a message whilst in the foreground!');
      print('Message data: ${message.data}');

      if (message.notification != null) {
        print('Message also contained a notification: ${message.notification!.title}');
      }
    });
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

  Future uploadFile(html.File image) async {
    FirebaseStorage storage = FirebaseStorage.instance;
    Reference ref = storage.ref().child("image.jpg");
    UploadTask uploadTask = ref.putBlob(image);
    TaskSnapshot snapshot = await uploadTask.whenComplete(() {});
    String downloadUrl = await snapshot.ref.getDownloadURL();
    // setState(() {
    print(downloadUrl);
    urls.add(downloadUrl);
    // imageUrl = downloadUrl;
    // });
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
    var ioFile = await loadImage(imageFile!);
    // print(ioFile.path);
    images.add(ioFile);
  }

  void increment() => count.value++;
}
