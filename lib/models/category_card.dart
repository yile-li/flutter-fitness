import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryCard extends StatelessWidget {
  final String iconPath;
  final String name;
  final Color background;

  const CategoryCard({
    Key? key,
    required this.iconPath,
    required this.name,
    required this.background,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        color: background,
        // elevation: 2,
        child: Column(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(iconPath),
            ),
            Text(
              name,
              style: const TextStyle(
                fontSize: 8,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ));
  }
}
