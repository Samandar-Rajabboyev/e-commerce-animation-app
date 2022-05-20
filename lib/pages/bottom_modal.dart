import 'package:flutter/material.dart';
import 'package:splash_animation/constants.dart';
import 'package:splash_animation/models/Product.dart';

import 'item_product_widget.dart';

class BottomModal extends StatelessWidget {
  const BottomModal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 1.5,
      padding: const EdgeInsets.symmetric(
        vertical: 28,
        horizontal: 32,
      ),
      decoration: const BoxDecoration(
        color: Color(0xffF6F7F8),
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          buildTopBar(),
          Expanded(
            flex: 2,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, i) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: buildProductItem(
                      products[i],
                      context,
                      width: 200,
                      height: 230,
                      cardWidth: 200,
                      cardHeight: 160,
                    ),
                  );
                }),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 2,
            color: const Color(0xffE9EDF0),
          ),
          Expanded(
            flex: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Popular',
                  style: TextStyle(
                    color: clr_splashBG,
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                    letterSpacing: -0.2,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Expanded(
                  child: GridView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: products.length,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, i) {
                      return buildProductItem(
                        products[i],
                        context,
                        width: 164,
                        height: 230,
                        cardWidth: 164,
                        cardHeight: 160,
                      );
                    },
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 240,
                      crossAxisSpacing: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row buildTopBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          'New Products',
          style: TextStyle(
            color: clr_splashBG,
            fontSize: 18,
            fontWeight: FontWeight.w900,
            letterSpacing: -0.2,
          ),
        ),
        Text(
          'See All',
          style: TextStyle(
            color: clr_dark2,
            fontSize: 16,
            fontWeight: FontWeight.w400,
            letterSpacing: -0.2,
          ),
        )
      ],
    );
  }
}
