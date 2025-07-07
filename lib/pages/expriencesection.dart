import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // For icons/logos

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    final experiences = [
      {
        'role': 'Embedded Software Engineer',
        'company': 'Bosch',
        'duration': '2025 – Present',
        'icon': FontAwesomeIcons.tools,
      },
      {
        'role': 'Signal & Telecom Intern',
        'company': 'Indian Railways',
        'duration': '2023',
        'icon': FontAwesomeIcons.trainSubway,
      },
      {
        'role': 'Apprentice',
        'company': 'Tata Motors',
        'duration': '2019 – 2020',
        'icon': FontAwesomeIcons.car,
      },
    ];

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Experience',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          ...experiences.map((exp) => _buildExperienceCard(exp)).toList(),
        ],
      ),
    );
  }

  Widget _buildExperienceCard(Map<String, dynamic> exp) {
    return Card(
      color: Colors.grey.shade900,
      elevation: 6,
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.blueGrey.shade700,
          child: Icon(exp['icon'], color: Colors.white, size: 20),
        ),
        title: Text(
          exp['role'],
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        subtitle: Text(
          '${exp['company']} • ${exp['duration']}',
          style: const TextStyle(fontSize: 14, color: Colors.white60),
        ),
      ),
    );
  }
}
