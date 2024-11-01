import 'package:flutter/material.dart';
import 'package:my_portfolio/views/intro_screen.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

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
                  "About Me",
                  style: TextStyle(fontFamily: 'RubikWetPaint', fontSize: 20),
                ),
              ),
              Text(
                'Hi..',
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'RubikWetPaint',
                    fontStyle: FontStyle.italic),
              ),
              const SizedBox(height: 10),
              const Text(
                "I'm a Flutter Developer with one year of experience Specializing in Cubit and Getx State Management "
                ",I efficiently organize and control the application's state using the bloc and get library"
                ". I Leverage Cubit to handle business logic and UI updates Seamlessly, ensuring a clean and maintainable "
                "codebase. My expertise lies in creating responsive and dynamic Flutter applications with a focus on modular and "
                "scalable design patterns.",
                style: TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'RubikWetPaint'),
              ),
              const SizedBox(height: 20),
              const Text(
                'Skills',
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'RubikWetPaint',
                ),
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
                          child: Image(image: AssetImage("asset/dart_icon.png"))),
                      SizedBox(height: 6),
                      Text(
                        "Dart",
                        style:
                            TextStyle(fontSize: 16, fontFamily: 'RubikWetPaint'),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                          height: 80,
                          width: 80,
                          child:
                              Image(image: AssetImage("asset/flutter_icon.png"))),
                      SizedBox(height: 6),
                      Text(
                        "Flutter",
                        style:
                            TextStyle(fontSize: 16, fontFamily: 'RubikWetPaint'),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
