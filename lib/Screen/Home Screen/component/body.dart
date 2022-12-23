import 'package:flutter/material.dart';
import 'package:flutter_ecommerce2/Screen/Home%20Screen/Hand%20Bag%20Items/hand_bag_screen.dart';

import 'categories.dart';
import 'women_text.dart';

class Body extends StatefulWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int selectedIndex = 0;
//! body Screen===================================
  final List bodyShow = [
    const HandBagScreen(),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.yellow,
    ),
    Container(
      color: Colors.white,
    ),
    Container(
      color: Colors.black,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const WomenText(
            text: 'Women',
          ),
          //!Categories ===========
          SizedBox(
            height: 20,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) => Categories(
                index: index,
                selectedIndex: selectedIndex,
                press: () {
                  setState(
                    () {
                      selectedIndex = index;
                    },
                  );
                },
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          //!Page view here ================
          SizedBox(
            height: size.height / 1.0,
            child: PageView.builder(
              onPageChanged: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              itemCount: 5,
              itemBuilder: (context, index) => bodyShow[selectedIndex],
            ),
          ),
        ],
      ),
    );
  }
}
