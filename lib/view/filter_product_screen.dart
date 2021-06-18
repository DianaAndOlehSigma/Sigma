import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sigma/core/ui/states/base_stateless_screen.dart';
import 'package:sigma/resources/colors.dart';
import 'package:sigma/resources/text_styles.dart';

class FilterProductScreen extends BaseStatelessScreen{

  @override
  Widget buildBody(BuildContext context){
    return Column(
      children: [
        Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back, color: white, size: 20,),
              onPressed: (){},
            ),
            Text('Фильтр', style: style_16,)
          ],
        )
      ],
    );
  }
}