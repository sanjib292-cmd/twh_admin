// import 'package:flutter/material.dart';

// import 'package:get/get.dart';
// import 'package:twh_admin/app/modules/home/Widget/sidebar.dart';

// import '../controllers/notification_controller.dart';

// class NotificationView extends GetView<NotificationController> {
//   const NotificationView({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Row(
//         children: [
//           SideBar(),
//           Expanded(
//             child: Container(
//               color: Colors.white,
//               child: Padding(
//                 padding: const EdgeInsets.all(40.0),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Align(
//                       alignment: Alignment.center,
//                       child: Center(
//                         child: Text(
//                           "All Notification",
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 20,
//                             fontFamily: "Urbanist",
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(top: 8.0),
//                       child: Center(
//                           child: Text(
//                         "List of all Notifications",
//                         style: TextStyle(
//                           color: Color(0xb2000000),
//                           fontSize: 16,
//                           fontFamily: "Urbanist",
//                           fontWeight: FontWeight.w500,
//                           letterSpacing: 0.32,
//                         ),
//                       )),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(top: 15.0),
//                       child: Container(
//                         color: Color(0xfffafafa),
//                         height: 41,
//                         child: Padding(
//                           padding:
//                               const EdgeInsets.only(left: 15.0, right: 200),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Container(
//                                 width: 100,
//                                 child: Text(
//                                   "CUSTOMER ID",
//                                   style: TextStyle(
//                                     color: Color(0xb2000000),
//                                     fontSize: 14,
//                                     fontFamily: "Urbanist",
//                                     fontWeight: FontWeight.w700,
//                                   ),
//                                 ),
//                               ),
//                               Container(
//                                 width: 10,
//                                 child: Text(
//                                   "|",
//                                   style: TextStyle(
//                                     color: Color(0xb2000000),
//                                     fontSize: 14,
//                                     fontFamily: "Urbanist",
//                                     fontWeight: FontWeight.w700,
//                                   ),
//                                 ),
//                               ),
//                               Container(
//                                 width: 100,
//                                 child: Text(
//                                   "Customer Name",
//                                   style: TextStyle(
//                                     color: Color(0xb2000000),
//                                     fontSize: 14,
//                                     fontFamily: "Urbanist",
//                                     fontWeight: FontWeight.w700,
//                                   ),
//                                 ),
//                               ),
//                               Container(
//                                 width: 10,
//                                 child: Text(
//                                   "|",
//                                   style: TextStyle(
//                                     color: Color(0xb2000000),
//                                     fontSize: 14,
//                                     fontFamily: "Urbanist",
//                                     fontWeight: FontWeight.w700,
//                                   ),
//                                 ),
//                               ),
//                               Container(
//                                 width: 100,
//                                 child: Text(
//                                   "Phone number",
//                                   style: TextStyle(
//                                     color: Color(0xb2000000),
//                                     fontSize: 14,
//                                     fontFamily: "Urbanist",
//                                     fontWeight: FontWeight.w700,
//                                   ),
//                                 ),
//                               ),
//                               Container(
//                                 width: 10,
//                                 child: Text(
//                                   "|",
//                                   style: TextStyle(
//                                     color: Color(0xb2000000),
//                                     fontSize: 14,
//                                     fontFamily: "Urbanist",
//                                     fontWeight: FontWeight.w700,
//                                   ),
//                                 ),
//                               ),
//                               Container(
//                                 width: 100,
//                                 child: Text(
//                                   "Interested Car",
//                                   style: TextStyle(
//                                     color: Color(0xb2000000),
//                                     fontSize: 14,
//                                     fontFamily: "Urbanist",
//                                     fontWeight: FontWeight.w700,
//                                   ),
//                                 ),
//                               ),

                             
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       child: ListView.builder(
//                           itemCount: 10,
//                           itemBuilder: (context, ind) {
//                             return Padding(
//                               padding: const EdgeInsets.only(top: 15.0),
//                               child: Container(
//                                 color: Color(0xfffafafa),
//                                 height: 50,
//                                 child: Padding(
//                                   padding: const EdgeInsets.only(
//                                       left: 15.0, right: 200),
//                                   child: Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceBetween,
//                                     children: [
//                                       Container(
//                                         width: 100,
//                                         child: Text(
//                                           "1234",
//                                           style: TextStyle(
//                                             color: Color(0x99000000),
//                                             fontSize: 14,
//                                             fontFamily: "Urbanist",
//                                             fontWeight: FontWeight.w500,
//                                           ),
//                                         ),
//                                       ),
//                                       Container(
//                                         width: 10,
//                                         child: Text(
//                                           "",
//                                           style: TextStyle(
//                                             color: Color(0xb2000000),
//                                             fontSize: 14,
//                                             fontFamily: "Urbanist",
//                                             fontWeight: FontWeight.w700,
//                                           ),
//                                         ),
//                                       ),
//                                       Container(
//                                         width: 100,
//                                         child: Text(
//                                           "Sanjib sah",
//                                           style: TextStyle(
//                                             color: Color(0x99000000),
//                                             fontSize: 14,
//                                             fontFamily: "Urbanist",
//                                             fontWeight: FontWeight.w500,
//                                           ),
//                                         ),
//                                       ),
//                                       Container(
//                                         width: 10,
//                                         child: Text(
//                                           "",
//                                           style: TextStyle(
//                                             color: Color(0xb2000000),
//                                             fontSize: 14,
//                                             fontFamily: "Urbanist",
//                                             fontWeight: FontWeight.w700,
//                                           ),
//                                         ),
//                                       ),
//                                       Container(
//                                         width: 100,
//                                         child: Text(
//                                           "7002269853",
//                                           style: TextStyle(
//                                             color: Color(0x99000000),
//                                             fontSize: 14,
//                                             fontFamily: "Urbanist",
//                                             fontWeight: FontWeight.w500,
//                                           ),
//                                         ),
//                                       ),
//                                       Container(
//                                         width: 10,
//                                         child: Text(
//                                           "",
//                                           style: TextStyle(
//                                             color: Color(0xb2000000),
//                                             fontSize: 14,
//                                             fontFamily: "Urbanist",
//                                             fontWeight: FontWeight.w700,
//                                           ),
//                                         ),
//                                       ),
//                                       Container(
//                                         width: 100,
//                                         child: Text(
//                                           "Swift ZX I 2108",
//                                           style: TextStyle(
//                                             color: Color(0x99000000),
//                                             fontSize: 14,
//                                             fontFamily: "Urbanist",
//                                             fontWeight: FontWeight.w500,
//                                           ),
//                                         ),
//                                       )
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             );
//                           }),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
