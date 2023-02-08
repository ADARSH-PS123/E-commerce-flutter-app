import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/application/CartBloc/cart_bloc.dart';
import 'package:ecommerce/core/colors.dart';
import 'package:ecommerce/core/spacers.dart';
import 'package:ecommerce/core/texts.dart';
import 'package:ecommerce/domain/core/valueobject/valueobject.dart';
import 'package:ecommerce/domain/iapp/productEntity.dart';
import 'package:ecommerce/presentation/Widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartTile extends StatelessWidget {
  Product product;
  void Function()? incrimement, decriment, delete;
  int quantity;
  CartTile({
    Key? key,
    required this.product,
    required this.quantity,
    required this.incrimement,
    required this.decriment,
    required this.delete,
  }) : super(key: key);

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
                    product.productName.getOrElse(''),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: const TextStyle(
                        fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "${product.price.getOrCrash().toString()} \$",
                    style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: blueBackgroundColor),
                  ),
                  Row(
                    children: [
                      const Text(
                        "Quantity : ",
                        style: TextStyle(fontSize: 14),
                      ),
                      Material(
                        color: whiteColor,
                        child: IconButton(
                          disabledColor: whiteColor,
                          splashColor: blueBackgroundColor,
                          splashRadius: 20,
                          onPressed: decriment,
                          icon: quantity > 1
                              ? const Icon(
                                  Icons.remove_circle,
                                  color: skyBlue,
                                )
                              : const SizedBox(),
                        ),
                      ),
                      Text(
                        quantity.toString(),
                        style: const TextStyle(fontSize: 12),
                      ),
                      Material(
                        color: whiteColor,
                        child: IconButton(
                          disabledColor: whiteColor,
                          splashColor: blueBackgroundColor,
                          splashRadius: 20,
                          icon: const Icon(Icons.add_circle),
                          onPressed: incrimement,
                          color: skyBlue,
                        ),
                      ),
                      Material(
                          color: whiteColor,
                          child: IconButton(
                            onPressed: delete,
                            icon: Icon(
                              Icons.delete_forever,
                              color: redColor,
                            ),
                          ))
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
