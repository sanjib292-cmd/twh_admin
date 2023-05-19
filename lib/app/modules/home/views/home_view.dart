import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:twh_admin/app/modules/home/Widget/sidebar.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        SideBar(),
        SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 65.0, top: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Add Car",
                    style: TextStyle(
                      color: Color(0xdd000000),
                      fontSize: 21,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Add Description",
                    style: TextStyle(
                      color: Color(0xdd000000),
                      fontSize: 18,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Textfields(
                        labelTxt: 'Vehicle name',
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      dropdownField(
                          lbltxt: "Safety rating",
                          child: Obx(
                            () => DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                focusColor: Colors.transparent,
                                value: controller.currentSelectedValue.value,
                                isDense: true,
                                onChanged: (stri) {
                                  print(stri);
                                  controller.currentSelectedValue.value =
                                      stri.toString();
                                },
                                items:
                                    controller.safteyRating.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Textfields(
                        labelTxt: 'Price',
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Textfields(
                        labelTxt: 'Model year',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Textfields(
                        labelTxt: 'Engine CC',
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Textfields(
                        labelTxt: 'mileage',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      dropdownField(
                          lbltxt: 'Transmission',
                          child: Obx(
                            () => DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                focusColor: Colors.transparent,
                                value: controller
                                    .currentSelectedValueTransmission.value,
                                isDense: true,
                                onChanged: (stri) {
                                  print(stri);
                                  controller.currentSelectedValueTransmission
                                      .value = stri.toString();
                                },
                                items:
                                    controller.transmission.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          )),
                      SizedBox(
                        width: 8,
                      ),
                      dropdownField(
                          lbltxt: 'Fuel type',
                          child: Obx(
                            () => DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                focusColor: Colors.transparent,
                                value: controller
                                    .currentSelectedValueFueltype.value,
                                isDense: true,
                                onChanged: (stri) {
                                  print(stri);
                                  controller.currentSelectedValueFueltype
                                      .value = stri.toString();
                                },
                                items: controller.fuelType.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                      height: 45,
                      width: Get.width * 0.420 + 10,
                      child: Obx(
                        () => controller.non.value == "abc"
                            ? Container()
                            : FormField<String>(
                                builder: (FormFieldState<String> state) {
                                  return InputDecorator(
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                            left: 12, right: 12),
                                        floatingLabelBehavior:
                                            FloatingLabelBehavior.always,
                                        labelStyle: TextStyle(
                                          fontSize: 15,
                                          color: Colors.grey,
                                        ),
                                        labelText: 'Resell type',
                                        // labelStyle: textStyle,
                                        errorStyle: TextStyle(
                                            color: Colors.redAccent,
                                            fontSize: 16.0),
                                        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(color: Colors.blue), // Set border color to blue
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(color: Colors.blue), // Set border color to blue
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(color: Colors.blue), // Set border color to blue
        ),),
                                    isEmpty:
                                        controller.currentSelectedValue == '',
                                    child:Obx(()=> DropdownButtonHideUnderline(
                                      child: DropdownButton<String>(
                                        focusColor: Colors.transparent,
                                        value: controller
                                            .resellTypeobx.value,
                                        isDense: true,
                                        onChanged: (stri) {
                                          print(stri);
                                          controller.resellTypeobx
                                              .value = stri.toString();
                                        },
                                        items: controller.resellType
                                            .map((String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                  ));
                                },
                              ),
                      )),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 45,
                    width: Get.width * 0.420 + 10,
                    child: Obx(
                      () => controller.non.value == "abc"
                          ? Container()
                          : FormField<String>(
                              builder: (FormFieldState<String> state) {
                                return InputDecorator(
                                  decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.only(left: 12, right: 12),
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.always,
                                    labelStyle: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                    ),
                                    labelText: 'Category Type',
                                    errorStyle: TextStyle(
                                      color: Colors.redAccent,
                                      fontSize: 16.0,
                                    ),
                                     focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(color: Colors.blue), // Set border color to blue
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(color: Colors.blue), // Set border color to blue
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(color: Colors.blue), // Set border color to blue
        ),
                                  ),
                                 
                                  child:Obx(()=> DropdownButtonHideUnderline(
                                    child: DropdownButton<String>(
                                      focusColor: Colors.transparent,
                                      value:
                                          controller.categoryObs.value,
                                      isDense: true,
                                      onChanged: (stri) {
                                        print(stri);
                                        controller.categoryObs.value =
                                            stri!;
                                      },
                                      items: controller.category
                                          .map((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ));
                              },
                            ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Add Images",
                    style: TextStyle(
                      color: Color(0xdd000000),
                      fontSize: 18,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 30),
                    child: Container(
                      height: 150,
                      width: Get.width / 1.45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Color(0xff3D6DFE))),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          ImageUploadBox(
                            controller: controller,
                            index: 0,
                          ),
                          ImageUploadBox(
                            controller: controller,
                            index: 1,
                          ),
                          ImageUploadBox(
                            controller: controller,
                            index: 2,
                          ),
                          ImageUploadBox(
                            controller: controller,
                            index: 3,
                          ),
                          ImageUploadBox(
                            controller: controller,
                            index: 4,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }

  Container dropdownField({lbltxt, itm, child}) {
    return Container(
        height: 45,
        width: Get.width * 0.210,
        child: Obx(
          () => controller.non.value == "abc"
              ? Container()
              : FormField<String>(
  builder: (FormFieldState<String> state) {
    return InputDecorator(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 12, right: 12),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelStyle: TextStyle(
          fontSize: 15,
          color: Colors.grey,
        ),
        labelText: '$lbltxt',
        errorStyle: TextStyle(
          color: Colors.redAccent,
          fontSize: 16.0,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(color: Colors.blue), // Set border color to blue
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(color: Colors.blue), // Set border color to blue
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(color: Colors.blue), // Set border color to blue
        ),
      ),
      child: child,
    );
  },
),

        ));
  }
}

class ImageUploadBox extends StatelessWidget {
  ImageUploadBox({
    super.key,
    required this.controller,
    this.index,
  });

  final HomeController controller;
  var index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Obx(
          () => controller.images.isEmpty || index >= controller.images.length
              ? DottedBorder(
                  child: Container(
                      width: Get.width * 0.100,
                      height: 150,
                      child: GestureDetector(
                          onTap: () {
                            controller.pickImage();
                          },
                          child: Icon(Icons.add_a_photo))),
                  color: Colors.grey,
                  dashPattern: [8, 4],
                  strokeWidth: 2,
                )
              : Container(
                  width: Get.width * 0.100,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Color(0xffeeeaea),
                      borderRadius: BorderRadius.circular(4),
                      image: DecorationImage(
                          image: MemoryImage(
                        controller.images[index],
                      ))),
                )),
    );
  }
}

class Textfields extends StatelessWidget {
  var labelTxt;
  Textfields({super.key, this.labelTxt});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: Get.width * 0.210,
      child: TextField(
        textAlign: TextAlign.center,
        controller: TextEditingController(),
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          alignLabelWithHint: true,
          labelText: "$labelTxt",
          enabled: true,
          labelStyle: TextStyle(
            fontSize: 15,
            color: Colors.grey,
          ),
            focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(color: Colors.blue), // Set border color to blue
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(color: Colors.blue), // Set border color to blue
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(color: Colors.blue), // Set border color to blue
        ),
        ),
      ),
    );
  }
}
