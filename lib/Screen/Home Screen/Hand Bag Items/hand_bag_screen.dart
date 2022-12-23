import 'package:flutter/material.dart';
import 'package:flutter_ecommerce2/Model/bag_model.dart';
import 'package:flutter_ecommerce2/Screen/Home%20Screen/Hand%20Bag%20Details/details.dart';
import 'package:flutter_ecommerce2/constant.dart';
import 'item_card.dart';

class HandBagScreen extends StatelessWidget {
  const HandBagScreen({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.vertical,
      itemCount: bagProduct.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: kDefaultPadding,
        mainAxisSpacing: kDefaultPadding,
        childAspectRatio: 0.9,
      ),
      itemBuilder: (context, index) => HandBagCard(
        bagProduct: bagProduct[index],
        press: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailsScreen(
              index: index,
              bagProduct: bagProduct[index],
            ),
          ));
        },
      ),
    );
  }
}
