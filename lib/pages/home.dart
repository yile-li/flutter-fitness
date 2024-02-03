import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
    );
  }

  AppBar appBar() {
    return AppBar(
        title: const Text("Breakfast"),
        leading: GestureDetector(
          onTap: () {},
          child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: Color(0xffF7F8F8),
                  borderRadius: BorderRadius.circular(10)),
              child: SvgPicture.asset("assets/icons/Left Arrow 2.svg",
                  height: 20, width: 20)),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(10.0),
                width: 37,
                height: 37,
                decoration: BoxDecoration(
                    color: Color(0xffF7F8F8),
                    borderRadius: BorderRadius.circular(10)),
                child: SvgPicture.asset("assets/icons/Dots icon.svg",
                    height: 5, width: 5)),
          )
        ]);
  }
}
