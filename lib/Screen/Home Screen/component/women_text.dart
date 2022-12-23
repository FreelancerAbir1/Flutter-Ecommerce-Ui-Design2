
import 'package:flutter/material.dart';

import '../../../constant.dart';

class WomenText extends StatelessWidget {
  const WomenText({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
      ),
      child: Text(
        text,
        style: Theme.of(context)
            .textTheme
            .headline1!
            .copyWith(fontSize: 40, fontWeight: FontWeight.bold),
      ),
    );
  }
}