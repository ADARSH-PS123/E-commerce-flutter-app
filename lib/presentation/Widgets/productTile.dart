import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/core/colors.dart';
import 'package:ecommerce/core/fonts.dart';
import 'package:ecommerce/core/spacers.dart';
import 'package:ecommerce/domain/iapp/productEntity.dart';
import 'package:flutter/material.dart';

class productTile extends StatelessWidget {
  const productTile({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(

      height: 300,
      width: 200,
              
      child: Stack(children: [
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            height: 245,
            width: 200,
           
         decoration: BoxDecoration(
             color: whiteColor,
             borderRadius: borderRadius
         ),
          ),
        ),
        Positioned(
          top: 35,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
                 
              children: [
              product.thubnail.hasData()?
                 
                CachedNetworkImage(
                imageUrl:  product.thubnail.getOrCrash(),
                  height: 131,
                  width: 131,
                  fit: BoxFit.cover,
                  errorWidget:(context, url, error) => Center(child: Text("Couldn't load image")),
                ):
                Image.asset(
                  'assets/images/image.png',
                  height: 131,
                  width: 131,
                  fit: BoxFit.cover,
                ),
              kheight15,
                Text(
                  product.productName.getOrElse('').trim(),
                  maxLines: 1,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: semiBold),
                ),
                kheight15,
                Text(
               product.price.getOrCrash().toString()+" \$",
                  maxLines: 1,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: semiBold),
                ),
                kheight15,
                  Text(
                  product.discountPercentage.getOrCrash().toString()+" %   Discount available",
                  maxLines: 2,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: semiBold),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}