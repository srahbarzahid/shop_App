// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class Category {
  final String icon;
  final String title;

  Category({
    required this.icon,
    required this.title,
  });
}

List<Category> demoCategories = [
  Category(
    icon: "assets/images/bshirt.png",
    title: "shirt",
  ),
  Category(
    icon: "assets/images/gskert.png",
    title: "skirt",
  ),
  Category(
    icon: "assets/images/pant.png",
    title: "pant",
  ),
  Category(
    icon: "assets/images/rskirt.png",
    title: "frock",
  ),
  Category(
    icon: "assets/images/shirt.png",
    title: "shirt",
  ),
];
