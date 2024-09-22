import 'package:flutter/material.dart';
import 'package:layout2/screens/welcomescreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'layout project',
      theme: ThemeData.light(),
      home: const WelcomeScreen(),
      );
  }
}