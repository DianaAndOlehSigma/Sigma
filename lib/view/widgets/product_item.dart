import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sigma/core/ui/states/base_stateless_screen.dart';
import 'package:sigma/resources/colors.dart';
import 'package:sigma/resources/text_styles.dart';

class ProductItem extends BaseStatelessScreen{
  String image;
  String name;
  int price;
  int cashBack;
  String place;
  ProductItem({
    @required this.image,
    @required this.name,
    @required this.price,
    @required this.cashBack,
    @required this.place,
  });
  @override
 Widget buildBody(BuildContext context){
    return Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 2, 15, 2),
            child: Card(
              shadowColor: black,
              color: white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                          image,
                          height: 100,
                          width: 100,
                          fit: BoxFit.fill,
                        ),
                  ),
                  const SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(name, style: style_8,),
                      Text('Цена: ' + price.toString() +'\$',
                        style: style_9,),
                      SizedBox(height: 25,),
                      Row(children: [
                        Icon(Icons.location_on_outlined, color: grey1, size: 15,),
                        Text(place, style: style_4)
                      ],)
            ],
                  ),
                ],
              ),
            ),
          ),
          Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(2, 30, 18, 35),
                child: Container(
                  decoration: BoxDecoration(
                    color: yellow,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                    ),
                  ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 3, 15, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(cashBack.toString() + '\%',
                              style: style_10),
                           Text('кэшбэк', style: style_11)
                        ],
                      ),
                    ),
                ),
              ),
            ),
        ]
    );
  }
}