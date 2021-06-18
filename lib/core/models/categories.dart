import 'package:flutter/material.dart';
import 'package:sigma/core/models/category.dart';
import 'package:sigma/resources/colors.dart';

class Categories{
  final Category cafesAndRestaurants;
  final Category trips;
  final Category car;
  final Category beauty;
  final Category marketplaces;
  final Category baby;
  final Category clothes;
  final Category electronics;
  final Category services;
  final Category entertainment;

  Categories({
    @required this.cafesAndRestaurants,
    @required this.baby,
    @required this.car,
    @required this.beauty,
    @required this.clothes,
    @required this.electronics,
    @required this.entertainment,
    @required this.marketplaces,
    @required this.services,
    @required this.trips
});
}
final Category category2 = Category(icon: 'assets/images/Clothes.png', color: purple, name: 'Одежда и украшения');
final Category category3 = Category(icon: 'assets/images/Beauty.png', color: orange, name: 'Красота и здоровье');
final Category category4 = Category(icon: 'assets/images/Travel.png', color: yellow, name: 'Путешествия');
final Category category5 = Category(icon: 'assets/images/MarketPlace.png', color: red, name: 'Маркетплейсы');
final Category category6 = Category(icon: 'assets/images/Delivery.png', color: darkPurple, name: 'Услуги');
