import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/controllers/home_controller.dart';
import 'package:my_portfolio/views/widgets/custom_textfield.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Contact',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
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
        const Text("Name"),
        const SizedBox(height: 2),
        CustomTextField(
          controller: Get.find<HomeController>().nameController,
          hintText: 'Enter Name',
        ),
        const SizedBox(height: 10),
        const Text("Email"),
        const SizedBox(height: 2),
        CustomTextField(
          controller: Get.find<HomeController>().emailController,
          hintText: "Enter email",
        ),
        const SizedBox(height: 10),
        const Text("Message"),
        const SizedBox(height: 2),
        CustomTextField(
          controller: Get.find<HomeController>().messageController,
          hintText: 'Enter Message',
          maxLines: 3,
        ),
        const SizedBox(height: 15),
        sendButton(context)
      ],
    );
  }

  Widget sendButton(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return GestureDetector(
        onTap: () => controller.loadingSate ? null : controller.sendMessage(context),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.blue,
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
                        fontWeight: FontWeight.w800,
                        color: Colors.white),
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
}
