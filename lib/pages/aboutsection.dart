import 'package:flutter/material.dart';

import '../data/herosection.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final services = [
      {
        'title': 'Embedded System Development',
        'desc': 'Expert in STM32, FreeRTOS, and bare-metal driver development.',
        'icon': Icons.memory,
      },
      {
        'title': 'IoT Product Engineering',
        'desc':
            'Built health monitoring and real-time dashboards using sensors and Raspberry Pi.',
        'icon': Icons.sensors,
      },
      {
        'title': 'FPGA & RTL Design',
        'desc':
            'Designed protocol bridges and fault-tolerant memory in Verilog.',
        'icon': Icons.developer_board,
      },
      {
        'title': 'Flutter Web & App UI',
        'desc': 'Crafted adaptive UIs for dashboards and resumes in Flutter.',
        'icon': Icons.flutter_dash,
      },
    ];

    return Container(
      width: double.infinity,
      color: Colors.black,
      child: Column(
        children: [
          const HeroSection(),

          const SizedBox(height: 40),
          const Text(
            'What I Offer',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 30),

          Wrap(
            spacing: 24,
            runSpacing: 24,
            alignment: WrapAlignment.center,
            children: services.map((service) {
              return MouseRegion(
                cursor: SystemMouseCursors.click,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  width: 300,
                  height: 200,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.white24),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withAlpha(51), // ~0.2 opacity
                        blurRadius: 10,
                        offset: const Offset(4, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        service['icon'] as IconData,
                        size: 32,
                        color: Colors.cyanAccent,
                      ),
                      const SizedBox(height: 12),
                      Text(
                        service['title'] as String,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Expanded(
                        child: Text(
                          service['desc'] as String,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.white70,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),

          const SizedBox(height: 60),
        ],
      ),
    );
  }
}
