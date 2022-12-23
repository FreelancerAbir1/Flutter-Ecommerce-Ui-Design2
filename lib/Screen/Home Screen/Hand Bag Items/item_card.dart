import 'package:flutter/material.dart';

import '../../../Model/bag_model.dart';
import '../../../constant.dart';

class HandBagCard extends StatelessWidget {
  final Function() press;
  final BagProduct bagProduct;
  const HandBagCard({
    super.key,
    required this.bagProduct,
    required this.press,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(
                  kDefaultPadding - 10,
                ),
                decoration: BoxDecoration(
                  color: bagProduct.color ,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Image.asset(
                  bagProduct.img,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                bagProduct.title,
                style: const TextStyle(color: kSecoundaryColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kDefaultPadding - 10,
              ),
              child: Text(
                "\$${bagProduct.price}",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
