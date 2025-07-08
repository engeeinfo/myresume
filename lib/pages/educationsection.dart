import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    final educationList = [
      {
        'level': 'Bachelor of Engineering (B.E.)',
        'institution': 'KLE Technological University, Hubli',
        'score': 'CGPA: 8.5',
        'icon': FontAwesomeIcons.graduationCap,
      },
      {
        'level': 'Diploma in Electronics',
        'institution': 'Govt Polytechnic, Hubli',
        'score': 'Percentage: 80%',
        'icon': FontAwesomeIcons.solidFileLines,
      },
      {
        'level': 'SSLC (10th Grade)',
        'institution': 'Govt High School, Hubli',
        'score': 'Percentage: 82.72%',
        'icon': FontAwesomeIcons.school,
      },
    ];

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Education',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          ...educationList.map((edu) => _buildEducationCard(edu)).toList(),
        ],
      ),
    );
  }

  Widget _buildEducationCard(Map<String, dynamic> edu) {
    return Card(
      color: Colors.grey.shade900,
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.deepPurple.shade400,
          child: Icon(edu['icon'], color: Colors.white),
        ),
        title: Text(
          edu['level'],
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              edu['institution'],
              style: const TextStyle(color: Colors.white70),
            ),
            Text(
              edu['score'],
              style: const TextStyle(color: Colors.lightBlueAccent),
            ),
          ],
        ),
      ),
    );
  }
}
