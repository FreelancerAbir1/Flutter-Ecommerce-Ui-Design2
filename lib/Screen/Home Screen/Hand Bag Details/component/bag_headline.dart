import 'package:flutter/material.dart';

import '../../../../Model/bag_model.dart';
import '../../../../constant.dart';

class BagHeadline extends StatelessWidget {
  const BagHeadline({
    Key? key,
    required this.bagProduct,
  }) : super(key: key);

  final BagProduct bagProduct;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            bagProduct.title,
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: kTextLightColor.withOpacity(0.8),
                ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            bagProduct.code,
            style: Theme.of(context).textTheme.headline1!.copyWith(
                  color: kTextLightColor.withOpacity(0.8),
                ),
          ),
        ),
        SizedBox(
          height: size.height / 9,
        ),
        Padding(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Text.rich(
            TextSpan(
              text: 'Price',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kTextLightColor.withOpacity(0.8),
              ),
              children: [
                TextSpan(
                  text: '\n\$${bagProduct.price}',
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
