import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> _launchLink(String url) async {
  final Uri uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  } else {
    throw 'Could not launch $url';
  }
}

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    final contactItems = [
      {
        'icon': FontAwesomeIcons.locationDot,
        'label': 'Balaji Colony, Hubli-580024',
        'link': null,
      },
      {
        'icon': FontAwesomeIcons.envelope,
        'label': 'prasadkamble1598@gmail.com',
        'link': 'mailto:prasadkamble1598@gmail.com',
      },
      {
        'icon': FontAwesomeIcons.github,
        'label': 'github.com/Engeeinfo',
        'link': 'https://github.com/Engeeinfo',
      },
      {
        'icon': FontAwesomeIcons.linkedin,
        'label': 'linkedin.com/in/prasad-kambale',
        'link': 'https://linkedin.com/in/prasad-kambale',
      },
    ];

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Contact',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 24),
          ...contactItems.map((item) => _buildContactItem(item)).toList(),
        ],
      ),
    );
  }

  Widget _buildContactItem(Map<String, dynamic> item) {
    final isLink = item['link'] != null;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: GestureDetector(
        onTap: isLink ? () => _launchLink(item['link']) : null,
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.deepPurple,
              ),
              child: Icon(item['icon'], color: Colors.white, size: 18),
            ),
            const SizedBox(width: 16),
            Flexible(
              child: Text(
                item['label'],
                style: TextStyle(
                  fontSize: 16,
                  color: isLink ? Colors.lightBlueAccent : Colors.white70,
                  decoration: isLink
                      ? TextDecoration.underline
                      : TextDecoration.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
