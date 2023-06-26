import 'package:flutter/material.dart';
import 'package:shop_app/home_screen.dart';

class Category {
  final String icon;
  final String title;

  Category({
    required this.icon,
    required this.title,
  });
}

List<Category> demo_categories = [
  Category(
    icon: "assets/icon/image8.png",
    title: "shirt",
  ),
  Category(
    icon: "asstes/icon/images6.png",
    title: "dress",
  ),
  Category(
    icon: "assets/icon/image/9.png",
    title: "frock",
  ),
  Category(
    icon: "assets/icon/image/9.png",
    title: "coat",
  )
];
