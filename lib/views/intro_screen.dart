import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/views/about_screen.dart';
import 'package:my_portfolio/views/contact_screen.dart';
import 'package:my_portfolio/views/project_screen.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.red.withOpacity(0.6)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: introScreen()),
    );
  }
}

Widget verticalDivider() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: Container(
      width: 2,
      height: 16,
      color: Colors.redAccent,
    ),
  );
}

Widget introScreen() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        height: 160,
        width: 160,
        decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: AssetImage('asset/profile.png'), fit: BoxFit.fill)),
      ),
      const SizedBox(height: 20),
      const Text(
        "ASWIN",
        style: TextStyle(
            fontSize: 24, fontFamily: 'RubikWetPaint', color: Colors.yellow),
      ),
      const Text(
        "Flutter Developer",
        style: TextStyle(fontSize: 22, fontFamily: 'RubikWetPaint'),
      ),
      const SizedBox(height: 40),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          textButton(
              text: "About Me",
              onTap: () {
                Get.to(const AboutScreen(), transition: Transition.rightToLeft);
              }),
          verticalDivider(),
          textButton(
              text: "Projects",
              onTap: () {
                Get.to(const ProjectScreen(),
                    transition: Transition.rightToLeft);
              }),
          verticalDivider(),
          textButton(
              text: "Contact Me",
              onTap: () {
                Get.to(const ContactScreen(),
                    transition: Transition.rightToLeft);
              }),
        ],
      )
    ],
  );
}

Widget textButton({required String text, required Function() onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Text(
      text,
      style: const TextStyle(
          fontSize: 14, fontFamily: 'RubikWetPaint', color: Colors.white),
    ),
  );
}

Widget floatingButton() {
  return GestureDetector(
    onTap: () => Get.back(),
    child: Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("asset/profile.png"), fit: BoxFit.fill),
          shape: BoxShape.circle),
    ),
  );
}
