import 'package:ecommerce/application/CartBloc/cart_bloc.dart';
import 'package:ecommerce/core/colors.dart';
import 'package:ecommerce/core/spacers.dart';
import 'package:ecommerce/domain/core/valueobject/valueobject.dart';
import 'package:ecommerce/presentation/Widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartTile extends StatelessWidget {
  final String productName, price, quantity;
  final UniqueId id;
   void Function() ? incrimement,decriment ,delete;

   CartTile(
      {Key? key,
      required this.price,
      required this.incrimement,
      required this.decriment,
      required this.productName,
      required this.id,
      required this.quantity,
      required this.delete,
    })
      : super(key: key);

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
                  productName,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                Text(
                  price + " \$",
                  style: TextStyle(
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
                        splashRadius:20 ,
                        onPressed: decriment,
                        icon:int.parse(quantity)>=0? Icon(
                          Icons.remove_circle,
                          color: skyBlue,
                        ):SizedBox(),
                      ),
                    ),
                    Text(
                      "  $quantity ",
                      style: const TextStyle(fontSize: 12),
                    ),
                    Material(
                      
                      color: whiteColor,
                      child: IconButton(
                        disabledColor: whiteColor,
                         splashColor: blueBackgroundColor,
                        splashRadius:20 ,
                      
                    
                        icon: const Icon(Icons.add_circle),
                        onPressed: incrimement,
                        color: skyBlue,
                      ),
                    ),
                    Material(
                      color: whiteColor,
                      child: IconButton(onPressed: delete, icon: Icon(Icons.delete_forever,color: redColor,),
                    ))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
