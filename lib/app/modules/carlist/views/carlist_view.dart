import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:intl/intl.dart';
import 'package:twh_admin/app/modules/home/Widget/sidebar.dart';
import 'package:twh_admin/app/modules/home/controllers/home_controller.dart';

import '../../home/viewAllCarsResponse.dart';
import '../controllers/carlist_controller.dart';

class CarlistView extends GetView<CarlistController> {
  const CarlistView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    print(Get.width);
    return Scaffold(
      backgroundColor: Color(0xfff4f4f4),
      body: Row(
        children: [
          SideBar(),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 65.0, top: 40, right: 65),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "All Cars",
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
                  Obx(() => controller.non.value == ""
                      ? Expanded(
                          child: PagedGridView<int, Data>(
                              pagingController: controller.pagingController,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: Get.width < 1200 ? 3 : 4,
                                crossAxisSpacing: 10.0,
                                mainAxisSpacing: 10.0,
                                childAspectRatio:
                                    0.7, // Adjust the aspect ratio as needed
                              ),
                              // itemCount: 20,
                              builderDelegate: PagedChildBuilderDelegate<Data>(
                                  itemBuilder: (context, item, index) =>
                                      Container(
                                        width: Get.width * 0.150,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.white,
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(4.0),
                                                child: Stack(
                                                  children: [
                                                    Container(
                                                      width: Get.width * 0.168,
                                                      height: 97,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xfff4f4f4),
                                                      ),
                                                      child: CachedNetworkImage(
                                                          fit: BoxFit.cover,
                                                          imageUrl: item
                                                                  .imagesUrl!
                                                                  .isEmpty
                                                              ? ''
                                                              : item.imagesUrl![
                                                                  0],
                                                          placeholder: (context,
                                                                  url) =>
                                                              Container(
                                                                  height: 30,
                                                                  width: 30,
                                                                  child:
                                                                      CupertinoActivityIndicator(
                                                                    color: Colors
                                                                        .purple,
                                                                  )),
                                                          errorWidget: (context,
                                                                  url, error) =>
                                                              Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                              .all(
                                                                          10.0),
                                                                  child: Image
                                                                      .asset(
                                                                          'assets/suv.png')
                                                                  // SvgPicture.asset((Images.pdfIcon))
                                                                  )),
                                                    ),
                                                    Positioned(
                                                      top: 4,
                                                      left: 4,
                                                      child: Container(
                                                        decoration: BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        30)),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  vertical: 4.0,
                                                                  horizontal:
                                                                      8),
                                                          child: Text(
                                                            '${item.carTitle} ${item.modelName}',
                                                            maxLines: 2,
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                color: Colors.white,
                                              ),
                                              padding: EdgeInsets.all(6),
                                              child: Column(
                                                children: [
                                                  Wrap(
                                                    children: [
                                                       Chip(
                                                          chiptitle:
                                                              "${item.carTitle}"),
                                                              Chip(
                                                          chiptitle:
                                                              "${item.modelName}"),
                                                      Chip(
                                                          chiptitle:
                                                              "998 to 1197 cc"),
                                                      Chip(
                                                          chiptitle:
                                                              "${item.oilVariant}"),
                                                      Chip(
                                                          chiptitle:
                                                              "${item.manufacturingYear}"),
                                                      Chip(
                                                          chiptitle:
                                                              "${item.gearTransmission} Transmission"),
                                                      Chip(
                                                          chiptitle:
                                                              "3 Star (Global NCAP)"),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Center(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10.0, bottom: 10),
                                                child: GestureDetector(
                                                  onTap: () {
                                                    Get.toNamed('/car-details');
                                                  },
                                                  child: Container(
                                                    width: Get.width * 0.148,
                                                    height: 38,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              28),
                                                      border: Border.all(
                                                        color: Colors.black,
                                                        width: 1,
                                                      ),

                                                      // color: Color(0xff0065f1),
                                                    ),
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                      horizontal: 0,
                                                      vertical: 0,
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          "₹ ${NumberFormat('#,##,###').format(int.parse(item.price.toString()))}",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 14,
                                                            fontFamily:
                                                                "Gotham",
                                                            fontWeight:
                                                                FontWeight.w700,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ))),
                        )
                      : Container()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Chip extends StatelessWidget {
  final String chiptitle;

  const Chip({required this.chiptitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 4.0, bottom: 4),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          color: Color(0x3de14a4a),
        ),
        padding: const EdgeInsets.all(6),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              chiptitle,
              style: TextStyle(
                color: Color(0xb2000000),
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
