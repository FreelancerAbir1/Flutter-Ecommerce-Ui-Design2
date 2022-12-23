import 'package:flutter/material.dart';

import '../../../../Model/bag_model.dart';
import '../../../../constant.dart';
import 'bag_headline.dart';
import 'bag_img.dart';
import 'description_screen.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.bagProduct,
  }) : super(key: key);

  final BagProduct bagProduct;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          color: bagProduct.color,
          height: size.height,
          width: size.width,
          child: BagHeadline(bagProduct: bagProduct),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            height: size.height / 1.6,
            width: size.width,
            decoration: buildDecoration(),
            child: DescriptionScreen(bagProduct: bagProduct),
          ),
        ),
        Positioned(
          top: size.height / 6,
          right: kDefaultPadding - kDefaultPadding,
          child: BagImage(bagProduct: bagProduct),
        )
      ],
    );
  }

  BoxDecoration buildDecoration() {
    return const BoxDecoration(
      color: kTextLightColor,
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(kDefaultPadding + 10),
        topLeft: Radius.circular(kDefaultPadding + 10),
      ),
    );
  }
}
