import 'package:flutter/material.dart';
import 'package:wat_sa/Feature/welcome/page/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp Le',
      // theme: ThemeData.dark(),
      home: WelcomePage(),
    );
  }
}
