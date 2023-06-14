import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:twh_admin/app/modules/notificationList/notificationResponse.dart';

import '../../home/Widget/sidebar.dart';
import '../controllers/notification_list_controller.dart';

class NotificationListView extends GetView<NotificationListController> {
  const NotificationListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideBar(),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Center(
                        child: Text(
                          "All Notification",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: "Urbanist",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Center(
                          child: Text(
                        "List of all Notifications",
                        style: TextStyle(
                          color: Color(0xb2000000),
                          fontSize: 16,
                          fontFamily: "Urbanist",
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.32,
                        ),
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Container(
                        color: Color(0xfffafafa),
                        height: 41,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 15.0, right: 200),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Container(
                              //   width: 100,
                              //   child: Text(
                              //     "CUSTOMER ID",
                              //     style: TextStyle(
                              //       color: Color(0xb2000000),
                              //       fontSize: 14,
                              //       fontFamily: "Urbanist",
                              //       fontWeight: FontWeight.w700,
                              //     ),
                              //   ),
                              // ),
                              // Container(
                              //   width: 10,
                              //   child: Text(
                              //     "|",
                              //     style: TextStyle(
                              //       color: Color(0xb2000000),
                              //       fontSize: 14,
                              //       fontFamily: "Urbanist",
                              //       fontWeight: FontWeight.w700,
                              //     ),
                              //   ),
                              // ),
                              Container(
                                 width: Get.width*0.10,
                                child: Text(
                                  "Customer Name",
                                  style: TextStyle(
                                    color: Color(0xb2000000),
                                    fontSize: 14,
                                    fontFamily: "Urbanist",
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Container(
                                width: 10,
                                child: Text(
                                  "|",
                                  style: TextStyle(
                                    color: Color(0xb2000000),
                                    fontSize: 14,
                                    fontFamily: "Urbanist",
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Container(
                                 width: Get.width*0.10,
                                child: Text(
                                  "Phone number",
                                  style: TextStyle(
                                    color: Color(0xb2000000),
                                    fontSize: 14,
                                    fontFamily: "Urbanist",
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Container(
                                width: 10,
                                child: Text(
                                  "|",
                                  style: TextStyle(
                                    color: Color(0xb2000000),
                                    fontSize: 14,
                                    fontFamily: "Urbanist",
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Container(
                                  width: Get.width*0.20,
                                child: Text(
                                  "Interested Car",
                                  style: TextStyle(
                                    color: Color(0xb2000000),
                                    fontSize: 14,
                                    fontFamily: "Urbanist",
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        child: PagedListView<int, Data>(
                            pagingController: controller.pagingController,
                            // itemCount: 20,
                            builderDelegate: PagedChildBuilderDelegate<Data>(
                                itemBuilder: (context, item, index) => Padding(
                                      padding: const EdgeInsets.only(top: 15.0),
                                      child: Container(
                                        color: Color(0xfffafafa),
                                      
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 15.0, right: 200),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              // Container(
                                              //   width: 100,
                                              //   child: Text(
                                              //     "${item.sId}",
                                              //     style: TextStyle(
                                              //       color: Color(0x99000000),
                                              //       fontSize: 14,
                                              //       fontFamily: "Urbanist",
                                              //       fontWeight: FontWeight.w500,
                                              //     ),
                                              //   ),
                                              // ),
                                              // Container(
                                              //   width: 10,
                                              //   child: Text(
                                              //     "",
                                              //     style: TextStyle(
                                              //       color: Color(0xb2000000),
                                              //       fontSize: 14,
                                              //       fontFamily: "Urbanist",
                                              //       fontWeight: FontWeight.w700,
                                              //     ),
                                              //   ),
                                              // ),
                                              Container(
                                                width: Get.width*0.10,
                                                child: Text(
                                                  "${item.userId!.name}",
                                                  style: TextStyle(
                                                    color: Color(0x99000000),
                                                    fontSize: 14,
                                                    fontFamily: "Urbanist",
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: 10,
                                                child: Text(
                                                  "",
                                                  style: TextStyle(
                                                    color: Color(0xb2000000),
                                                    fontSize: 14,
                                                    fontFamily: "Urbanist",
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                 width: Get.width*0.10,
                                                child: Text(
                                                  "${item.userId!.phone}",
                                                  style: TextStyle(
                                                    color: Color(0x99000000),
                                                    fontSize: 14,
                                                    fontFamily: "Urbanist",
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: 10,
                                                child: Text(
                                                  "",
                                                  style: TextStyle(
                                                    color: Color(0xb2000000),
                                                    fontSize: 14,
                                                    fontFamily: "Urbanist",
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Container(
                                                  width: Get.width*0.20,
                                                  child: Text(
                                                    "${item.message}",
                                                    style: TextStyle(
                                                      color: Color(0x99000000),
                                                      fontSize: 15,
                                                      fontFamily: "Urbanist",
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ))))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}