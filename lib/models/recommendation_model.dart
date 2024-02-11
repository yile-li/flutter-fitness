import 'package:flutter/material.dart';

class RecModel {
  final String iconPath;
  final String name;
  final Color boxColor;
  final String info;

  RecModel({
    required this.iconPath,
    required this.name,
    required this.boxColor,
    required this.info,
  });
}

List<RecModel> getRecommendationList() {
  List<RecModel> categories = [
    RecModel(
        iconPath: 'assets/icons/Honey Pancakes icon.svg',
        name: 'Honey Pancake',
        boxColor: Color(0xff92A3FD),
        info: 'Easy | 30mins | 180kCal'),
    RecModel(
        iconPath: 'assets/icons/Canai Bread.svg',
        name: 'Canai Bread',
        boxColor: Color(0XffC58BF2),
        info: 'Easy | 20mins | 210kCal'),
    // RecModel(
    //     iconPath: "assets/icons/pie.svg",
    //     name: 'Pie',
    //     boxColor: Color(0xff92A3FD)),
    // RecModel(
    //     iconPath: 'assets/icons/orange.svg',
    //     name: 'Smoothie',
    //     boxColor: Color(0XffC58BF2))
  ];

  return categories;
}
