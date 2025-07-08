import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CertificationSection extends StatelessWidget {
  const CertificationSection({super.key});

  @override
  Widget build(BuildContext context) {
    final certificates = [
      {
        'title': 'C Programming – Course Completion',
        'image': 'assets/c_cert.png',
        'link': 'https://example.com/c-certificate',
      },
      {
        'title': 'C++ Programming – Course Completion',
        'image': 'assets/cpp_cert.png',
        'link': 'https://example.com/cpp-certificate',
      },
      {
        'title': 'MATLAB Basics – Completion',
        'image': 'assets/matlab_cert.png',
        'link': 'https://example.com/matlab-certificate',
      },
      {
        'title': 'Verilog RTL Design – Workshop',
        'image': 'assets/verilog_cert.png',
        'link': 'https://example.com/verilog-certificate',
      },
      {
        'title': 'Flutter Development – Course Completion',
        'image': 'assets/flutter_cert.png',
        'link': 'https://example.com/flutter-certificate',
      },
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      // same as contact
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Certifications',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 30),
          Center(
            // center the cards inside available width
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 20,
              runSpacing: 20,
              children: certificates
                  .map((cert) => _buildCertCard(cert))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCertCard(Map<String, String> cert) {
    return InkWell(
      onTap: () => _launchURL(cert['link']!),
      borderRadius: BorderRadius.circular(16),
      child: Container(
        width: 260,
        decoration: BoxDecoration(
          color: Colors.grey.shade900,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.deepPurple.shade200.withOpacity(0.25),
              blurRadius: 10,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(16),
              ),
              child: Image.asset(
                cert['image']!,
                fit: BoxFit.cover,
                height: 150,
                width: double.infinity,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
              child: Column(
                children: [
                  Text(
                    cert['title']!,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Tap to View Certificate',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.lightBlueAccent,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw 'Could not launch $url';
    }
  }
}
