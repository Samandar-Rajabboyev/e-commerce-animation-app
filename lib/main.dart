import 'package:flutter/material.dart';
import 'package:splash_animation/pages/home_page.dart';
import 'package:splash_animation/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        SplashPage.id: (context) => const SplashPage(),
        HomePage.id: (context) => const HomePage(),
      },
    );
  }
}
