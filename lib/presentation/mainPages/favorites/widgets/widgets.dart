import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/application/favouritesBloc/favourites_bloc.dart';
import 'package:ecommerce/core/colors.dart';
import 'package:ecommerce/core/spacers.dart';
import 'package:ecommerce/core/texts.dart';
import 'package:ecommerce/domain/iapp/productEntity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavTile extends StatelessWidget {
  final Product product ;
  final Widget child;
  const FavTile({Key? key,required this.product,required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    decoration: BoxDecoration(color: whiteColor, borderRadius: borderRadius),
    padding: const EdgeInsets.all(15),
    margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
    child: Row(
      children: [
       CachedNetworkImage(
            imageUrl: product.thubnail.getOrElse(''),
            imageBuilder: (context, imageProvider) => Container(
                height: 105,
                width: 80,
                margin: const EdgeInsets.only(right: 8),
                decoration: BoxDecoration(
                  borderRadius: borderRadius,
                    image: DecorationImage(
                  fit: BoxFit.cover,
                
                  alignment: FractionalOffset.center,
                  image: imageProvider,
                ))),
            errorWidget: (context, url, error) => const SizedBox(width: 80,
            height: 105,

              child: Center(child: Text(simpleErrorMsg,overflow: TextOverflow.ellipsis,))),
          ),
        Expanded(
          child: SizedBox(
            height: 105,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  
                product.productName.getOrElse("NA"),maxLines: 1,
                overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                Text(
                "${product.price.getOrCrash()}\$",
                  style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: blueBackgroundColor),
                ),
             child
              ],
            ),
          ),
        )
      ],
    ),
  );
  }
}


