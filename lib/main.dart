import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:splash_animation/constants.dart';
import 'package:splash_animation/pages/home_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: clr_splashBG,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Avenir'),
      home: const HomePage(),
      routes: {
        HomePage.id: (context) => const HomePage(),
        // ProductDetailsPage.id: (context) => ProductDetailsPage(),
      },
    );
  }
}
