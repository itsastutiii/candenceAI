import 'package:flutter/material.dart';
import 'intro.dart';

void main() {
  runApp(CandenceAIApp());
}

class CandenceAIApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CandenceAI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WelcomePage(), // Connects to your WelcomePage
    );
  }
}
