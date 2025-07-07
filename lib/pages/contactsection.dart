import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> _launchLink(String url) async {
  final Uri uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Contact',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
            '📍 Balaji Colony, Hubli-580024',
            style: TextStyle(fontSize: 16, color: Colors.white70),
          ),
          GestureDetector(
            onTap: () => _launchLink('mailto:prasadkamble1598@gmail.com'),
            child: const Text(
              '✉️ prasadkamble1598@gmail.com',
              style: TextStyle(
                fontSize: 16,
                color: Colors.lightBlueAccent,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          GestureDetector(
            onTap: () => _launchLink('https://github.com/Engeeinfo'),
            child: const Text(
              '🌐 github.com/Engeeinfo',
              style: TextStyle(
                fontSize: 16,
                color: Colors.lightBlueAccent,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          GestureDetector(
            onTap: () => _launchLink('https://linkedin.com/in/prasad-kambale'),
            child: const Text(
              '🔗 linkedin.com/in/prasad-kambale',
              style: TextStyle(
                fontSize: 16,
                color: Colors.lightBlueAccent,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
