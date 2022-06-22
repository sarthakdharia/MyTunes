import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytunes/screens/authentication/login.dart';
import '../screens/home.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();
  late Rx<User?> user;
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady() {
    super.onReady();
    user = Rx<User?>(auth.currentUser);
    user.bindStream(auth.userChanges());
    ever(user, _initialScreens);
  }

  _initialScreens(User? user) {
    if (user == null) {
      print('Login Page');
      Get.offAll(() => LoginWidget());
    } else {
      Get.offAll(() => MyHomePage());
    }
  }

  void register(String email, password) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      Get.snackbar("About User", "User Message",
          snackPosition: SnackPosition.BOTTOM,
          titleText: const Text(
            "About Creation Failed",
            style: TextStyle(color: Colors.blue),
          ),
          messageText: Text(
            e.toString(),
            style: TextStyle(color: Colors.blue),
          ));
    }
  }

  void login(String email, password) async {
    try {
      print("inside login ${email} + ${password}");
      UserCredential user = await auth.signInWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      Get.snackbar("About Login", "User Message",
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text(
            "About Login Failed",
            style: TextStyle(color: Colors.blue),
          ),
          messageText: Text(
            e.toString(),
            style: TextStyle(color: Colors.blue),
          ));
    }
  }

  void logout() async {
    await auth.signOut();
  }
}
