import 'package:flutter/cupertino.dart';
import 'package:my_portfolio/views/widgets/project_card.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Projects',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        ProjectCard(
          title: 'GHL Sale CRM',
          description:
              'Sales CRM mobile application to efficiently manage and track sales'
              ' leads, monitor opportunities, and maintain customer relationships. '
              'Effectively leveraged CRM tools to streamline sales processes, '
              'schedule follow-up tasks, and improve team collaboration. Demonstrated'
              ' strong organizational skills by updating client information, generating '
              'sales reports, and ensuring timely follow-ups, contributing to increased '
              'sales performance and customer satisfaction.',
          img: "asset/ghl_icon.png",
        ),
        ProjectCard(
          title: 'The Wheels',
          description:
              'THE Wheels is a bike rental application that facilitates convenient'
              ' and accessible cycling for users. It allows individuals to easily browse and '
              'rent a variety of bikes, including mountain bikes and city cruisers, at '
              'competitive prices. The app features real-time availability, secure payment'
              ' options, and flexible rental durations, making it simple for users to plan their '
              'rides. With a focus on community engagement, THE Wheels encourages users to explore '
              'local trails and enjoy the freedom of cycling.',
          img: "asset/the_wheels_icon.png",
        ),
        ProjectCard(
          title: 'Animal Yard',
          description:
              'Animal Yard is an application designed to facilitate the buying and '
              'selling of animals and animal food. The platform connects pet owners, breeders, '
              'and suppliers, creating a seamless marketplace for various animal-related products. '
              'Users can easily list their animals for sale, browse available options, and purchase '
              'essential food supplies. With a user-friendly interface, secure transactions, and a '
              'focus on community engagement, Animal Yard aims to enhance the experience of pet '
              'ownership and promote responsible animal care.',
          img: "asset/animal_yard_icon.png",
        ),
      ],
    );
  }
}
