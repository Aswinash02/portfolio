import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/controllers/home_controller.dart';
import 'package:my_portfolio/views/intro_screen.dart';
import 'package:my_portfolio/views/widgets/custom_textfield.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: floatingButton(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 20),
                child: Text(
                  "Contact",
                  style: TextStyle(fontFamily: 'RubikWetPaint', fontSize: 20),
                ),
              ),
              contactWidget(
                  text: '9942737239',
                  icon: Icons.phone,
                  onTap: () => Get.find<HomeController>().launchPhone()),
              contactWidget(
                  text: 'aswin02122001@gmail.com',
                  icon: Icons.email,
                  onTap: () => Get.find<HomeController>().launchEmail()),
              const SizedBox(height: 10),
              CustomTextField(
                controller: Get.find<HomeController>().nameController,
                hintText: 'Name',
              ),
              const SizedBox(height: 10),
              CustomTextField(
                controller: Get.find<HomeController>().emailController,
                hintText: "Email",
              ),
              const SizedBox(height: 10),
              CustomTextField(
                controller: Get.find<HomeController>().messageController,
                hintText: 'Message',
                maxLines: 3,
              ),
              const SizedBox(height: 15),
              sendButton(context)
            ],
          ),
        ),
      ),
    );
  }
}

Widget sendButton(BuildContext context) {
  return GetBuilder<HomeController>(builder: (controller) {
    return GestureDetector(
      onTap: () =>
          controller.loadingSate ? null : controller.sendMessage(context),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.red.withOpacity(0.6)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: controller.loadingSate
              ? const SizedBox(
                  height: 23,
                  width: 23,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                    strokeWidth: 2,
                  ),
                )
              : const Text(
                  "Send",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontFamily: 'RubikWetPaint'),
                ),
        ),
      ),
    );
  });
}

Widget contactWidget(
    {required String text,
    required IconData icon,
    required void Function() onTap}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 6),
    child: GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(width: 10),
          Text(text),
        ],
      ),
    ),
  );
}
