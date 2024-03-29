

import 'package:ecommerce/core/fonts.dart';

import 'package:ecommerce/domain/iapp/productEntity.dart';
import 'package:ecommerce/presentation/Widgets/productTile.dart';
import 'package:ecommerce/presentation/mainPages/homePage/widgets/productDetails.dart';
import 'package:ecommerce/presentation/responsive.dart';
import 'package:flutter/material.dart';


import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// When user search this page will show the result
class SearchResult extends StatelessWidget {
  final List<Product> products;
  
  const SearchResult({Key? key, required this.products,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      //Text item count-text , result- grid
      children: [
     
        Center(
          child: Text(
            "Found ${products.length} items",
            style: const TextStyle(fontSize: 28, fontWeight: semiBold),
          ),
        ),
        Expanded(
          child: MasonryGridView.count(
            shrinkWrap: true,
     
            padding:const EdgeInsets.symmetric(horizontal: 15),
            crossAxisCount:Responsive.isMobile(context)? 2:3,
            crossAxisSpacing: 20,
            mainAxisSpacing: 5,
            itemCount: products.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          ProductDetails(product: products[index]),
                    ));
                  },
                  child: productTile(product: products[index])
             
                  );
            },
          ),
        )
      ],
    );
  }
}


