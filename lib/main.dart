import 'package:ecommerce/application/CartBloc/cart_bloc.dart';
import 'package:ecommerce/application/EditUserBloc/edit_user_bloc.dart';

import 'package:ecommerce/application/authBloc/auth_bloc.dart';
import 'package:ecommerce/application/favouritesBloc/favourites_bloc.dart';
import 'package:ecommerce/application/main_bloc/main_bloc.dart';
import 'package:ecommerce/application/productBloc/product_bloc_bloc.dart';
import 'package:ecommerce/presentation/Widgets/loadingPage.dart';
import 'package:ecommerce/presentation/launcherPage/launcherPage.dart';
import 'package:ecommerce/presentation/logInReg/loginPage.dart';
import 'package:ecommerce/presentation/logInReg/passwordResetMail.dart';
import 'package:ecommerce/presentation/logInReg/regPage.dart';
import 'package:ecommerce/presentation/logInReg/widgets/noInternet.dart';
import 'package:ecommerce/presentation/mainPages/account/profileEdit.dart';

import 'package:ecommerce/presentation/mainPages/root.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:google_fonts/google_fonts.dart';

import 'domain/core/di/configInjection.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await configInjection();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<AuthBloc>()),
        BlocProvider(
            create: (context) => getIt<ProductWatcherBloc>()
              ..add(const ProductWacherEvent.getAllProducts())),
        BlocProvider(
            create: ((context) => getIt<
                MainBloc>() /* ..add(const MainEvent.onlinewatcher()) */)),
        BlocProvider(
            create: (context) => getIt<FavouritesBloc>()
              ..add(const FavouritesEvent.getUserId())
              ..add(const FavouritesEvent.getFavouriteProducts())),
        BlocProvider(
            create: (context) => getIt<CartBloc>()
              ..add(const CartEvent.getUserId())
              ..add(const CartEvent.getCArtProducts())),
        BlocProvider(
            create: (context) => getIt<EditUserBloc>()
              ..add(const EditUserEvent.getSignedUser())),
      ],
      child: MaterialApp(
          routes: {
            'login': (context) => const LogInReg(),
            'register': (context) => const regPage(),
            'noInternet': (context) => const NoInternet(),
            'homePage': (context) => HomePage(),
            'loadingPage': (context) => const LoadingPage(),
            'onboarding': (context) => const LauncherPage(),
            'passwordreset': (context) => const PasswordResetScreen(),
            'editProfile': (context) => const EditProfile(),
          },
          theme: ThemeData(textTheme: GoogleFonts.ralewayTextTheme()),
          debugShowCheckedModeBanner: false,
          home: SafeArea(
              child: BlocListener<MainBloc, MainState>(
            listener: (context, state) {
              state.maybeMap(
                orElse: () {},
                notAuthenticated: (value) {
                  Navigator.of(context).pushReplacementNamed('onboarding');
                },
                authenticated: (value) {
                  Navigator.of(context).pushReplacementNamed('homePage');
                },
                offline: (value) {
                  Navigator.of(context).pushReplacementNamed('noInternet');
                },
              );
            },
            child: const LoadingPage(),
          ))),
    );
  }
}
