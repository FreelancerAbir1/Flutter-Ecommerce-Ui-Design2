import 'package:flutter/material.dart';

class BagProduct {
  final int id;
  final String code;
  final double price;
  final String title;
  final String img;
  final Color color;
  final double size;
  final String desc;
  BagProduct({
    required this.desc,
    required this.size,
    required this.code,
    required this.id,
    required this.price,
    required this.title,
    required this.img,
    required this.color,
  });
}

List<BagProduct> bagProduct = [
  BagProduct(
      desc: dummyText,
      code: 'Office Code',
      size: 12,
      id: 1,
      price: 245,
      title: 'Dedicated Hand Bag',
      img: 'assets/images/bag_1.png',
      color: Colors.blueAccent),
  BagProduct(
      desc: dummyText,
      code: 'Office Code',
      size: 11,
      id: 2,
      price: 145,
      title: 'Jannura Hand Bag',
      img: 'assets/images/bag_2.png',
      color: Colors.orange),
  BagProduct(
      desc: dummyText,
      code: 'Office Code',
      size: 21,
      id: 3,
      price: 548,
      title: 'Vanila Hand Bag',
      img: 'assets/images/bag_3.png',
      color: Colors.blueGrey),
  BagProduct(
      desc: dummyText,
      code: 'Office Code',
      size: 15,
      id: 4,
      price: 214,
      title: 'Vanety Hand Bag',
      img: 'assets/images/bag_4.png',
      color: Colors.orangeAccent),
  BagProduct(
      desc: dummyText,
      code: 'Office Code',
      size: 16,
      id: 5,
      price: 354,
      title: 'Variety Hand Bag',
      img: 'assets/images/bag_5.png',
      color: Colors.redAccent),
  BagProduct(
      desc: dummyText,
      code: 'Office Code',
      size: 18,
      id: 6,
      price: 245,
      title: 'Ladies Hand Bag',
      img: 'assets/images/bag_6.png',
      color: Colors.grey),
];
String dummyText =
    'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.';
