import 'package:ecommerce/core/colors.dart';
import 'package:ecommerce/domain/core/valueobject/valueobject.dart';
import 'package:ecommerce/domain/iapp/productEntity.dart';
import 'package:ecommerce/infrastructure/core/blocHelper.dart';
import 'package:ecommerce/presentation/mainPages/homePage/fullProducts.dart';
import 'package:ecommerce/presentation/mainPages/homePage/widgets/searchResult.dart';

import 'package:ecommerce/presentation/mainPages/homePage/widgets/tabarItems.dart';
import 'package:flutter/material.dart';

// Default home page when user first see ,
class DefaultPage extends StatelessWidget {
  final  List<Product> fullProducts;
    

  const DefaultPage({Key? key,required this.fullProducts});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          //TEXT , TABBAR, SEEMORE
          const Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Text(
                "Buy Now",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
              height: 450,
              child: DefaultTabController(
                length: 4,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                      child: TabBar(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        labelColor: blueBackgroundColor,
                        indicatorColor: blueBackgroundColor,
                        unselectedLabelColor: greyColor,
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                        indicatorPadding:
                            EdgeInsets.symmetric(horizontal: 14, vertical: 0.1),
                        indicator: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 3, color: blueBackgroundColor))),
                        tabs: [
                          Tab(
                            text: "Smart Phones",
                          ),
                          Tab(
                            text: "Laptops",
                          ),
                          Tab(
                            text: "Groceries",
                          ),
                          Tab(
                            text: "Fragrances",
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(children: [
                        TabBarItem(
                          products: filterProduct(fullProducts, 'smartPhones'),
                        ),
                        TabBarItem(
                          products: filterProduct(fullProducts, 'laptops'),
                        ),
                        TabBarItem(
                          products: filterProduct(fullProducts, 'groceries'),
                        ),
                        TabBarItem(
                          products: filterProduct(fullProducts, 'fragrances'),
                        ),
                      ]),
                    )
                  ],
                ),
              )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children:  [
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder:(context) => FullProducts(fullProducts: fullProducts),));
                  },
                  child: Text(
                    "See more",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: blueBackgroundColor),
                  ),
                ),
                Icon(
                  Icons.navigate_next,
                  color: blueBackgroundColor,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
