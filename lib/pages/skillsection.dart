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
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      color: const Color(0xFF0F0F0F),
      child: Column(
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
          LayoutBuilder(
            builder: (context, constraints) {
              final isWide = constraints.maxWidth > 700;
              final spacing = 20.0;
              final columns = isWide ? 2 : 1;
              final totalSpacing = (columns - 1) * spacing;
              final boxWidth = (constraints.maxWidth - totalSpacing) / columns;

              return Wrap(
                spacing: spacing,
                runSpacing: spacing,
                children: skillGroups.map((group) {
                  return SizedBox(
                    width: boxWidth,
                    height: 260, // fixed height ensures layout is bounded
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade900,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.cyanAccent.withOpacity(0.1),
                            blurRadius: 6,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              FaIcon(
                                group['icon'] as IconData,
                                color: Colors.cyanAccent,
                                size: 20,
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Text(
                                  group['title'] as String,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          // Scrollable area with bounded height
                          SizedBox(
                            height: 170,
                            // avoid overflow by bounding scroll area
                            child: ScrollConfiguration(
                              behavior: const ScrollBehavior().copyWith(
                                overscroll: false,
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: List.generate(
                                    (group['skills'] as List<String>).length,
                                    (i) => Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 2,
                                      ),
                                      child: Text(
                                        '${i + 1}. ${(group['skills'] as List<String>)[i]}',
                                        style: const TextStyle(
                                          fontSize: 14,
                                          color: Colors.white70,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              );
            },
          ),
        ],
      ),
    );
  }
}
