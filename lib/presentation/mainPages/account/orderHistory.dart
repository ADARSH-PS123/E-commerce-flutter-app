import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:ecommerce/application/favouritesBloc/favourites_bloc.dart';
import 'package:ecommerce/application/orderCubit/order_cubit.dart';
import 'package:ecommerce/core/colors.dart';
import 'package:ecommerce/presentation/Widgets/loadingPage.dart';
import 'package:ecommerce/presentation/Widgets/noResultPage.dart';
import 'package:ecommerce/presentation/Widgets/widgets.dart';
import 'package:ecommerce/presentation/mainPages/favorites/widgets/widgets.dart';
import 'package:ecommerce/presentation/mainPages/homePage/widgets/productDetails.dart';
import 'package:ecommerce/presentation/mainPages/root.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if(context.read<OrderCubit>().state.isLoaded == false){
        context.read<OrderCubit>().getOrderHistoryProduct();
        log('order history widgets build');
      }
        
    }
  
    );
    return Scaffold(
      backgroundColor: appBackgroundColor,
      appBar: topBar(
          showAlertDialog: false,
          title: 'Order Details',
          showLeading: false,
          trailing:  IconButton(
          icon: const Icon( Icons.refresh_rounded,
            color: blackColor), onPressed: () {
                 context.read<OrderCubit>().getOrderHistoryProduct();
              },
            
          ),
          context: context),
      body: BlocBuilder<OrderCubit, OrderState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const LoadingPage();
          } 
          if (state.cartProducts.isEmpty) {
            return NoResultPage(
                onTap: () {
                  Navigator.of(context).pop();
                  indexNotifier.value =0;
                },
                imagePath: 'assets/images/Sally.png',
                message: 'Hit the  button down below\nto Create an order',
                messageHead: "No Orders yet",
                buttonName: 'Start ordering',
                appBarName: '');
          }
          return ListView.builder(
            itemCount: state.cartProducts.length,
            padding: const EdgeInsets.only(bottom: 125),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            ProductDetails(product: state.cartProducts[index].product),
                      )),
                  child: FavTile(
                    product: state.cartProducts[index].product,
                    child: const Text(' Not delivered yet',
                        maxLines: 2, overflow: TextOverflow.ellipsis),
                  ));
            },
          );
        },
      ),
    );
  }
}
