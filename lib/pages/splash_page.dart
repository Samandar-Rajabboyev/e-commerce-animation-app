import 'package:flutter/material.dart';
import 'package:splash_animation/constants.dart';

import 'home_page.dart';

class SplashPage extends StatefulWidget {
  static const String id = 'splash_page';

  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  double a = 1;

  _timer() {
    Future.delayed(const Duration(milliseconds: 500), () {
      a = 0;
      setState(() {});
    });
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, HomePage.id);
    });
  }

  @override
  initState() {
    _timer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: clr_splashBG,
      body: Container(
        alignment: Alignment.center,
        child: AnimatedContainer(
          width: MediaQuery.of(context).size.width * a,
          height: MediaQuery.of(context).size.height,
          alignment: Alignment.center,
          color: clr_splashFG,
          duration: const Duration(milliseconds: 500),
        ),
      ),
    );
  }
}
