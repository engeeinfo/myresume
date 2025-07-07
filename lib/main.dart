import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prasad Kambale | Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderSection(),
            AboutSection(),
            SkillsSection(),
            ProjectSection(),
            ExperienceSection(),
            ContactSection(),
          ],
        ),
      ),
    );
  }
}

class HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Lottie.asset(
          'assets/lottie/bg_animation.json',
          fit: BoxFit.cover,
          repeat: true,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text(
              'Prasad R Kambale',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            Text(
              'Embedded & Flutter Developer',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ],
    );
  }
}

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'About Me',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Dynamic Embedded Systems Engineer experienced in real-time hardware-software co-design, RTOS, and Flutter UI integrations. Currently at Bosch.',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class SkillsSection extends StatelessWidget {
  final skills = [
    'Embedded C/C++',
    'Flutter',
    'RTOS (FreeRTOS)',
    'ARM Cortex-M Programming',
    'FPGA/Verilog',
    'IoT',
    'Linux',
    'Git',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Core Skills',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Wrap(
            spacing: 10,
            children: skills.map((skill) => Chip(label: Text(skill))).toList(),
          ),
        ],
      ),
    );
  }
}

class ProjectSection extends StatelessWidget {
  final projects = [
    'APB to SPI Interface on FPGA',
    'RandShift Fault Tolerant Memory',
    'IoT Smart Medical Kit',
    'EC Socket Monitoring Web Dashboard',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Projects',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: projects
                .map(
                  (proj) =>
                      Text('• $proj', style: const TextStyle(fontSize: 16)),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}

class ExperienceSection extends StatelessWidget {
  final experiences = [
    'Embedded Software Engineer – Bosch (2025–Present)',
    'Signal and Telecom Intern – Indian Railways (2023)',
    'Maintenance Apprentice – Tata Motors (2019–2020)',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Experience',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: experiences
                .map(
                  (exp) => Text('• $exp', style: const TextStyle(fontSize: 16)),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Contact',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text('📍 Hubli, India'),
          Text('✉️ prasadkamble1598@gmail.com'),
          Text('🔗 github.com/Engeeinfo'),
          Text('🔗 linkedin.com/in/prasad-kambale'),
        ],
      ),
    );
  }
}
