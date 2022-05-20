import 'package:flutter/material.dart';

import '../models/slider_data.dart';

class MySlider extends StatefulWidget {
  const MySlider({
    Key? key,
  }) : super(key: key);

  @override
  State<MySlider> createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  PageController pageController = PageController();

  double a = 1;
  double b = 0;

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.32,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Expanded(
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  controller: pageController,
                  onPageChanged: (i) {
                    if (i == 0) {
                      b = 0;
                      a = 1;
                    }
                    if (i == 1) {
                      a = 0;
                      b = 1;
                    }
                    _index = i;
                    setState(() {});
                  },
                  children: [
                    Stack(
                      children: [
                        AnimatedPositioned(
                            duration: const Duration(milliseconds: 300),
                            left: 0,
                            child: AnimatedScale(
                              scale: a == 1 ? 1 : 2,
                              duration: const Duration(milliseconds: 300),
                              child: Image.asset(
                                sliderData[0].image!,
                              ),
                            )),
                        Positioned(
                          right: 0,
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: 220,
                          child: AnimatedOpacity(
                            opacity: a,
                            duration: const Duration(milliseconds: 300),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 45,
                                ),
                                Text(
                                  sliderData[0].model!,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 2.5),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  sliderData[0].name!,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 26,
                                      fontWeight: FontWeight.w900,
                                      letterSpacing: 2.5),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  sliderData[0].price!,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w900,
                                      letterSpacing: 2.5),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        AnimatedPositioned(
                            duration: const Duration(milliseconds: 300),
                            right: 0,
                            child: AnimatedScale(
                              alignment: Alignment.topRight,
                              scale: b == 1 ? 0.6 : 0.9,
                              duration: const Duration(milliseconds: 300),
                              child: Image.asset(
                                sliderData[1].image!,
                              ),
                            )),
                        Positioned(
                          left: 15,
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: 220,
                          child: AnimatedOpacity(
                            opacity: b,
                            duration: const Duration(milliseconds: 300),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 45,
                                ),
                                Text(
                                  sliderData[1].model!,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 2.5),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  sliderData[1].name!,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 26,
                                      fontWeight: FontWeight.w900,
                                      letterSpacing: 2.5),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  sliderData[1].price!,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w900,
                                      letterSpacing: 2.5),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    sliderData.length,
                    (index) => AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          width: 8,
                          height: 8,
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          decoration: BoxDecoration(
                            color: index == _index ? Colors.white : Colors.white.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(50),
                          ),
                        )),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
