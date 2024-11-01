import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/controllers/home_controller.dart';
import 'package:my_portfolio/views/home_screen.dart';
import 'package:my_portfolio/views/intro_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(HomeController());
  runApp(const MyPortfolioApp());
}


class MyPortfolioApp extends StatelessWidget {
  const MyPortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Portfolio',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const IntroScreen(),
      // home: const HomePage(),
    );
  }
}

