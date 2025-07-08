import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AchievementSection extends StatelessWidget {
  const AchievementSection({super.key});

  @override
  Widget build(BuildContext context) {
    final achievements = [
      {
        'title': 'Team Lead – APB to SPI FPGA Bridge',
        'icon': FontAwesomeIcons.microchip,
      },
      {
        'title': 'Chess Competitor – Diploma Category',
        'icon': FontAwesomeIcons.chessKnight,
      },
      {
        'title': 'Techfest Coordinator – Jignyasa Lab Demos',
        'icon': FontAwesomeIcons.peopleGroup,
      },
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '🏆 Achievements',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.cyanAccent,
            ),
          ),
          const SizedBox(height: 24),
          Center(
            child: Wrap(
              spacing: 20,
              runSpacing: 20,
              alignment: WrapAlignment.center,
              children: achievements.map((a) {
                return _buildAchievementCard(context, a);
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAchievementCard(
    BuildContext context,
    Map<String, dynamic> achievement,
  ) {
    final double maxWidth = MediaQuery.of(context).size.width < 320 ? 280 : 300;

    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: maxWidth),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.indigo.shade800, Colors.deepPurple.shade600],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.deepPurple.withOpacity(0.3),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                color: Colors.white24,
                shape: BoxShape.circle,
              ),
              child: Icon(
                achievement['icon'],
                size: 20,
                color: Colors.amberAccent,
              ),
            ),
            const SizedBox(width: 12),
            // Expanded ensures no overflow
            Expanded(
              child: Text(
                achievement['title'],
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
