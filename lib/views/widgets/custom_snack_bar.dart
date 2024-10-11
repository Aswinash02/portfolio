import 'package:flutter/material.dart';
import 'package:get/get.dart';


void showCustomSnackBar(String? message,
    {bool isError = true, bool getXSnackBar = true}) {
  if (message != null && message.isNotEmpty) {
    if (getXSnackBar) {
      Get.showSnackbar(GetSnackBar(
        backgroundColor: isError ? Colors.red : Colors.greenAccent,
        message: message,
        maxWidth: 500,
        duration: const Duration(seconds: 3),
        snackStyle: SnackStyle.FLOATING,
        snackPosition: SnackPosition.TOP,
        margin: const EdgeInsets.only(
            left: 10.0,
            right: 10.0,
            bottom: 100),
        borderRadius: 6,
        isDismissible: true,
        dismissDirection: DismissDirection.horizontal,
      ));
    } else {
      ScaffoldMessenger.of(Get.context!).showSnackBar(SnackBar(
        dismissDirection: DismissDirection.horizontal,
        margin: const EdgeInsets.only(
          right:10.0,
          top: 10.0,
          bottom: 10.0,
          left: 10.0,
        ),
        duration: const Duration(seconds: 3),
        backgroundColor: isError ? Colors.red : Colors.greenAccent,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0)),
        content: Text(message, style: const TextStyle(color: Colors.white)),
      ));
    }
  }
}
