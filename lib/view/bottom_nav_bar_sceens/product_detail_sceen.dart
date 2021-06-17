import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sigma/core/ui/states/base_stateless_screen.dart';
import 'package:sigma/resources/colors.dart';
import 'package:sigma/resources/text_styles.dart';

class ProductDetailScreen extends BaseStatelessScreen{
  final String name;
  final String image;
  final String category;
  final String place;
  final int price;
  final int cashBack;
  final String docId;

  ProductDetailScreen({
    @required this.name,
    @required this.image,
    @required this.category,
    @required this.place,
    @required this.cashBack,
    @required this.price,
    @required this.docId,
  });


  @override
  Widget buildBody(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        gradient: backgroundColor,
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(25, 25, 0, 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 25.0, bottom: 15),
              child: Stack(
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          image,
                          fit: BoxFit.fill,
                        ),
                      ),
                    Align(
                          alignment: Alignment.bottomLeft,
                          child: IconButton(
                            icon: Icon(Icons.arrow_back, color: white, size: 25,),
                            onPressed: () {
                              Get.back();
                            },
                          )
                      ),
                  ],
                ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name, style: style_14),
                    Text('цена: ' + price.toString() + '\$', style: style_15,)
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    color: blue,
                    boxShadow: [
                      BoxShadow(
                        color: white.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(0, 0),
                      )
                    ],
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(25, 7, 30, 7),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(cashBack.toString() + '\%',
                            style: style_6),
                        Text('кэшбэк', style: style_11)
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(right: 25.0, bottom: 15),
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: white1,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(place, style: style_13),
                          Text(category, style: style_4)
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Text('Рекомендации', style: style_13,)
          ],
        ),
      ),
    );
  }
}