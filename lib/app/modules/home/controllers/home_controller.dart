import 'dart:io';
import 'dart:typed_data';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'dart:html' as html;

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
  var resellTypeobx="".obs;
  var categoryObs="".obs;
  var lbltxt = "Label Text".obs;
  @override
  void onInit() {
    currentSelectedValue.value = safteyRating[0];
    currentSelectedValueTransmission.value = transmission[0];
    currentSelectedValueFueltype.value = fuelType[0];
    resellTypeobx.value=resellType[0];
    categoryObs.value=category[0];
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
