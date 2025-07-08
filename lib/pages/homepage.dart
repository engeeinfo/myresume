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

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static final aboutKey = GlobalKey();
  static final skillsKey = GlobalKey();
  static final projectsKey = GlobalKey();
  static final experienceKey = GlobalKey();
  static final educationKey = GlobalKey();
  static final certificationKey = GlobalKey();
  static final contactKey = GlobalKey();

  static void scrollTo(GlobalKey key) {
    if (key.currentContext != null) {
      Scrollable.ensureVisible(
        key.currentContext!,
        duration: const Duration(milliseconds: 700),
        alignment: 0.2,
        curve: Curves.easeInOutCubic,
      );
    }
  }

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();

  final navItems = [
    {'label': 'About', 'key': HomePage.aboutKey},
    {'label': 'Skills', 'key': HomePage.skillsKey},
    {'label': 'Projects', 'key': HomePage.projectsKey},
    {'label': 'Experience', 'key': HomePage.experienceKey},
    {'label': 'Education', 'key': HomePage.educationKey},
    {'label': 'Certifications', 'key': HomePage.certificationKey},
    {'label': 'Contact', 'key': HomePage.contactKey},
  ];

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  Widget _buildNavButtons() {
    return Row(
      children: navItems.map((item) {
        return NavButton(
          item['label'] as String,
          onPressed: () => HomePage.scrollTo(item['key'] as GlobalKey),
        );
      }).toList(),
    );
  }

  Widget _buildDrawerList() {
    return ListView(
      children: navItems.map((item) {
        return ListTile(
          title: Text(
            item['label'] as String,
            style: const TextStyle(color: Colors.white),
          ),
          onTap: () {
            Navigator.of(context).pop(); // Close drawer
            HomePage.scrollTo(item['key'] as GlobalKey);
          },
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isWide = MediaQuery.of(context).size.width > 800;

    return Scaffold(
      backgroundColor: const Color(0xFF0F0F0F),
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.85),
        elevation: 0,
        title: const Text(
          'Prasad Kambale',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        actions: isWide
            ? [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: _buildNavButtons(),
                ),
              ]
            : null,
      ),
      drawer: isWide
          ? null
          : Drawer(
              backgroundColor: const Color(0xFF1E1E1E),
              child: _buildDrawerList(),
            ),
      body: SafeArea(
        child: SingleChildScrollView(
          controller: _scrollController,
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AboutSection(key: HomePage.aboutKey),
              SkillsSection(key: HomePage.skillsKey),
              ProjectSection(key: HomePage.projectsKey),
              ExperienceSection(key: HomePage.experienceKey),
              EducationSection(key: HomePage.educationKey),
              CertificationSection(key: HomePage.certificationKey),
              const AchievementSection(),
              ContactSection(key: HomePage.contactKey),
              const FooterSection(),
            ],
          ),
        ),
      ),
    );
  }
}
