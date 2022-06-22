import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytunes/controller/authcontroller.dart';
import 'package:mytunes/firebase_options.dart';
import 'custom_theme.dart';
import 'package:mytunes/screens/authentication/login.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((value) => Get.put(AuthController(), permanent: true));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Login sign up demo',
      theme: CustomTheme.DarkTheme,
      home: LoginWidget(),
    );
  }
}
