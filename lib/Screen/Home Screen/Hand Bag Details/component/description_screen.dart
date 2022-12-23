import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../Model/bag_model.dart';
import '../../../../constant.dart';

class DescriptionScreen extends StatefulWidget {
  const DescriptionScreen({
    Key? key,
    required this.bagProduct,
  }) : super(key: key);
  final BagProduct bagProduct;
  @override
  State<DescriptionScreen> createState() => _DescriptionScreenState();
}

class _DescriptionScreenState extends State<DescriptionScreen> {
  List<Color> color = [
    Colors.blue,
    Colors.green,
    Colors.yellow,
  ];
  int currentIndex = 0;
  int countProduct = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        kDefaultPadding,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            height: 30,
          ),
          buildColorChoose(context),
          buildDesc(),
          buildCount(),
          buyNow(),
        ],
      ),
    );
  }

  Row buyNow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              10,
            ),
            border: Border.all(
              width: 02,
              color: widget.bagProduct.color,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(
              8.0,
            ),
            child: SvgPicture.asset(
              'assets/icons/add_to_cart.svg',
              color: widget.bagProduct.color,
            ),
          ),
        ),
        Container(
          height: 50,
          width: MediaQuery.of(context).size.height / 3.2,
          decoration: BoxDecoration(
            color: widget.bagProduct.color,
            borderRadius: BorderRadius.circular(
              kDefaultPadding,
            ),
          ),
          child: Center(
            child: Text(
              'Buy Now',
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(color: kTextLightColor, fontSize: 30),
            ),
          ),
        ),
      ],
    );
  }

  Padding buildCount() {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding - 10),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                countProduct--;
              });
              if (countProduct == 0) {
                setState(() {
                  countProduct = 1;
                });
              }
            },
            child: const Card(
              elevation: 5,
              shadowColor: Colors.black,
              child: Icon(
                Icons.remove,
              ),
            ),
          ),
          Text(countProduct.toString()),
          GestureDetector(
            onTap: () {
              setState(() {
                countProduct++;
              });
              if (countProduct == 21) {
                setState(() {
                  countProduct = 20;
                });
              }
            },
            child: const Card(
              elevation: 5,
              shadowColor: Colors.black,
              child: Icon(
                Icons.add,
              ),
            ),
          ),
          const Spacer(),
          CircleAvatar(
            backgroundColor: Colors.red,
            child: SvgPicture.asset(
              'assets/icons/heart.svg',
            ),
          ),
        ],
      ),
    );
  }

  Padding buildDesc() {
    return Padding(
      padding: const EdgeInsets.all(
        kDefaultPadding - 10,
      ),
      child: Text(
        widget.bagProduct.desc,
      ),
    );
  }

  Row buildColorChoose(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: kDefaultPadding - 10),
              child: Text(
                'Color',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kDefaultPadding - 16,
              ),
              child: Row(
                children: List.generate(
                  color.length,
                  (index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 04,
                            color: currentIndex == index
                                ? Colors.black45
                                : Colors.transparent,
                          ),
                          color: color[index],
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Size',
              style: Theme.of(context).textTheme.subtitle1!.copyWith(),
            ),
            Text(
              '${widget.bagProduct.size.toInt()} CM',
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(fontSize: 20, color: kSecoundaryColor),
            ),
          ],
        ),
        const Spacer(),
      ],
    );
  }
}
