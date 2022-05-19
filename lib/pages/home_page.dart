import 'package:flutter/material.dart';

import '../constants.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_page';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double a = 1;
  double b = 1;
  double c = 1;

  _timer() {
    Future.delayed(const Duration(milliseconds: 700), () {
      a = 0;
      setState(() {});
    });
    Future.delayed(const Duration(milliseconds: 1200), () {
      b = 0;
      setState(() {});
    });
    Future.delayed(const Duration(milliseconds: 1300), () {
      c = 0;
      setState(() {});
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
      body: Stack(
        children: [
          const Center(
            child: Text('HomePage'),
          ),
          Stack(
            children: [
              AnimatedOpacity(
                opacity: c,
                duration: const Duration(milliseconds: 200),
                child: Container(
                  color: clr_splashFG,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: AnimatedContainer(
                      width: (MediaQuery.of(context).size.width * 0.5) * b,
                      height: MediaQuery.of(context).size.height,
                      alignment: Alignment.center,
                      color: clr_splashBG,
                      duration: const Duration(milliseconds: 300),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: AnimatedContainer(
                      width: (MediaQuery.of(context).size.width * 0.5) * b,
                      height: MediaQuery.of(context).size.height,
                      alignment: Alignment.center,
                      color: clr_splashBG,
                      duration: const Duration(milliseconds: 300),
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.center,
                child: AnimatedContainer(
                  width: MediaQuery.of(context).size.width * a,
                  height: MediaQuery.of(context).size.height,
                  alignment: Alignment.center,
                  color: clr_splashFG,
                  duration: const Duration(milliseconds: 300),
                  child: AnimatedOpacity(
                      duration: const Duration(milliseconds: 300),
                      opacity: a,
                      child: const Text(
                        'LETRO',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 4),
                      )),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
