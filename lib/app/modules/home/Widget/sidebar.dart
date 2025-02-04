import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:twh_admin/app/modules/notification/controllers/notification_controller.dart';

import '../../carlist/controllers/carlist_controller.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {  
    return Container(
      width: Get.width * 0.200,
      color: Color(0xff1D2C56),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(35, 130, 30, 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Dashboard",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () async{
                      await Get.delete<CarlistController>();
                      Get.toNamed('/carlist');
                    },
                    child: Row(
                      children: [
                        Container(
                          height: 22,
                          width: 22,
                          decoration: BoxDecoration(
                           ),
                           child: Icon(Icons.dashboard,color: Colors.white,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Text(
                            "Car List",
                            style: TextStyle(
                              color: Color(0xddffffff),
                              fontSize: 15,
                            ),
                          ),
                        ),
                        ModalRoute.of(context)!.settings.name == '/carlist'
                            ? Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.white,
                                ),
                              )
                            : Container()
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed('/home');
                    },
                    child: Row(
                      children: [
                        Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/addcar.png'))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Text(
                            "Add Car",
                            style: TextStyle(
                              color: Color(0xddffffff),
                              fontSize: 15,
                            ),
                          ),
                        ),
                        ModalRoute.of(context)!.settings.name == '/home'
                            ? Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.white,
                                ),
                              )
                            : Container()
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () async{
                        await Get.delete<NotificationController>();
                      Get.toNamed('/notification-list');
                    },
                    child: Row(
                      children: [
                        Container(
                          height: 21,
                          width: 21,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/bell.png'))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Text(
                            "Notification",
                            style: TextStyle(
                              color: Color(0xddffffff),
                              fontSize: 15,
                            ),
                          ),
                        ),
                        ModalRoute.of(context)!.settings.name == '/notification-list'
                            ? Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.white,
                                ),
                              )
                            : Container()
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed('/users-list');
                    },
                    child: Row(
                      children: [
                        Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/profile.png'))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Text(
                            "Users",
                            style: TextStyle(
                              color: Color(0xddffffff),
                              fontSize: 15,
                            ),
                          ),
                        ),
                        ModalRoute.of(context)!.settings.name == '/users-list'
                            ? Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.white,
                                ),
                              )
                            : Container()
                      ],
                    ),
                  ),
                ),
                 SizedBox(
                  height: 25,
                ),
                 MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () async{
                      await Get.delete<CarlistController>();
                      Get.toNamed('/privacy-policy');
                    },
                    child: Row(
                      children: [
                        Container(
                          height: 22,
                          width: 22,
                          decoration: BoxDecoration(
                           ),
                           child: Icon(Icons.info_outline,color: Colors.white,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Text(
                            "Policy",
                            style: TextStyle(
                              color: Color(0xddffffff),
                              fontSize: 15,
                            ),
                          ),
                        ),
                        ModalRoute.of(context)!.settings.name == '/privacy-policy'
                            ? Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.white,
                                ),
                              )
                            : Container()
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
              ],
            ),


             MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () async{
                        SharedPreferences pref = await SharedPreferences.getInstance();
     pref.setString('token','');
     Get.toNamed('/splash');
                    },
                    child: Row(
                      children: [
                        Container(
                          height: 24,
                          width: 24,
                         child: Icon(Icons.logout_sharp,color: Colors.white,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Text(
                            "Logout",
                            style: TextStyle(
                              color: Color(0xddffffff),
                              fontSize: 15,
                            ),
                          ),
                        ),
                        // ModalRoute.of(context)!.settings.name == '/users-list'
                        //     ? Padding(
                        //         padding: const EdgeInsets.only(left: 8.0),
                        //         child: Icon(
                        //           Icons.keyboard_arrow_right,
                        //           color: Colors.white,
                        //         ),
                        //       )
                        //     : Container()
                      ],
                    ),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
