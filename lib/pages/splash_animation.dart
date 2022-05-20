import 'package:flutter/material.dart';

import '../constants.dart';

Widget buildSplashAnimation(
  BuildContext context, {
  required double a,
  required double b,
  required double c,
}) {
  return Scaffold(
    backgroundColor: Colors.transparent,
    body: Stack(
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
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
