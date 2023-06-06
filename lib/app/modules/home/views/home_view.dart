import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import 'package:twh_admin/app/modules/home/Widget/sidebar.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final NumberFormat numberFormat = NumberFormat('#,##,###');
    return Scaffold(
        body: Row(
      children: [
        SideBar(),
        SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 65.0, top: 40),
              child: Row(
                children: [
                  Column(
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                                    contr: controller.name,
                                    labelTxt: 'Vehicle Company',
                                    fn: (str) {
                                      controller.carname.value = str;
                                    },
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Textfields(
                                    contr: controller.carModelCn,
                                    labelTxt: 'Vehicle model',
                                    fn: (str) {
                                      controller.carModel.value = str;
                                    },
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Textfields(
                                    inpformat: [
        FilteringTextInputFormatter.allow(RegExp(r'^[0-9,]*$')),
 
      ],
                                    labelTxt: 'Price',
                                    fn: (str) {
                                      final numericValue =
                                          int.tryParse(str.replaceAll(',', ''));
                                      controller.price.value = str.replaceAll(',', '');

        if (numericValue != null) {
          final formattedValue = numberFormat.format(numericValue);
          if (controller.priceContr.text != formattedValue) {
            controller.priceContr.value = TextEditingValue(
              text: formattedValue,
              selection: TextSelection.collapsed(offset: formattedValue.length),
            );
          }
        } else if (str.isNotEmpty) {
          controller.priceContr.value = TextEditingValue(
            text: controller.priceContr.text,
            selection: TextSelection.collapsed(offset: controller.priceContr.text.length),
          );
        }
      },
    
                                    
                                    contr: controller.priceContr,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Textfields(
                                    labelTxt: 'Model year',
                                    fn: (str) {
                                      controller.modelYear.value = str;
                                    },
                                    contr: controller.modelYearContr,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              // Row(
                              //   children: [
                              //     Textfields(
                              //       labelTxt: 'Engine CC',
                              //       fn: (str) {
                              //         controller.engineCC.value = str;
                              //       },
                              //       contr: controller.engine,
                              //     ),
                              //     SizedBox(
                              //       width: 8,
                              //     ),
                              //     Textfields(
                              //       labelTxt: 'mileage',
                              //       fn: (str) {
                              //         controller.milage.value = str;
                              //       },
                              //       contr: controller.milageContr,
                              //     ),
                              //   ],
                              // ),
                              // SizedBox(
                              //   height: 15,
                              // ),
                              Row(
                                children: [
                                  dropdownField(
                                      lbltxt: 'Transmission',
                                      child: Obx(
                                        () => DropdownButtonHideUnderline(
                                          child: DropdownButton<String>(
                                            focusColor: Colors.transparent,
                                            value: controller
                                                .currentSelectedValueTransmission
                                                .value,
                                            isDense: true,
                                            onChanged: (stri) {
                                              print(stri);
                                              controller
                                                  .currentSelectedValueTransmission
                                                  .value = stri.toString();
                                            },
                                            items: controller.transmission
                                                .map((String value) {
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
                                                .currentSelectedValueFueltype
                                                .value,
                                            isDense: true,
                                            onChanged: (stri) {
                                              print(stri);
                                              controller
                                                  .currentSelectedValueFueltype
                                                  .value = stri.toString();
                                            },
                                            items: controller.fuelType
                                                .map((String value) {
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
                                  dropdownField(
                                      lbltxt: "Safety rating",
                                      child: Obx(
                                        () => DropdownButtonHideUnderline(
                                          child: DropdownButton<String>(
                                            focusColor: Colors.transparent,
                                            value: controller
                                                .currentSelectedValue.value,
                                            isDense: true,
                                            onChanged: (stri) {
                                              print(stri);
                                              controller.currentSelectedValue
                                                  .value = stri.toString();
                                            },
                                            items: controller.safteyRating
                                                .map((String value) {
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
                                  Textfields(
                                     inpformat: [
        FilteringTextInputFormatter.allow(RegExp(r'^[0-9,]*$')),
 
      ],
                                    labelTxt: 'Current market price',
                                    fn: (str) {
                                      controller.currentMarketPrice.value = str.replaceAll(',', '');
                                            final numericValue =
                                          int.tryParse(str.replaceAll(',', ''));
                                       if (numericValue != null) {
          final formattedValue = numberFormat.format(numericValue);
          if (controller.currentMarketPriceCn.text != formattedValue) {
            controller.currentMarketPriceCn.value = TextEditingValue(
              text: formattedValue,
              selection: TextSelection.collapsed(offset: formattedValue.length),
            );
          }
        } else if (str.isNotEmpty) {
          controller.currentMarketPriceCn.value = TextEditingValue(
            text: controller.currentMarketPriceCn.text,
            selection: TextSelection.collapsed(offset: controller.currentMarketPriceCn.text.length),
          );
        }
                                    },
                                    contr: controller.currentMarketPriceCn,
                                  ),
                                ],
                              ),
                              // SizedBox(
                              //   height: 15,
                              // ),
                              // Container(
                              //     height: 45,
                              //     width: Get.width * 0.420 + 10,
                              //     child: Obx(
                              //       () => controller.non.value == "abc"
                              //           ? Container()
                              //           : FormField<String>(
                              //               builder:
                              //                   (FormFieldState<String> state) {
                              //                 return InputDecorator(
                              //                     decoration: InputDecoration(
                              //                       contentPadding:
                              //                           EdgeInsets.only(
                              //                               left: 12,
                              //                               right: 12),
                              //                       floatingLabelBehavior:
                              //                           FloatingLabelBehavior
                              //                               .always,
                              //                       labelStyle: TextStyle(
                              //                         fontSize: 15,
                              //                         color: Colors.grey,
                              //                       ),
                              //                       labelText: 'Resell type',
                              //                       // labelStyle: textStyle,
                              //                       errorStyle: TextStyle(
                              //                           color: Colors.redAccent,
                              //                           fontSize: 16.0),
                              //                       focusedBorder:
                              //                           OutlineInputBorder(
                              //                         borderRadius:
                              //                             BorderRadius.circular(
                              //                                 5.0),
                              //                         borderSide: BorderSide(
                              //                             color: Colors
                              //                                 .blue), // Set border color to blue
                              //                       ),
                              //                       enabledBorder:
                              //                           OutlineInputBorder(
                              //                         borderRadius:
                              //                             BorderRadius.circular(
                              //                                 5.0),
                              //                         borderSide: BorderSide(
                              //                             color: Colors
                              //                                 .blue), // Set border color to blue
                              //                       ),
                              //                       border: OutlineInputBorder(
                              //                         borderRadius:
                              //                             BorderRadius.circular(
                              //                                 5.0),
                              //                         borderSide: BorderSide(
                              //                             color: Colors
                              //                                 .blue), // Set border color to blue
                              //                       ),
                              //                     ),
                              //                     isEmpty: controller
                              //                             .currentSelectedValue ==
                              //                         '',
                              //                     child: Obx(
                              //                       () =>
                              //                           DropdownButtonHideUnderline(
                              //                         child: DropdownButton<
                              //                             String>(
                              //                           focusColor:
                              //                               Colors.transparent,
                              //                           value: controller
                              //                               .resellTypeobx
                              //                               .value,
                              //                           isDense: true,
                              //                           onChanged: (stri) {
                              //                             print(stri);
                              //                             controller
                              //                                     .resellTypeobx
                              //                                     .value =
                              //                                 stri.toString();
                              //                           },
                              //                           items: controller
                              //                               .resellType
                              //                               .map(
                              //                                   (String value) {
                              //                             return DropdownMenuItem<
                              //                                 String>(
                              //                               value: value,
                              //                               child: Text(value),
                              //                             );
                              //                           }).toList(),
                              //                         ),
                              //                       ),
                              //                     ));
                              //               },
                              //             ),
                              //     )),
                              // SizedBox(
                              //   height: 15,
                              // ),
                              // Container(
                              //   height: 45,
                              //   width: Get.width * 0.420 + 10,
                              //   child: Obx(
                              //     () => controller.non.value == "abc"
                              //         ? Container()
                              //         : FormField<String>(
                              //             builder:
                              //                 (FormFieldState<String> state) {
                              //               return InputDecorator(
                              //                   decoration: InputDecoration(
                              //                     contentPadding:
                              //                         EdgeInsets.only(
                              //                             left: 12, right: 12),
                              //                     floatingLabelBehavior:
                              //                         FloatingLabelBehavior
                              //                             .always,
                              //                     labelStyle: TextStyle(
                              //                       fontSize: 15,
                              //                       color: Colors.grey,
                              //                     ),
                              //                     labelText: 'Category Type',
                              //                     errorStyle: TextStyle(
                              //                       color: Colors.redAccent,
                              //                       fontSize: 16.0,
                              //                     ),
                              //                     focusedBorder:
                              //                         OutlineInputBorder(
                              //                       borderRadius:
                              //                           BorderRadius.circular(
                              //                               5.0),
                              //                       borderSide: BorderSide(
                              //                           color: Colors
                              //                               .blue), // Set border color to blue
                              //                     ),
                              //                     enabledBorder:
                              //                         OutlineInputBorder(
                              //                       borderRadius:
                              //                           BorderRadius.circular(
                              //                               5.0),
                              //                       borderSide: BorderSide(
                              //                           color: Colors
                              //                               .blue), // Set border color to blue
                              //                     ),
                              //                     border: OutlineInputBorder(
                              //                       borderRadius:
                              //                           BorderRadius.circular(
                              //                               5.0),
                              //                       borderSide: BorderSide(
                              //                           color: Colors
                              //                               .blue), // Set border color to blue
                              //                     ),
                              //                   ),
                              //                   child: Obx(
                              //                     () =>
                              //                         DropdownButtonHideUnderline(
                              //                       child:
                              //                           DropdownButton<String>(
                              //                         focusColor:
                              //                             Colors.transparent,
                              //                         value: controller
                              //                             .categoryObs.value,
                              //                         isDense: true,
                              //                         onChanged: (stri) {
                              //                           print(stri);
                              //                           controller.categoryObs
                              //                               .value = stri!;
                              //                         },
                              //                         items: controller.category
                              //                             .map((String value) {
                              //                           return DropdownMenuItem<
                              //                               String>(
                              //                             value: value,
                              //                             child: Text(value),
                              //                           );
                              //                         }).toList(),
                              //                       ),
                              //                     ),
                              //                   ));
                              //             },
                              //           ),
                              //   ),
                              // ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                height: 45,
                                width: Get.width * 0.420 + 10,
                                child: TextField(
                                   inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r'^[0-9,]*$')),
 
      ],
                                  textAlign: TextAlign.center,
                                  controller: controller.kmDriven,
                                  onChanged: (vl) {
                                    controller.kmDri.value = vl;
                                  },
                                  decoration: InputDecoration(
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.always,
                                    alignLabelWithHint: true,
                                    labelText: "KM Driven",
                                    enabled: true,
                                    labelStyle: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                      borderSide: BorderSide(
                                          color: Colors
                                              .blue), // Set border color to blue
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                      borderSide: BorderSide(
                                          color: Colors
                                              .blue), // Set border color to blue
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                      borderSide: BorderSide(
                                          color: Colors
                                              .blue), // Set border color to blue
                                    ),
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
                                padding:
                                    const EdgeInsets.only(top: 8.0, bottom: 30),
                                child: Container(
                                  height: 300,
                                  width: Get.width * 0.420 + 10,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      border:
                                          Border.all(color: Color(0xff3D6DFE))),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 148,
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
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: 148,
                                        child: ListView(
                                          scrollDirection: Axis.horizontal,
                                          children: [
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
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 28.0),
                                child: GestureDetector(
                                  onTap: () async{
                                  
                                  
                                    await 
                                    controller.addCar(
                                        con: context,
                                        carName: controller.carname.value,
                                        modelNam: controller.carModel.value,
                                        marktPrice:
                                            controller.currentMarketPrice.value,
                                        sellPrice: controller.price.value,
                                        year: controller.modelYear.value,
                                        distance: controller.kmDri.value,
                                        safteyRat: controller
                                            .currentSelectedValue.value,
                                        fuel: controller
                                            .currentSelectedValueFueltype.value,
                                        gear: controller
                                            .currentSelectedValueTransmission
                                            .value,
                                        imgs: controller.urls.value);
                                          controller.images.value=[];
                                  controller.urls.value=[];
                                        Get.toNamed('/home');
                                  },
                                  child: Container(
                                    // width: 156.72,
                                    // height: 36,
                                    color: Color(0xff3d6dfe),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 60,
                                      vertical: 13,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Save",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontFamily: "Urbanist",
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40.0, top: 20),
                            child: Container(
                              height: 600,
                              width: Get.width / 3.9,
                              decoration: BoxDecoration(
                                  color: Color(0xffEEEAEA),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 25.0, left: 22),
                                        child: Container(
                                          width: Get.width / 4.2,
                                          child: Obx(() => Text(
                                                "${controller.carname.value == "" ? "Add name" : controller.carname.value}",
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  color: Color(0xffa3afbc),
                                                  fontSize: 24,
                                                ),
                                              )),
                                        ),
                                      ),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: 25.0, left: 10, right: 10),
                                          child: Obx(
                                            () => Container(
                                              height: 168,
                                              width: Get.width,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(7),
                                                  image: controller.urls.isEmpty
                                                      ? DecorationImage(
                                                          image: AssetImage(
                                                              'assets/suv.png'),
                                                          fit: BoxFit.contain)
                                                      : DecorationImage(
                                                          image: MemoryImage(
                                                            controller
                                                                .images[0],
                                                          ),
                                                          fit: BoxFit.contain)),
                                            ),
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 18.0, left: 22, right: 70),
                                        child: Container(
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Price",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 19,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                      SizedBox(
                                                        height: 6,
                                                      ),
                                                      Obx(() => Text(
                                                            "${controller.price.value}",
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xfff59e0b),
                                                                fontSize: 19,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600),
                                                          )),
                                                    ],
                                                  ),
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "KM",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 19,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                      SizedBox(
                                                        height: 6,
                                                      ),
                                                      Obx(() => Text(
                                                            "${controller.kmDri.value}",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 19,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600),
                                                          )),
                                                    ],
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 4.0, right: 4),
                                    child: Container(
                                      height: Get.height / 2.5,
                                      width: Get.width,
                                      decoration: BoxDecoration(
                                          color: Color(0xff0065F2),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(25),
                                            topRight: Radius.circular(25),
                                            bottomLeft: Radius.circular(10),
                                            bottomRight: Radius.circular(10),
                                          )),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(20, 22, 20, 10),
                                        child: Container(
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Obx(() => infoBox(
                                                        img:
                                                            'assets/engine.svg',
                                                        info:
                                                            'Engine : ${controller.engineCC.value} cc',
                                                      )),
                                                  Obx(() => infoBox(
                                                        img: 'assets/fuel.svg',
                                                        info:
                                                            '${controller.currentSelectedValueTransmission.value} transmission',
                                                      ))
                                                ],
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Obx(() => infoBox(
                                                        img:
                                                            'assets/milage.svg',
                                                        info:
                                                            'Mileage : ${controller.milage.value} kmpl',
                                                      )),
                                                  Obx(() => infoBox(
                                                        img: 'assets/fuel.svg',
                                                        info:
                                                            'Fuel type : ${controller.currentSelectedValueFueltype.value}',
                                                      ))
                                                ],
                                              ),
                                              SizedBox(
                                                height: 28,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Obx(() => infoBox(
                                                        img: 'assets/star.svg',
                                                        info:
                                                            'Safety : ${controller.currentSelectedValue.value} Star (Global NCAP)',
                                                      )),
                                                  Obx(() => infoBox(
                                                        img: 'assets/star.svg',
                                                        info:
                                                            'Resell type : ${controller.resellTypeobx.value}',
                                                      )),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 32,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Obx(() => Text(
                                                        "${controller.price.value}",
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xfff9ff00),
                                                          fontSize: 22,
                                                          fontFamily: "Gotham",
                                                          fontWeight:
                                                              FontWeight.w700,
                                                        ),
                                                      )),
                                                  Row(
                                                    // mainAxisSize: MainAxisSize.min,
                                                    // mainAxisAlignment: MainAxisAlignment.center,
                                                    // crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        // width: 153.54,
                                                        // height: 48.85,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      1000),
                                                          border: Border.all(
                                                            color: Color(
                                                                0xfff9ff00),
                                                            width: 2,
                                                          ),
                                                        ),
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                top: 10,
                                                                bottom: 10,
                                                                right: 12,
                                                                left: 12),
                                                        child: Center(
                                                          child: Text(
                                                            "CONTACT US",
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 16,
                                                              fontFamily:
                                                                  "Gotham",
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
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
                          borderSide: BorderSide(
                              color: Colors.blue), // Set border color to blue
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: Colors.blue), // Set border color to blue
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: Colors.blue), // Set border color to blue
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
  var labelTxt, contr, fn, inpformat;
  Textfields({super.key, this.labelTxt, this.contr, this.fn, this.inpformat});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: Get.width * 0.210,
      child: TextField(
        inputFormatters: inpformat,
        textAlign: TextAlign.center,
        controller: contr,
        onChanged: fn,
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
            borderSide:
                BorderSide(color: Colors.blue), // Set border color to blue
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide:
                BorderSide(color: Colors.blue), // Set border color to blue
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide:
                BorderSide(color: Colors.blue), // Set border color to blue
          ),
        ),
      ),
    );
  }
}

class infoBox extends StatelessWidget {
  var img, info;
  infoBox({required this.img, required this.info});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(
          '$img',
          fit: BoxFit.contain,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 7.0),
          child: SizedBox(
            width: 109.11,
            child: Text(
              "$info",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
        )
      ],
    );
  }
}
