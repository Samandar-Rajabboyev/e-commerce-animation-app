import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:splash_animation/constants.dart';
import 'package:splash_animation/pages/spacer.dart';

import '../models/Product.dart';
import 'app_bar.dart';

class ProductDetailsPage extends StatefulWidget {
  static const String id = 'product_details_page';
  const ProductDetailsPage({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: clr_splashBG,
      body: Column(
        children: [
          buildAppBar(
            context,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              splashRadius: 20,
            ),
          ),
          Expanded(
            child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        width: 250,
                        height: 250,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              widget.product.image!,
                            ),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 24, horizontal: 32),
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          color: Color(0xffF6F7F8),
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(30),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.product.name!,
                              style: const TextStyle(
                                  color: Color(0xff1C1C1C),
                                  fontSize: 22,
                                  fontWeight: FontWeight.w900),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                buildRateStarts(widget.product.rate!),
                                Text(
                                  "${widget.product.rate} | ",
                                  style: const TextStyle(
                                    color: clr_dark2,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  "${widget.product.reviews} Reviews",
                                  style: const TextStyle(
                                    color: clr_blue,
                                    decoration: TextDecoration.underline,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 13,
                            ),
                            Text(
                              "${widget.product.discount ?? widget.product.price}",
                              style: const TextStyle(
                                color: clr_splashBG,
                                fontSize: 22,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            const SizedBox(
                              height: 13,
                            ),
                            buildSpacer(context),
                            const SizedBox(
                              height: 13,
                            ),
                            const Text(
                              "Description",
                              style: TextStyle(
                                color: clr_splashBG,
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Text(
                              "${widget.product.description}",
                              style: const TextStyle(
                                  color: clr_splashBG,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  height: 1.8),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 60,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          boxShadow: <BoxShadow>[
                                            BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.1),
                                              blurRadius: 8,
                                              spreadRadius: 0,
                                              offset: const Offset(0, 8),
                                            ),
                                          ],
                                        ),
                                        child: MaterialButton(
                                          onPressed: () {},
                                          color: Colors.white,
                                          shape: const CircleBorder(),
                                          padding: const EdgeInsets.all(15),
                                          elevation: 0,
                                          child: SvgPicture.asset(
                                              'assets/images/ic_heart2.svg'),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      Expanded(
                                        child: MaterialButton(
                                          onPressed: () {},
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 16,
                                            horizontal: 70,
                                          ),
                                          color: clr_green,
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(90)),
                                          child: const Text(
                                            "ADD TO BASKET",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}

Widget buildRateStarts(double rate) {
  int rateInInt = rate.toInt() - 1;
  return Row(
    children: List.generate(
        5,
        (index) => Icon(
              Icons.star,
              color: index <= rateInInt ? clr_orange : Color(0xffD1D4D6),
            )),
  );
}
