import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      color: Colors.black,
      child: const Center(
        child: Text(
          '© 2025 Prasad Kambale | All rights reserved',
          style: TextStyle(color: Colors.white54),
        ),
      ),
    );
  }
}
