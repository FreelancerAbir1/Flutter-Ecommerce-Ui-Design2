
import 'package:flutter/material.dart';

import '../../../../Model/bag_model.dart';
import '../../../../constant.dart';

class BagImage extends StatelessWidget {
  const BagImage({
    Key? key,
    required this.bagProduct,
  }) : super(key: key);

  final BagProduct bagProduct;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Image.asset(
        bagProduct.img,
        fit: BoxFit.fill,
        height: 200,
        width: 200,
      ),
    );
  }
}
