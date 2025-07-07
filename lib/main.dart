import 'package:flutter/material.dart';
import 'package:myresume/pages/homepage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prasad Kambale | Embedded & Flutter Developer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Helvetica Neue',
        brightness: Brightness.dark,
      ),
      home: const HomePage(),
    );
  }
}
