import 'package:flutter/material.dart';

class CategoryModel {
  final String iconPath;
  final String name;
  final Color boxColor;

  CategoryModel({
    required this.iconPath,
    required this.name,
    required this.boxColor,
  });
}

List<CategoryModel> getCategoryList() {
  List<CategoryModel> categories = [
    CategoryModel(
      iconPath: 'assets/icons/salad.svg',
      name: 'Salad',
      boxColor: Color(0xff92A3FD),
    ),
    CategoryModel(
      iconPath: 'assets/icons/small_pancake.svg',
      name: 'Cake',
      boxColor: Color(0XffC58BF2),
    ),
    CategoryModel(
        iconPath: "assets/icons/pie.svg",
        name: 'Pie',
        boxColor: Color(0xff92A3FD)),
    CategoryModel(
        iconPath: 'assets/icons/orange.svg',
        name: 'Smoothie',
        boxColor: Color(0XffC58BF2))
  ];

  return categories;
}
