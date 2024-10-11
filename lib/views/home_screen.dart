import 'package:flutter/material.dart';
import 'package:my_portfolio/views/widgets/contact.dart';
import 'package:my_portfolio/views/widgets/projects.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: CircleAvatar(
                  radius: 60,
                  child: Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('asset/profile_img.png'),
                            fit: BoxFit.contain)),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'Hi, I am Aswin',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "I'm a Flutter Developer with one year of experience Specializing in Cubit and Getx State Management "
                ",I efficiently organize and control the application's state using the bloc and get library"
                ". I Leverage Cubit to handle business logic and UI updates Seamlessly, ensuring a clean and maintainable "
                "codebase. My expertise lies in creating responsive and dynamic Flutter applications with a focus on modular and "
                "scalable design patterns.",
                style: TextStyle(fontSize: 16),
              ),

              const SizedBox(height: 20),
              const Text(
                'Skills',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),

              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      SizedBox(
                          height: 80,
                          width: 80,
                          child:
                              Image(image: AssetImage("asset/dart_icon.png"))),
                      SizedBox(height: 6),
                      Text(
                        "Dart",
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                          height: 80,
                          width: 80,
                          child: Image(
                              image: AssetImage("asset/flutter_icon.png"))),
                      SizedBox(height: 6),
                      Text(
                        "Flutter",
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Projects(),
              const SizedBox(height: 20),
              const Contact(),
            ],
          ),
        ),
      ),
    );
  }
}
