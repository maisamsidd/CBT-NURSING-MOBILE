import 'package:cbt_nursing_app/View/Home_Page/Home_Page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SplashController {
  final auth = FirebaseAuth.instance;

  void SplashScreenController(BuildContext context) {
    final user = auth.currentUser;
    if (user != null) {
      Get.to(() => Home_Page());
    } else {
      Get.to(() => Home_Page());
    }
  }
}
