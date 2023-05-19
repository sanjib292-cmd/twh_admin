import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:twh_admin/app/modules/home/Widget/sidebar.dart';

import '../controllers/carlist_controller.dart';

class CarlistView extends GetView<CarlistController> {
  const CarlistView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  Obx(()=>controller.non.value==""?
                  Expanded(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount:Get.width<1200?3: 4,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                        childAspectRatio: 0.7, // Adjust the aspect ratio as needed
                      ),
                      itemCount: 20,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          width: Get.width * 0.150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                          ),
                          child: Column(
                            mainAxisAlignment:  MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    width: Get.width * 0.168,
                                    height: 97,
                                    decoration: BoxDecoration(
                                      color: Color(0xfff4f4f4),
                                      image: DecorationImage(
                                        image: AssetImage('assets/suv.png'),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                ),
                                padding: EdgeInsets.all(6),
                                child: Column(
                                  children: [
                                    Wrap(
                                      children: [
                                        Chip(chiptitle: "998 to 1197 cc"),
                                        Chip(chiptitle: "Petrol"),
                                        Chip(chiptitle: "19.6 - 20.3 kmpl"),
                                        Chip(chiptitle: "Automatic Transmission"),
                                        Chip(chiptitle: "3 Star (Global NCAP)"),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                               Center(
                                 child: Padding(
                                        padding: const EdgeInsets.only(top: 10.0,bottom: 10),
                                        child: GestureDetector(
                                          onTap: (){Get.toNamed('/car-details');},
                                          child: Container(
                                             width: Get.width * 0.148,
                                            height: 38,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(28),
                                              border: Border.all(
                                                color: Colors.black,
                                                width: 1,
                                              ),
                                              
                                              // color: Color(0xff0065f1),
                                            ),
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 0,
                                              vertical: 0,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "₹ 4,27000",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontFamily: "Gotham",
                                                    fontWeight: FontWeight.w700,
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
                        );
                      },
                    ),
                  ):Container()),
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