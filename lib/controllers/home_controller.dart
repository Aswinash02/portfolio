import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/views/widgets/custom_snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController messageController = TextEditingController();
  bool loadingSate = false;

  void launchPhone() async {
    final Uri phoneUri = Uri(scheme: 'tel', path: "9942737239");
    if (await canLaunchUrl(phoneUri)) {
      await launchUrl(phoneUri);
    } else {
      throw 'Could not launch $phoneUri';
    }
  }

  void launchEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: "aswin02122001@gmail.com",
    );
    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    } else {
      throw 'Could not launch $emailUri';
    }
  }

  Future<void> sendMessage(BuildContext context) async {
    FocusScope.of(context).unfocus();
    if (nameController.text.isEmpty) {
      showCustomSnackBar("Please Enter Your Name");
    } else if (emailController.text.isEmpty) {
      showCustomSnackBar("Please Enter Your Email");
    } else if (emailController.text.isEmpty) {
      showCustomSnackBar("Please Enter Your Email");
    } else if (messageController.text.isEmpty) {
      showCustomSnackBar("Please Enter Message");
    } else {
      const String emailJsUrl = 'https://api.emailjs.com/api/v1.0/email/send';
      String serviceId = 'service_wbf5lwd';
      String templateId = 'template_it7q2w9';
      String userId = 'zFD1DMrvueHmRuSKl';

      final emailData = {
        'service_id': serviceId,
        'template_id': templateId,
        'user_id': userId,
        'template_params': {
          'user_name': nameController.text,
          'user_email': emailController.text,
          'user_message': messageController.text,
          'to_email': 'aswin02122001@gmail.com',
        },
      };

      try {
        loadingSate = true;
        update();
        final response = await http.post(
          Uri.parse(emailJsUrl),
          headers: {
            'origin': 'http://localhost',
            'Content-Type': 'application/json',
          },
          body: jsonEncode(emailData),
        );

        if (response.statusCode == 200) {
          nameController.clear();
          emailController.clear();
          messageController.clear();
          showCustomSnackBar("Email sent successfully!", isError: false);
        } else {
          showCustomSnackBar("Failed to send email: ${response.body}");
        }
      } catch (error) {
        showCustomSnackBar("Error: $error");
      }
    }
    loadingSate = false;
    update();
  }
}
