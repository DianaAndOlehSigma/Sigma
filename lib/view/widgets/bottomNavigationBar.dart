import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:sigma/core/getX/base_controller.dart';
import 'package:sigma/core/ui/states/base_stateless_screen.dart';
import 'package:sigma/resources/colors.dart';
import 'package:sigma/view/bottom_nav_bar_sceens/main_screen.dart';

 class MainBottomNavigationBar extends BaseStatelessScreen{
  final BaseController navController = Get.put(BaseController());

  final List<Widget> bodyContent = [
    MainScreen(),
    Text('2'),
    Text('3'),
    Text('4'),
  ];

  @override
  Widget buildBody(BuildContext context) {
    return Scaffold(
        body: Obx(
              () => Center(
                child: bodyContent.elementAt(navController.selectedIndex),
          ),
        ),
        floatingActionButton: Container(
          height: 65,
          width: 65,
          child: FloatingActionButton(
            backgroundColor: blue,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Icon(Icons.qr_code, size: 25,),
            ),
            onPressed: () {},
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: Obx(
            () => Padding(
            padding: EdgeInsets.only(bottom: 0),
            child: BottomNavigationBar(
              backgroundColor: blue1,
              selectedItemColor: blue2,
                unselectedItemColor: grey2,
                currentIndex: navController.selectedIndex,
                onTap: (index) => navController.selectedIndex = index,
                type: BottomNavigationBarType.fixed,
                iconSize: 20,
             items: [
               BottomNavigationBarItem(
                 icon: Icon(Icons.home),
                 label: 'Главная'
               ),
               BottomNavigationBarItem(
                   icon: Icon(Icons.history),
                   label: 'История'
               ),
               BottomNavigationBarItem(
                   icon: Icon(Icons.location_on_outlined),
                   label: 'Карта'
               ),
               BottomNavigationBarItem(
                   icon: Icon(Icons.menu),
                   label: 'Еще'
               ),
             ]
            ),
          ),
        ),
    );
  }
}
