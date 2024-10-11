import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/controllers/home_controller.dart';
import 'package:my_portfolio/views/home_screen.dart';

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
      home: HomePage(),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: ContactForm(),
//     );
//   }
// }
//
// class ContactForm extends StatefulWidget {
//   @override
//   _ContactFormState createState() => _ContactFormState();
// }
//
// class _ContactFormState extends State<ContactForm> {
//   final _formKey = GlobalKey<FormState>();
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _messageController = TextEditingController();
//
//   @override
//   void dispose() {
//     _nameController.dispose();
//     _emailController.dispose();
//     _messageController.dispose();
//     super.dispose();
//   }
//
//   // Method to send email via SendGrid API
//   Future<void> _sendEmail() async {
//     const String emailJsUrl = 'https://api.emailjs.com/api/v1.0/email/send';
//     String serviceId = 'service_wbf5lwd';
//     String templateId = 'template_it7q2w9';
//     String userId = 'zFD1DMrvueHmRuSKl';
//
//     final emailData = {
//       'service_id': serviceId,
//       'template_id': templateId,
//       'user_id': userId,
//       'template_params': {
//         'user_name': _nameController.text,
//         'user_email': _emailController.text,
//         'user_message': _messageController.text,
//         'to_email': 'aswin02122001@gmail.com',
//       },
//     };
//
//     try {
//       final response = await http.post(
//         Uri.parse(emailJsUrl),
//         headers: {
//           'origin': 'http://localhost',
//           'Content-Type': 'application/json',
//         },
//         body: jsonEncode(emailData),
//       );
//
//       if (response.statusCode == 200) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Email sent successfully!')),
//         );
//       } else {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Failed to send email: ${response.body}')),
//         );
//       }
//       print('response ------- > ${response.body}');
//     } catch (error) {
//       print('error --------- > $error}');
//       ScaffoldMessenger.of(context)
//           .showSnackBar(SnackBar(content: Text('Error: $error')));
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Contact Form'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             children: [
//               TextFormField(
//                 controller: _nameController,
//                 decoration: InputDecoration(labelText: 'Name'),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter your name';
//                   }
//                   return null;
//                 },
//               ),
//               TextFormField(
//                 controller: _emailController,
//                 decoration: InputDecoration(labelText: 'Email'),
//                 keyboardType: TextInputType.emailAddress,
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter your email';
//                   }
//                   if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
//                     return 'Please enter a valid email';
//                   }
//                   return null;
//                 },
//               ),
//               TextFormField(
//                 controller: _messageController,
//                 decoration: InputDecoration(labelText: 'Message'),
//                 maxLines: 5,
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter your message';
//                   }
//                   return null;
//                 },
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   if (_formKey.currentState!.validate()) {
//                     _sendEmail();
//                   }
//                 },
//                 child: Text('Send'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
