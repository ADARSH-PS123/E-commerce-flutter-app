import 'package:ecommerce/application/favouritesBloc/favourites_bloc.dart';
import 'package:ecommerce/application/main_bloc/main_bloc.dart';
import 'package:ecommerce/core/colors.dart';
import 'package:ecommerce/presentation/Widgets/loadingPage.dart';
import 'package:ecommerce/presentation/Widgets/noResultPage.dart';
import 'package:ecommerce/presentation/Widgets/widgets.dart';
import 'package:ecommerce/presentation/mainPages/cart/widgets/widgets.dart';
import 'package:ecommerce/presentation/mainPages/favorites/widgets/widgets.dart';
import 'package:ecommerce/presentation/mainPages/homePage/widgets/productDetails.dart';
import 'package:ecommerce/presentation/mainPages/root.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Favourites extends StatelessWidget {
  const Favourites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //APP BAR ,  zLISTVIEW
    return MultiBlocListener(
      listeners: [
        BlocListener<FavouritesBloc, FavouritesState>(
          listener: (context, state) {
            state.optionSuccessFailure.fold(
                () => null,
                (either) => either.fold(
                    (failure) => failure.maybeMap(
                          unexpected: (value) => ShowSnakBar.snakbar(
                              'Unexpected error occured', context),
                          unableToUpdate: (value) =>
                              ShowSnakBar.snakbar('Unable to update', context),
                          orElse: () =>
                              ShowSnakBar.snakbar('Error occured', context),
                        ),
                    (success) => null));
          },
        ),
        BlocListener<MainBloc, MainState>(
          listener: (context, state) {
            //when user press signout button
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
        )
      ],
      child: BlocBuilder<FavouritesBloc, FavouritesState>(
        builder: (context, state) {
          return Scaffold(
            
            backgroundColor: appBackgroundColor,
            appBar: topBar(
                showAlertDialog: false,
                title: 'Favourites',
                showLeading: false,
                trailing: const Icon(
                  Icons.favorite,
                  color: redColor,
                ),
                context: context),
            body: BlocBuilder<FavouritesBloc, FavouritesState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return const LoadingPage();
                } else if (state.miniLoading) {
                  return const Center(
                    child: SizedBox(
                      height: 20,
                      width: 20,
                      child:
                          CircularProgressIndicator(color: blueBackgroundColor),
                    ),
                  );
                }
                if (state.favProducts.isEmpty) {
                  return NoResultPage(
                      onTap: () {
                        indexNotifier.value = 0;
                      },
                      imagePath: 'assets/images/Sally.png',
                      message: 'Hit the  button down below\nto Create an order',
                      messageHead: "No favorites yet",
                      buttonName: 'Start ordering',
                      appBarName: '');
                }
                return ListView.builder(
                  itemCount: state.favProducts.length,
                  padding: const EdgeInsets.only(bottom: 125),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                        onTap: () =>
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ProductDetails(
                                  product: state.favProducts[index]),
                            )),
                        child: FavTile(product: state.favProducts[index], child:  IconButton(onPressed:(){
                BlocProvider.of<FavouritesBloc>(context).add(FavouritesEvent.removeFavouriteProducts(state.favProducts[index].id));
              }, icon: const Icon(Icons.favorite)),));
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
} /*  */
