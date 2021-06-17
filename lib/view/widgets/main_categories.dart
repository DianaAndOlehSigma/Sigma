import 'package:flutter/cupertino.dart';
import 'package:sigma/core/ui/states/base_stateless_screen.dart';
import 'package:sigma/resources/colors.dart';
import 'package:sigma/resources/text_styles.dart';
import '../models/category_icon_model.dart';

class MainCategories extends BaseStatelessScreen{

  final List<Widget> categories = [
    categoryIconModel('assets/images/Clothes.png', purple, 'Одежда и украшения'),
    categoryIconModel('assets/images/Beauty.png', orange, 'Красота и здоровье'),
    categoryIconModel('assets/images/Travel.png', yellow, 'Путешествия'),
    categoryIconModel('assets/images/MarketPlace.png', red, 'Маркетплейсы'),
    categoryIconModel('assets/images/Delivery.png', darkPurple, 'Услуги'),
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