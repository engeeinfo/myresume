import 'package:flutter/material.dart';
import 'package:myresume/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prasad Kambale | Embedded & Flutter Developer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        fontFamily: 'Helvetica Neue',
        scaffoldBackgroundColor: const Color(0xFF0F0F0F),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white70),
          titleLarge: TextStyle(fontWeight: FontWeight.bold),
        ),
        colorScheme: const ColorScheme.dark(
          primary: Colors.cyanAccent,
          secondary: Colors.amberAccent,
        ),
      ),
      home: const HomePage(),
    );
  }
}
