
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sigma/config/const_routes.dart';
import 'package:sigma/core/ui/states/base_stateless_screen.dart';
import 'package:sigma/view/filter_product_screen.dart';
import 'package:sigma/view/product_detail_sceen.dart';
import 'package:sigma/view/widgets/main_categories.dart';
import 'package:sigma/view/widgets/main_pie_chart_bar.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import '../../resources/colors.dart';
import 'package:sigma/services/products_service.dart';
import 'package:sigma/view/widgets/product_item.dart';
import 'package:sigma/resources/text_styles.dart';

class MainScreen extends BaseStatelessScreen{


  @override
  Widget buildBody(BuildContext context) {
    return StreamBuilder(
      stream: ProductsService().readItems(),
      builder: (ctx, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Container(
              decoration: BoxDecoration(
                gradient: backgroundColor
              ),
                child: Center(child: CircularProgressIndicator(),));
        }
        return Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: backgroundColor
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          FloatingActionButton(
                            heroTag: 1,
                            mini: true,
                            child: Padding(
                              padding: const EdgeInsets.all(7.0),
                              child: Image.asset('assets/images/Shop.png',),
                            ),
                            backgroundColor: blue,
                            onPressed: () {},
                          ),
                          Text('Партнеры', style: style_11,)
                        ],
                      ),
                      mainChartBar(),
                      Column(
                        children: [
                          FloatingActionButton(
                            heroTag: 2,
                            mini: true,
                            child: Padding(
                              padding: const EdgeInsets.all(7.0),
                              child: Image.asset('assets/images/info.png',),
                            ),
                            backgroundColor: blue,
                            onPressed: () {},
                          ),
                          Text('Информация', style: style_11,)
                        ],
                      ),
                    ],
                  ),
                  MainCategories(),
                ],
              ),
            ),
            SizedBox.expand(
                child: SlidingUpPanel(
                        borderRadius: BorderRadius.only(
                           topRight: Radius.circular(20),
                          topLeft: Radius.circular(20)
                        ),
                        minHeight: 250,
                        maxHeight: 800,
                        panelBuilder: (context){
                          return Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/fire.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                      Text(' Горячие предложения', style: style_12,),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 30),
                                        child: IconButton(
                                          icon: Icon(Icons.filter_list_rounded, color: black, size: 30,),
                                          onPressed: () {
                                            Get.to(FilterProductScreen());
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: ListView.builder(
                                                          itemCount: snapshot.data.docs.length,
                                                          itemBuilder: (ctx, int index) {
                                                            var info = snapshot.data.docs[index].data();
                                                            String id = snapshot.data.docs[index].id;
                                                            String name = info['name'];
                                                            int price = info['price'];
                                                            int cashBack = info['cashBack'];
                                                            String image = info['image'];
                                                            String category = info['category'];
                                                            String place = info['place'];

                                                            return InkWell(
                                                              onTap: () {
                                                                Get.to(ProductDetailScreen(
                                                                  name: name,
                                                                  image: image,
                                                                  cashBack: cashBack,
                                                                  category: category,
                                                                  price: price,
                                                                  place: place,
                                                                  docId: id,
                                                                ));
                                                              },
                                                              child: Container(
                                                                height: 100,
                                                                width: 200,
                                                                child: ProductItem(
                                                                    image: image,
                                                                    name: name,
                                                                    price: price,
                                                                    cashBack: cashBack,
                                                                    place: place,
                                                                ),
                                                              ),
                                                            );
                                                          }

                                  ),
                                ),
                              ],
                          );
                        },
                      ),
            ),
          ],
        );
      },
    );
  }
}