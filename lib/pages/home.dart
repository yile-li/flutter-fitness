import 'dart:io';

import 'package:fitness/models/category_model.dart';
import 'package:fitness/models/recommendation_model.dart';
import 'package:fitness/widgets/category_card.dart';
import 'package:fitness/widgets/recommendation_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<CategoryModel> categories = getCategoryList();
    List<RecModel> recommendations = getRecommendationList();
    return Scaffold(
        appBar: appBar(),
        body: Column(
          children: [
            _searchBar(),
            _categorySection(categories),
            SizedBox(height: 25),
            _recommendationSection(recommendations),
          ],
        ));
  }

  Column _recommendationSection(List<RecModel> recommendations) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        margin: EdgeInsets.only(left: 20),
        child: Text("Recommendation",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            )),
      ),
      SizedBox(height: 25),
      Container(
        margin: EdgeInsets.only(left: 20),
        height: 240,
        child: ListView.separated(
          separatorBuilder: (context, index) => SizedBox(width: 20),
          scrollDirection: Axis.horizontal,
          itemCount: recommendations.length,
          itemBuilder: (context, index) => RecCard(
              iconPath: recommendations[index].iconPath,
              name: recommendations[index].name,
              background: recommendations[index].boxColor,
              info: recommendations[index].info),
        ),
      )
    ]);
  }

  Column _categorySection(List<CategoryModel> categories) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 30),
        const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Text("Category",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              )),
        ),
        const SizedBox(height: 15),
        Container(
          margin: EdgeInsets.only(left: 20),
          height: 110,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              separatorBuilder: (context, index) => const SizedBox(width: 20),
              itemBuilder: (BuildContext context, int index) {
                return CategoryCard(
                    iconPath: categories[index].iconPath,
                    name: categories[index].name,
                    background: categories[index].boxColor);
              }),
        ),
      ],
    );
  }

  Container _searchBar() {
    return Container(
      margin: EdgeInsets.only(top: 40, left: 20, right: 20),
      decoration: BoxDecoration(
          // borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Color(0xff1D1617).withOpacity(0.07),
              blurRadius: 40,
              spreadRadius: 0.0,
            )
          ]),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Search Pancake',
            hintStyle: TextStyle(
              color: Color(0xffDDDADA),
              fontSize: 15,
            ),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SvgPicture.asset("assets/icons/Search icon.svg"),
            ),
            suffixIcon: Container(
              width: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 20,
                    child: VerticalDivider(
                      color: Color(0xffDDDADA),
                      thickness: 1,
                      indent: 2,
                      endIndent: 2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset("assets/icons/Filter icon.svg"),
                  ),
                ],
              ),
            ),
            isDense: true,
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none)),
      ),
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
