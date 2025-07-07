import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final skillGroups = [
      {
        'title': 'Languages',
        'icon': FontAwesomeIcons.code,
        'skills': [
          'C',
          'C++',
          'Dart',
          'Python',
          'Flutter',
          'Verilog',
          'System Verilog',
          'Assembly',
        ],
      },
      {
        'title': 'Embedded & RTOS',
        'icon': FontAwesomeIcons.microchip,
        'skills': [
          'Embedded C/C++',
          'ARM Cortex-M (CMSIS)',
          'FreeRTOS',
          'Bare-Metal Drivers',
          'Interrupt Handling',
          'STM32F405',
          'Keil uVision',
        ],
      },
      {
        'title': 'Communication Protocols',
        'icon': FontAwesomeIcons.networkWired,
        'skills': ['UART', 'SPI', 'I2C', 'CAN', 'USB', 'AXI', 'APB'],
      },
      {
        'title': 'FPGA & HDL',
        'icon': FontAwesomeIcons.memory,
        'skills': [
          'Verilog/System Verilog',
          'RTL Design & Verification',
          'Xilinx Vivado/ISE',
          'ModelSim',
          'APB to SPI Bridge',
          'Spartan FPGA',
        ],
      },
      {
        'title': 'IoT & Platforms',
        'icon': FontAwesomeIcons.satellite,
        'skills': [
          'Raspberry Pi',
          'Arduino',
          'Sensor Interfaces',
          'Real-Time Data Acquisition',
          'Smart Medical Kit',
        ],
      },
      {
        'title': 'Debugging Tools',
        'icon': FontAwesomeIcons.tools,
        'skills': ['JTAG', 'Logic Analyzer', 'Oscilloscope', 'Serial Console'],
      },
      {
        'title': 'Tools & Simulation',
        'icon': FontAwesomeIcons.toolbox,
        'skills': ['MATLAB', 'Cadence Virtuoso', 'Proteus'],
      },
      {
        'title': 'Version Control & OS',
        'icon': FontAwesomeIcons.gitAlt,
        'skills': ['Git', 'GitHub', 'Agile', 'Linux (Ubuntu, Red Hat)'],
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
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isWide = constraints.maxWidth > 700;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '🧠 Technical Skills & Core Competencies',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyanAccent,
                ),
              ),
              const SizedBox(height: 30),
              Column(
                children: List.generate(skillGroups.length, (index) {
                  final group = skillGroups[index];

                  return TweenAnimationBuilder(
                    tween: Tween<double>(begin: 0, end: 1),
                    duration: Duration(milliseconds: 500 + index * 150),
                    builder: (context, value, child) => Opacity(
                      opacity: value,
                      child: Transform.translate(
                        offset: Offset(0, (1 - value) * 30),
                        child: child,
                      ),
                    ),
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 32),
                      width: isWide
                          ? constraints.maxWidth / 2 - 40
                          : constraints.maxWidth,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              FaIcon(
                                group['icon'] as IconData,
                                color: Colors.cyanAccent,
                              ),
                              const SizedBox(width: 10),
                              Text(
                                group['title'] as String,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: List.generate(
                              (group['skills'] as List<String>).length,
                              (i) {
                                final skill =
                                    (group['skills'] as List<String>)[i];
                                return Text(
                                  '${i + 1}. $skill',
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white70,
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ],
          );
        },
      ),
    );
  }
}
