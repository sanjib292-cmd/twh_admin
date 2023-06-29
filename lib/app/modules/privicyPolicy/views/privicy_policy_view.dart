import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/privicy_policy_controller.dart';
import 'package:fwfh_webview/fwfh_webview.dart';

class PrivicyPolicyView extends GetView<PrivicyPolicyController> {
  const PrivicyPolicyView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: WebView(aspectRatio: 3/2, 'assets/privicypolicy.html'

                // aspectRatio: 12,
                ),
          ),
        ),
      ),
    );
  }
}
