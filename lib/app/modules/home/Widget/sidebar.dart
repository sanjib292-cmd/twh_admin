import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.200,
      color: Color(0xff272626),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(35, 130, 30, 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
            SizedBox(
              height: 25,
            ),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  Get.toNamed('/carlist');
                },
                child: Row(
                  children: [
                    Text(
                      "Car List",
                      style: TextStyle(
                        color: Color(0xddffffff),
                        fontSize: 15,
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
                    Text(
                      "Add Car",
                      style: TextStyle(
                        color: Color(0xddffffff),
                        fontSize: 15,
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
          ],
        ),
      ),
    );
  }
}
