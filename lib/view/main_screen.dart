import 'package:flutter/material.dart';
import 'package:sigma/core/ui/states/base_stateless_screen.dart';
import 'package:sigma/core/ui/widgets/bottomNavigationBar.dart';

class MainScreen extends BaseStatelessScreen{


  @override
  Widget buildBody(BuildContext context) {
    return MainBottomNavigationBar();
  }
}