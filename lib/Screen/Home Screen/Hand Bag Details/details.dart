// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce2/Model/bag_model.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constant.dart';
import 'component/body.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = '/handbagdetails';
  final BagProduct bagProduct;
  final int index;
  const DetailsScreen({
    Key? key,
    required this.bagProduct,
    required this.index,
  }) : super(key: key);
  final int cartItem = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bagProduct.color,
      appBar: buildAppBar(
        'assets/icons/back.svg',
        'assets/icons/search.svg',
        'assets/icons/cart.svg',
        context,
      ),
      body: Body(bagProduct: bagProduct),
    );
  }

  AppBar buildAppBar(backImg, searchImg, cartImg, context) {
    return AppBar(
      backgroundColor: bagProduct.color,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: SvgPicture.asset(
          backImg,
          color: kSecoundaryColor,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            searchImg,
            color: kSecoundaryColor,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            cartImg,
            color: kSecoundaryColor,
          ),
        ),
      ],
    );
  }
}
