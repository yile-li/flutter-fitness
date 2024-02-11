import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RecCard extends StatelessWidget {
  final String iconPath;
  final String name;
  final Color background;
  final String info;

  const RecCard({
    Key? key,
    required this.iconPath,
    required this.name,
    required this.background,
    required this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 210,
      child: Card(
          margin: const EdgeInsets.all(0.0),
          elevation: 0.0,
          color: background.withOpacity(0.3),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(iconPath),
              Column(
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(info,
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 12,
                        fontWeight: FontWeight.w100,
                      )),
                ],
              ),

              Container(
                height: 35,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  gradient: LinearGradient(
                      colors: [Color(0xff9DCEFF), Color(0xff92A3FD)]),
                ),
                child: Center(
                  child: Text(
                    "View",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              // ElevatedButton(onPressed: () {}, child: Text("View"))
            ],
          )),
    );
  }
}
