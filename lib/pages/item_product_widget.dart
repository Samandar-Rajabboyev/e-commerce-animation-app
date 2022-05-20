import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:splash_animation/pages/product_details_page.dart';

import '../constants.dart';
import '../models/Product.dart';

Widget buildProductItem(Product product, BuildContext context,
    {required double width, required double height, required double cardWidth, required double cardHeight}) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProductDetailsPage(product: product),
        ),
      );
    },
    child: Container(
      width: width,
      height: height,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: cardWidth,
            height: cardHeight,
            padding: const EdgeInsets.all(9),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                product.percent == null
                    ? Container(
                        width: 30,
                        height: 20,
                      )
                    : Container(
                        padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
                        decoration: BoxDecoration(color: clr_orange, borderRadius: BorderRadius.circular(90)),
                        child: Text(
                          product.percent!,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      product.image!,
                      width: 102,
                    ),
                  ),
                ),
                SvgPicture.asset('assets/images/ic_heart.svg')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 3,
              top: 9,
              left: 15,
              right: 15,
            ),
            child: Text(
              product.name!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w800,
                color: clr_dark2,
              ),
            ),
          ),
          product.discount == null
              ? Text(
                  product.price!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w900,
                    color: clr_splashBG,
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      product.discount!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w900,
                        color: clr_splashBG,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      product.price!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        decoration: TextDecoration.lineThrough,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: clr_dark2,
                      ),
                    ),
                  ],
                ),
        ],
      ),
    ),
  );
}
