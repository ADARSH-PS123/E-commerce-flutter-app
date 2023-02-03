import 'package:ecommerce/application/favouritesBloc/favourites_bloc.dart';
import 'package:ecommerce/core/colors.dart';
import 'package:ecommerce/core/spacers.dart';
import 'package:ecommerce/domain/iapp/productEntity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavTile extends StatelessWidget {
  final Product product ;
  const FavTile({Key? key,required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    decoration: BoxDecoration(color: whiteColor, borderRadius: borderRadius),
    padding: const EdgeInsets.all(15),
    margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
    child: Row(
      children: [
        Container(
          height: 105,
          width: 80,
          margin: const EdgeInsets.only(right: 8),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/image.png'))),
        ),
        SizedBox(
          height: 105,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
              product.productName.getOrElse("NA"),maxLines: 1,
                style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              Text(
              product.price.getOrCrash().toString()+"\$",
                style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: blueBackgroundColor),
              ),
            IconButton(onPressed:(){
              BlocProvider.of<FavouritesBloc>(context).add(FavouritesEvent.removeFavouriteProducts(product.id));
            }, icon: Icon(Icons.favorite))
            ],
          ),
        )
      ],
    ),
  );
  }
}


