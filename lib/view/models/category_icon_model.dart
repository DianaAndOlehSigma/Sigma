import 'package:flutter/material.dart';
import 'package:sigma/resources/colors.dart';
import 'package:sigma/resources/text_styles.dart';

categoryIconModel(String image, Color color, String category){
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Container(
      height: 110,
      width: 75,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              height: 60,
              width: 60,
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
                  borderRadius: BorderRadius.circular(90),
                  border: Border.all(width: 3, color: color)
              ),
              child: Padding(
                padding: EdgeInsets.all(10),
                  child: Image.asset(image,)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0, bottom: 5),
            child: Text(category, style: style_11, textAlign: TextAlign.center,),
          ),
        ],
      ),
    ),
  );
}