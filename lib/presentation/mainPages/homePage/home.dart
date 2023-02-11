import 'dart:developer';

import 'package:ecommerce/application/NotificationCubit/notication_cubit.dart';
import 'package:ecommerce/application/main_bloc/main_bloc.dart';
import 'package:ecommerce/application/productBloc/product_bloc_bloc.dart';
import 'package:ecommerce/core/colors.dart';
import 'package:ecommerce/domain/core/di/configInjection.dart';
import 'package:ecommerce/infrastructure/core/debouncer.dart';
import 'package:ecommerce/main.dart';
import 'package:ecommerce/presentation/Widgets/loadingPage.dart';
import 'package:ecommerce/presentation/Widgets/noResultPage.dart';
import 'package:ecommerce/presentation/logInReg/widgets/noInternet.dart';
import 'package:ecommerce/presentation/mainPages/homePage/widgets/defaultPage.dart';

import 'package:ecommerce/presentation/mainPages/homePage/widgets/homeWidgets.dart';
import 'package:ecommerce/presentation/mainPages/homePage/widgets/searchResult.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final _debouncer = Debouncer(milliseconds: 700);

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
      
        if (context
                .read<NoticationCubit>()
                .state
                .isNotificationPermissionGranted ==
            false) {
               
         BlocProvider.of<NoticationCubit>(context).getNotificationPermission();
        }
      },
    );
    return BlocListener<MainBloc, MainState>(
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
      child: BlocBuilder<ProductWatcherBloc, ProductWatcherState>(
        builder: (context, state) {
          return SafeArea(
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              key: _scaffoldKey,
              backgroundColor: appBackgroundColor,
              appBar: homeAppBar(context, _scaffoldKey, (value) {
                if (value != state.searchData.getOrElse('')) {
                  _debouncer.run(() {
                    BlocProvider.of<ProductWatcherBloc>(context)
                        .add(ProductWacherEvent.serachProduct(value));
                    if (value.isEmpty) {
                      BlocProvider.of<ProductWatcherBloc>(context)
                          .add(const ProductWacherEvent.getAllProducts());
                    }
                  });
                }
              }),
              body: state.isLoading
                  ? const LoadingPage()
                  : state.searchResult.isNotEmpty
                      ? SearchResult(
                          products: state.searchResult,
                        )
                      : state.searchData.hasData()
                          ? itemNotFoundPage()
                          : DefaultPage(
                              fullProducts: state.fullProducts,
                            ),
              drawer: Drawer(
                width: 200,
                backgroundColor: whiteColor,
                child: ListView(
                  children: [
                    TextButton.icon(
                        onPressed: () {
                          BlocProvider.of<MainBloc>(context)
                              .add(const MainEvent.signOut());
                          BlocProvider.of<MainBloc>(context)
                              .add(const MainEvent.getUser());
                        },
                        icon: const Icon(
                          Icons.logout,
                          color: redColor,
                        ),
                        label: const Text(
                          'Log out',
                          style: TextStyle(color: redColor),
                        )),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
