import 'package:cbt_nursing_app/View/Home_Page/Home_Page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class AuthController {
  final auth = FirebaseAuth.instance;

  void CreateUser(String email, String password, String confirmPassword) async {
    try {
      if (password != confirmPassword) {
        Get.snackbar("Password do not match", "Please try again");
      } else {
        await auth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );
      }
      Get.to(() => const Home_Page());
    } catch (e) {
      Get.snackbar('Error', '$e');
    }
  }

  void logInUser(String email, String password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      Get.snackbar('Error', '$e');
    }
  }
}
