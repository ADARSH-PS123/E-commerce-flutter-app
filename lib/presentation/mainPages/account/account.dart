import 'package:dartz/dartz.dart';
import 'package:ecommerce/application/EditUserBloc/edit_user_bloc.dart';

import 'package:ecommerce/application/main_bloc/main_bloc.dart';

import 'package:ecommerce/core/colors.dart';
import 'package:ecommerce/core/fonts.dart';
import 'package:ecommerce/domain/core/di/configInjection.dart';

import 'package:ecommerce/presentation/Widgets/loadingPage.dart';
import 'package:ecommerce/presentation/Widgets/widgets.dart';
import 'package:ecommerce/presentation/logInReg/widgets/noInternet.dart';
import 'package:ecommerce/presentation/mainPages/account/widgerts/accountWidgts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackgroundColor,
      body: SafeArea(
        child: MultiBlocListener(
            listeners: [
              BlocListener<MainBloc, MainState>(listener: (context, state) {
                state.maybeMap(
                  offline: (val) => const NoInternet(),
                  orElse: () {},
                  notAuthenticated: (value) {
                    ShowSnakBar.snakbar(
                        'Could not find user or User not signed in', context);
                    Navigator.of(context).pushReplacementNamed('loginpage');
                  },
                );
              })
            ],
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "My profile",
                    style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                  ),
                  BlocBuilder<EditUserBloc, EditUserState>(
                    builder: (context, state) {
                      if(state.isLoading){
                        return const SizedBox(
                          height: 190,
                          child: Center(
                            child: CircularProgressIndicator(),
                          ),
                        );
                      }
                      return profileStack(
                        pincode: state.pincode.getOrElse(''),
                          address: state.userAddress.getOrElse(''),
                          userName: state.userName.getOrElse(''),
                          imageUrl: state.user.profilePhoto.getOrElse(''));
                    },
                  ),
                  profileTiles(
                      optionName: "Edit profile",
                      onTap: () {
                        Navigator.of(context).pushNamed('editProfile');
                      }),
                  profileTiles(optionName: "Shopping address", onTap: () {}),
                  profileTiles(optionName: "Order history", onTap: () {}),
                  profileTiles(optionName: "Cards", onTap: () {}),
                  profileTiles(optionName: "Notifications", onTap: () {}),
                ],
              ),
            )),
      ),
    );
  }
}
