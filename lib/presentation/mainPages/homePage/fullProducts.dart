import 'package:ecommerce/core/colors.dart';
import 'package:ecommerce/core/fonts.dart';
import 'package:ecommerce/core/spacers.dart';

import 'package:ecommerce/domain/iapp/productEntity.dart';
import 'package:ecommerce/infrastructure/core/blocHelper.dart';
import 'package:ecommerce/presentation/Widgets/productTile.dart';
import 'package:ecommerce/presentation/mainPages/homePage/widgets/productDetails.dart';

import 'package:flutter/material.dart';


class FullProducts extends StatelessWidget {
  final List<Product> fullProducts;
  const FullProducts({Key? key, required this.fullProducts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appBackgroundColor,
        body: CustomScrollView(
            /*   physics: const NeverScrollableScrollPhysics(), */
            slivers: [
              const SliverAppBar(
                floating: false,
                centerTitle: true,
                backgroundColor: appBackgroundColor,
                title: Text("Purchase Now",style: TextStyle(
                  color: blackColor,fontSize: 20,
                  fontWeight: bold
                ),),
              ),
              const sliverHeading(text: 'Smartphones'),
              SliverAppgrid(products: filterProduct(fullProducts, 'smartphones')),
                const sliverHeading(text: 'Laptops'),
              SliverAppgrid(products: filterProduct(fullProducts, 'laptops')),
                const sliverHeading(text: 'Fragrances'),
              SliverAppgrid(products: filterProduct(fullProducts, 'fragrances')),
                const sliverHeading(text: 'Groceries'),
              SliverAppgrid(products: filterProduct(fullProducts, 'groceries')),
                const sliverHeading(text: 'Skincare'),
              SliverAppgrid(products: filterProduct(fullProducts, 'skincare')),
                const sliverHeading(text: 'Home decoration'),
              SliverAppgrid(products: filterProduct(fullProducts, 'home-decoration'))

            ]));
  }
}

class SliverAppgrid extends StatelessWidget {
  const SliverAppgrid({
    Key? key,
    required this.products,
  }) : super(key: key);

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        sliver: SliverGrid(
          delegate: SliverChildBuilderDelegate(
            childCount: products.length,
            (context, index) {
              return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          ProductDetails(product: products[index]),
                    ));
                  },
                  child: productTile(product: products[index]));
            },
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio:
                  MediaQuery.of(context).orientation == Orientation.portrait
                      ? 2 / 3
                      : 1.3,
              crossAxisSpacing: 10),
        ));
  }
}

class sliverHeading extends StatelessWidget {
  final String text;
  const sliverHeading({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Center(
      child: Column(
        children: [
          kheight15,
          Text(
            text,
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    ));
  }
}
