import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF1A1A2E), Color(0xFF16213E)],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Profile Picture with shadow and border
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.cyanAccent, width: 3),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/edjpg.png'),
            ),
          ),

          const SizedBox(height: 30),

          // Name and Title
          const Text(
            "Hi, I'm Prasad Kambale",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w700,
              letterSpacing: 1.2,
              color: Colors.cyanAccent,
              fontFamily: 'Montserrat',
            ),
          ),

          const SizedBox(height: 12),

          const Text(
            'Embedded Systems & Flutter Developer',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white70,
              fontFamily: 'OpenSans',
              fontWeight: FontWeight.w400,
              letterSpacing: 0.5,
            ),
          ),

          const SizedBox(height: 20),

          const Text(
            'I build embedded system software and interactive cross-platform UIs with Flutter.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white60,
              height: 1.5,
              fontFamily: 'OpenSans',
            ),
          ),
        ],
      ),
    );
  }
}
