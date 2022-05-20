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
    return Stack(
      children: [
        Scaffold(
          backgroundColor: clr_splashBG,
          appBar: AppBar(
            elevation: 0,
            toolbarHeight: 0,
            brightness:
                Brightness.light, // this makes status bar text color black
            backgroundColor: clr_splashBG,
          ),
          body: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    child: Container(
                      color: clr_splashBG,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: const Color(0xffF6F7F8),
                    ),
                  ),
                ],
              ),
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
            ],
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: clr_splashFG,
              child: SvgPicture.asset('assets/images/ic_menu2.svg'),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            backgroundColor: Colors.white,
            unselectedItemColor: Colors.grey,
            selectedItemColor: clr_splashFG,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/images/ic_home.svg'),
                label: 'label',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/images/ic_notification.svg'),
                label: 'label',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/images/ic_notification.svg'),
                label: 'label',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/images/ic_heart2.svg'),
                label: 'label',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/images/ic_person.svg'),
                label: 'label',
              ),
            ],
          ),
        ),
        close ? Container() : buildSplashAnimation(context, a: a, b: b, c: c),
      ],
    );
  }
}
