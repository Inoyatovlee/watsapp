import 'package:flutter/material.dart';
import 'package:wat_sa/Feature/welcome/page/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp Le',
      // theme: lightTheme(),
      // darkTheme: darkTheme(),
      themeMode: ThemeMode.system,
      home: WelcomePage(),
    );
  }
}
