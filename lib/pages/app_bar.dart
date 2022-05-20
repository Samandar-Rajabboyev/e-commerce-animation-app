import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';
import '../generated/assets.dart';

SafeArea buildAppBar(BuildContext context, {required Widget leading}) {
  return SafeArea(
    child: Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 14),
      color: clr_splashBG,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              leading,
              const SizedBox(
                width: 39,
              ),
            ],
          ),
          const Text(
            'LETRO',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w700, letterSpacing: 4),
          ),
          Row(
            children: [
              SvgPicture.asset(Assets.imagesIcSearch),
              const SizedBox(
                width: 15,
              ),
              SvgPicture.asset(Assets.imagesIcBasket),
            ],
          )
        ],
      ),
    ),
  );
}
