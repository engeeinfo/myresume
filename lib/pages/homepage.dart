// lib/pages/homepage.dart
import 'package:flutter/material.dart';
import 'package:myresume/pages/projectsection.dart';
import 'package:myresume/pages/skillsection.dart';

import '../weidget/footersection.dart';
import '../weidget/navbutton.dart';
import 'aboutsection.dart';
import 'achivementsection.dart';
import 'certificatesection.dart';
import 'contactsection.dart';
import 'educationsection.dart';
import 'expriencesection.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // Define GlobalKeys for sections
  static final aboutKey = GlobalKey();
  static final skillsKey = GlobalKey();
  static final projectsKey = GlobalKey();
  static final experienceKey = GlobalKey();
  static final educationKey = GlobalKey();
  static final certificationKey = GlobalKey();
  static final contactKey = GlobalKey();

  // Scroll method
  static void scrollTo(GlobalKey key) {
    if (key.currentContext != null) {
      Scrollable.ensureVisible(
        key.currentContext!,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F0F0F),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Prasad Kambale',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          NavButton('About', onPressed: () => scrollTo(aboutKey)),
          NavButton('Skills', onPressed: () => scrollTo(skillsKey)),
          NavButton('Projects', onPressed: () => scrollTo(projectsKey)),
          NavButton('Experience', onPressed: () => scrollTo(experienceKey)),
          NavButton('Education', onPressed: () => scrollTo(educationKey)),
          NavButton(
            'Certifications',
            onPressed: () => scrollTo(certificationKey),
          ),
          NavButton('Contact', onPressed: () => scrollTo(contactKey)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //HeroSection(),
            AboutSection(key: aboutKey),
            SkillsSection(key: skillsKey),
            ProjectSection(key: projectsKey),
            ExperienceSection(key: experienceKey),
            EducationSection(key: educationKey),
            CertificationSection(key: certificationKey),
            AchievementSection(), // Optional key
            ContactSection(key: contactKey),
            const FooterSection(),
          ],
        ),
      ),
    );
  }
}
