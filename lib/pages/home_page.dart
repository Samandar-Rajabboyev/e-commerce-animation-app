import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:splash_animation/pages/splash_animation.dart';
import 'package:splash_animation/pages/splash_animation_mixin.dart';

import '../constants.dart';
import '../generated/assets.dart';
import 'app_bar.dart';
import 'bottom_modal.dart';
import 'my_slider.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_page';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SplashAnimation {
  @override
  initState() {
    splash_timer(() => setState(() {}));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: clr_splashBG,
      body: Stack(
        children: [
          Positioned(
            child: ListView(
              children: const [
                MySlider(),
                BottomModal(),
              ],
            ),
          ),
          Positioned(
            top: 0,
            child: buildAppBar(
              context,
              leading: SvgPicture.asset(Assets.imagesIcMenu),
            ),
          ),
          close ? Container() : buildSplashAnimation(context, a: a, b: b, c: c),
        ],
      ),
    );
  }
}
