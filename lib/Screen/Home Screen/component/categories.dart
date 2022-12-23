import 'package:flutter/material.dart';

import '../../../constant.dart';

class Categories extends StatelessWidget {
  final int selectedIndex;
  final int index;
  final GestureTapCallback press;
  Categories(
      {super.key,
      required this.selectedIndex,
      required this.index,
      required this.press});
  //! category
  final List category = [
    'Hand Bag',
    'Juwellery',
    'Footwer',
    'Dress',
    'Jeans Pant',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
      ),
      child: GestureDetector(
        onTap: press,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              category[index],
              style: TextStyle(
                color:
                    selectedIndex == index ? kTextDarkColor : kSecoundaryColor,
                fontWeight: selectedIndex == index
                    ? FontWeight.bold
                    : FontWeight.normal,
              ),
            ),
            Container(
              height: 02,
              width: 50,
              color:
                  selectedIndex == index ? kTextDarkColor : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
