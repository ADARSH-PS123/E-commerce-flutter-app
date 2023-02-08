import 'dart:developer';

import 'package:ecommerce/application/CartBloc/cart_bloc.dart';
import 'package:ecommerce/application/PaymentCubit/payment_cubit_cubit.dart';
import 'package:ecommerce/application/main_bloc/main_bloc.dart';
import 'package:ecommerce/core/colors.dart';
import 'package:ecommerce/core/fonts.dart';
import 'package:ecommerce/core/spacers.dart';
import 'package:ecommerce/domain/core/di/configInjection.dart';
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
    return BlocProvider(
      create: (context) => getIt<PaymentCubitCubit>(),
      child: MultiBlocListener(
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
                          insufficientPermissions: (value) =>
                              ShowSnakBar.snakbar(
                                  'Insufficient permission', context),
                          unableToUpdate: (value) =>
                              ShowSnakBar.snakbar('Unable to update', context),
                        ),
                    (r) => null));
          }),
          BlocListener<PaymentCubitCubit, PaymentCubitState>(
            listener: (context, state) {
              state.maybeMap(
                orElse: () {},
                success: (s) => ShowSnakBar.snakbar('Order Success', context),
                failed: (value) =>
                    ShowSnakBar.snakbar(value.toString(), context),
              );
            },
          )
        ],
        child: BlocBuilder<CartBloc, CartState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const LoadingPage();
            } else if (state.miniLoading) {
              return const Center(
                child: SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(
                    color: blueBackgroundColor,
                  ),
                ),
              );
            }
            return Scaffold(
                backgroundColor: appBackgroundColor,
                /* appBar: topBar(
                    showAlertDialog: true,
                    showLeading: false,
                    title: 'Basket',
                    trailing: const ImageIcon(
                      AssetImage('assets/images/Delete.png'),
                      color: redColor,
                    ),
                    context: context), */
                floatingActionButtonLocation:
                    FloatingActionButtonLocation.centerDocked,
                floatingActionButton: appFloatingActionButton(
                    context: context,
                    buttonName: 'Check out',
                    onTap: () {
                      BlocProvider.of<PaymentCubitCubit>(context)
                          .startPayment();
                    },
                    BackgroundColor: appBackgroundColor,
                    price: state.cartProducts
                        .map((e) =>
                            e.product.price.getOrCrash() *
                            e.quantity.getOrCrash())
                        .toList()
                        .sum
                        .toString()),
                body: SafeArea(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        /* const Text('Basket',style: TextStyle(
                          fontSize: 16,fontWeight: bold
                        ),), */
                        tBar(
                          showLeading: false,
                          title: "Basket", trailing: const SizedBox(), showAlertDialog: false, context: context),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          padding: const EdgeInsets.only(bottom: 125),
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () =>
                                  Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ProductDetails(
                                    product: state.cartProducts[index].product),
                              )),
                              child: CartTile(
                                product: state.cartProducts[index].product,
                                decriment: state.cartProducts[index].quantity
                                            .getOrElse(0) >
                                        1
                                    ? () {
                                        BlocProvider.of<CartBloc>(context).add(
                                            CartEvent.changeQuantity(
                                                state.cartProducts[index].product
                                                    .id,
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
                                            state.cartProducts[index].product.id,
                                            CountValueObject(state
                                                    .cartProducts[index].quantity
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
                                      CartEvent.removeCart(
                                          state.cartProducts[index].product.id));
                                },
                                quantity: state.cartProducts[index].quantity
                                    .getOrElse(0),
                              ),
                            );
                          },
                          itemCount: state.cartProducts.length,
                        ),
                      ],
                    ),
                  ),
                ));
          },
        ),
      ),
    );
  }
}
