import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final String img;

  const ProjectCard(
      {super.key,
      required this.title,
      required this.description,
      required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontFamily: 'RubikWetPaint'),
          ),
          const SizedBox(height: 5),
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(img), fit: BoxFit.contain)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Text(
              description,
              style: TextStyle(fontFamily: 'RubikWetPaint'),
            ),
          ),
        ],
      ),
    );
  }
}
