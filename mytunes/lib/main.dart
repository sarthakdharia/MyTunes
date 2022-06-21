import 'package:flutter/material.dart';
import 'custom_theme.dart';
import 'package:mytunes/screens/authentication/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Login sign up demo',
      theme: CustomTheme.DarkTheme,
      home: LoginWidget(),
    );
  }
}
