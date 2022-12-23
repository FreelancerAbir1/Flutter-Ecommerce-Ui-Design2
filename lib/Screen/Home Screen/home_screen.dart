import 'package:flutter/material.dart';
import 'package:flutter_ecommerce2/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'component/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/homescreen';
  const HomeScreen({
    Key? key,
  }) : super(key: key);
  final int cartItem = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: buildAppBar(
        'assets/icons/search.svg',
        'assets/icons/cart.svg',
      ),
      body: const Body(),
    );
  }

  AppBar buildAppBar(searchImg, cartImg) {
    return AppBar(
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            searchImg,
            color: kSecoundaryColor,
          ),
        ),
        Stack(
          children: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                cartImg,
                color: kSecoundaryColor,
              ),
            ),
            Positioned(
              right: 10,
              top: 10,
              child: Container(
                height: 12,
                width: 12,
                decoration: BoxDecoration(
                  color: Colors.red[200],
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    cartItem.toString(),
                    style: const TextStyle(
                      color: kTextDarkColor,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
