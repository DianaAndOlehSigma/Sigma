import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sigma/resources/colors.dart';
import 'package:sigma/resources/text_styles.dart';

class FirstScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FirstScreenState();
  }
}

class FirstScreenState extends State<FirstScreen> {

  int currentPos = 0;
  List<Widget> listItems = [
    Container(),
    Container(),
    Container(),
  ];

  CarouselController itemCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: backgroundColor,
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const SizedBox(height: 350,),
            CarouselSlider.builder(
              carouselController: itemCarouselController,
              options: CarouselOptions(
                onPageChanged: (index, reason) {
                  setState((){
                    currentPos = index;
                  });
                },
                autoPlay: false,
                enableInfiniteScroll: true,
              ),
              itemCount: listItems.length,
              itemBuilder: (context, index, realIndex){
                return Container(child: listItems[index]);
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: listItems.map((e) {
                int index = listItems.indexOf(e);
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    width: 8.0,
                    height: 8.0,
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: currentPos == index
                          ? blue2
                          : blue3,
                    ),
                  ),
                );
              }).toList(),
            ),
            RaisedButton(
                color: white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(109, 11, 109, 11),
                  child: Text('Пропустити', style: style_1,),
                ),
                onPressed: () {
                  itemCarouselController.nextPage();
                  if(currentPos == listItems.length-1) {
                    Get.toNamed('/phoneVerifyRoute');
                  }
                }
            )
          ],
        ),
      ),
    );
  }
}
