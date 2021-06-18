import 'package:sigma/core/ui/states/base_stateless_screen.dart';
import 'package:sigma/resources/colors.dart';
import 'package:sigma/resources/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:sigma/view/widgets/category_icon.dart';

class MainCategories extends BaseStatelessScreen{

  final List<Widget> categories = [
    categoryIcon('assets/images/Clothes.png', purple, 'Одежда и украшения'),
    categoryIcon('assets/images/Beauty.png', orange, 'Красота и здоровье'),
    categoryIcon('assets/images/Travel.png',  yellow, 'Путешествия'),
    categoryIcon('assets/images/MarketPlace.png', red, 'Маркетплейсы'),
    categoryIcon('assets/images/Delivery.png', darkPurple, 'Услуги'),
    categoryIcon('assets/images/Clothes.png', purple, 'Одежда и украшения'),
  ];

  @override
  Widget buildBody(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, bottom: 5),
            child: Text('Категории', style: style_13,),
          ),
          Container(
            height: 120,
            child: ListView(
                scrollDirection: Axis.horizontal,
                children: categories,
              ),
          ),
        ],
      ),
    );
  }
}