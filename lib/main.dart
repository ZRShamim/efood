import 'package:efood/view/pages/app_screen/home_page.dart';
import 'package:efood/view/pages/app_screen/landing_page.dart';
import 'package:efood/view/pages/auth_screen/auth_screen.dart';
import 'package:efood/view/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'efood',
      debugShowCheckedModeBanner: false,
      color: mainBG,
      home: AuthScreen(),
    );
  }
}
