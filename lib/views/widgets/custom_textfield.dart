import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final int? maxLines;

  const CustomTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      this.maxLines});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorHeight: 20,
      maxLines: maxLines ?? 1,
      cursorColor: Colors.grey,
      decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(color: Colors.grey, width: 1.2),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(color: Colors.grey, width: 1.2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(color: Colors.grey, width: 1.2),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(color: Colors.grey, width: 1.2),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(color: Colors.grey, width: 1.2),
          )),
    );
  }
}
