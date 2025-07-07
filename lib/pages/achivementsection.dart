import 'package:flutter/material.dart';

class AchievementSection extends StatelessWidget {
  const AchievementSection({super.key});

  @override
  Widget build(BuildContext context) {
    final achievements = [
      'Team Lead – APB to SPI FPGA Bridge',
      'Chess Competitor – Diploma Category',
      'Techfest Coordinator – Jignyasa Lab Demos',
    ];
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Achievements',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          ...achievements.map(
            (a) => Text(
              '• $a',
              style: const TextStyle(fontSize: 16, color: Colors.white70),
            ),
          ),
        ],
      ),
    );
  }
}
