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
      width: 170,
      child: Card(
          margin: const EdgeInsets.all(0.0),
          elevation: 0.0,
          color: background.withOpacity(0.3),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child: SvgPicture.asset(iconPath),
              ),
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
                    fontSize: 10,
                    fontWeight: FontWeight.w100,
                  )),
              ElevatedButton(onPressed: () {}, child: Text("View"))
            ],
          )),
    );
  }
}
