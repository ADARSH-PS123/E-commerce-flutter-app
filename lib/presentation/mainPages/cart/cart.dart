import 'package:ecommerce/application/CartBloc/cart_bloc.dart';
import 'package:ecommerce/application/main_bloc/main_bloc.dart';
import 'package:ecommerce/core/colors.dart';
import 'package:ecommerce/domain/core/valueobject/valueobject.dart';

import 'package:ecommerce/presentation/Widgets/loadingPage.dart';
import 'package:ecommerce/presentation/Widgets/widgets.dart';

import 'package:ecommerce/presentation/mainPages/cart/widgets/widgets.dart';
import 'package:ecommerce/presentation/mainPages/homePage/widgets/productDetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:collection/collection.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //APP BAR ,  zLISTVIEW  ,FLOATING ACTION BUTTON
    return MultiBlocListener(
      listeners: [
        BlocListener<MainBloc, MainState>(
          listener: (context, state) {
            state.maybeMap(
              orElse: () {},
              notAuthenticated: (value) {
                Navigator.pushReplacementNamed(context, 'onboarding');
              },
              offline: (value) {
                Navigator.pushReplacementNamed(context, 'noInternet');
              },
            );
          },
        ),
        BlocListener<CartBloc, CartState>(listener: (context, state) {
          state.optionSuccessFailure.fold(
              () => null,
              (a) => a.fold(
                  (l) => l.maybeMap(
                        orElse: () =>
                            ShowSnakBar.snakbar('Error occured', context),
                        insufficientPermissions: (value) => ShowSnakBar.snakbar(
                            'Insufficient permission', context),
                        unableToUpdate: (value) =>
                            ShowSnakBar.snakbar('Unable to update', context),
                      ),
                  (r) => null));
        })
      ],
      child: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          return Scaffold(
              backgroundColor: appBackgroundColor,
              appBar: topBar(
                  showAlertDialog: true,
                  showLeading: false,
                  title: 'Basket',
                  trailing: const ImageIcon(
                    AssetImage('assets/images/Delete.png'),
                    color: redColor,
                  ),
                  context: context),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
              floatingActionButton: appFloatingActionButton(
                  context: context,
                  buttonName: 'Check out',
                  onTap: () {},
                  BackgroundColor: appBackgroundColor,
                  price: state.cartProducts
                      .map((e) =>
                          e.product.price.getOrCrash() *
                          e.quantity.getOrCrash())
                      .toList()
                      .sum
                      .toString()),
              body: state.isLoading
                  ? const LoadingPage()
                  : state.miniLoading
                      ? const Center(
                          child: SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(
                              color: blueBackgroundColor,
                            ),
                          ),
                        )
                      : ListView.builder(
                          padding: const EdgeInsets.only(bottom: 125),
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () =>
                                  Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ProductDetails(
                                    product: state.cartProducts[index].product),
                              )),
                              child: CartTile(
                                productName: state
                                    .cartProducts[index].product.productName
                                    .getOrElse(''),
                                price: state.cartProducts[index].product.price
                                    .getOrCrash()
                                    .toString(),
                                quantity: state.cartProducts[index].quantity
                                    .getOrElse(0)
                                    .toString(),
                                id: state.cartProducts[index].product.id,
                                decriment: state.cartProducts[index].quantity
                                            .getOrElse(0) >
                                        1
                                    ? () {
                                        BlocProvider.of<CartBloc>(context).add(
                                            CartEvent.changeQuantity(
                                                state.cartProducts[index]
                                                    .product.id,
                                                CountValueObject(state
                                                        .cartProducts[index]
                                                        .quantity
                                                        .getOrElse(0) -
                                                    1)));
                                        BlocProvider.of<CartBloc>(context).add(
                                            const CartEvent.getCArtProducts());
                                      }
                                    : null,
                                incrimement: () {
                                  if (state.cartProducts[index].quantity
                                          .getOrElse(0) <
                                      state.cartProducts[index].product.stock
                                          .getOrElse(0)) {
                                    BlocProvider.of<CartBloc>(context).add(
                                        CartEvent.changeQuantity(
                                            state
                                                .cartProducts[index].product.id,
                                            CountValueObject(state
                                                    .cartProducts[index]
                                                    .quantity
                                                    .getOrElse(0) +
                                                1)));
                                    BlocProvider.of<CartBloc>(context)
                                        .add(const CartEvent.getCArtProducts());
                                  } else {
                                    ShowSnakBar.snakbar(
                                        'No more stock left', context);
                                  }
                                },
                                delete: () {
                                  BlocProvider.of<CartBloc>(context).add(
                                      CartEvent.removeCart(state
                                          .cartProducts[index].product.id));
                                },
                              ),
                            );
                          },
                          itemCount: state.cartProducts.length,
                        ));
        },
      ),
    );
  }
}
