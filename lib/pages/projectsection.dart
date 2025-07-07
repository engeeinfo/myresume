import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    final projects = [
      {
        'title': 'RandShift: Fault-Tolerant Phase Change Memory',
        'description':
            'Designed a power-efficient memory enhancement using AES encryption and a barrel shifter to tolerate stuck-at faults in PCM. Implemented in Verilog with simulation outputs for encryption/decryption and data shifts.',
        'icon': FontAwesomeIcons.memory,
      },
      {
        'title': 'Smart Medical Kit (IoT)',
        'description':
            'Developed a Raspberry Pi–based system to monitor pill schedules, heartbeat, and SPO2 using MAX30100 sensor. Alerts via buzzer/LED and remote monitoring via ThinkSpeak IoT platform.',
        'icon': FontAwesomeIcons.kitMedical,
      },
      {
        'title': 'APB to SPI Protocol Bridge',
        'description':
            'Built a protocol converter between AMBA APB and SPI using Verilog, including functional simulation and timing validation on Spartan FPGA.',
        'icon': FontAwesomeIcons.rightLeft,
        // updated from deprecated exchangeAlt
      },
      {
        'title': 'Environmental Monitoring Web Dashboard',
        'description':
            'Created a real-time environmental data dashboard using HTML, PHP, and MySQL to monitor parameters and alert users based on thresholds.',
        'icon': FontAwesomeIcons.chartLine,
      },
    ];

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF0F2027), Color(0xFF203A43), Color(0xFF2C5364)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '📁 Projects',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.cyanAccent,
            ),
          ),
          const SizedBox(height: 30),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            children: projects.map((project) {
              return Container(
                width: 350,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white.withAlpha(25),
                  // replaced deprecated withOpacity
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.white24),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withAlpha(76),
                      // similar to 0.3 opacity
                      blurRadius: 8,
                      offset: const Offset(2, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        FaIcon(
                          project['icon'] as IconData,
                          color: Colors.cyanAccent,
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            project['title'] as String,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text(
                      project['description'] as String,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white70,
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
