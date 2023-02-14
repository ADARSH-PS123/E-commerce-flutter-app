import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:ecommerce/application/CartBloc/cart_bloc.dart';
import 'package:ecommerce/application/EditUserBloc/edit_user_bloc.dart';
import 'package:ecommerce/application/NotificationCubit/notication_cubit.dart';

import 'package:ecommerce/application/blocObserver.dart';

import 'package:ecommerce/application/favouritesBloc/favourites_bloc.dart';
import 'package:ecommerce/application/main_bloc/main_bloc.dart';
import 'package:ecommerce/application/orderCubit/order_cubit.dart';

import 'package:ecommerce/application/productBloc/product_bloc_bloc.dart';
import 'package:ecommerce/core/colors.dart';
import 'package:ecommerce/core/constants.dart';
import 'package:ecommerce/domain/core/valueobject/valueobject.dart';
import 'package:ecommerce/infrastructure/PaymentNotificationRepo/PaymentNotificationRepo.dart';
import 'package:ecommerce/presentation/Widgets/loadingPage.dart';
import 'package:ecommerce/presentation/launcherPage/launcherPage.dart';
import 'package:ecommerce/presentation/logInReg/loginPage.dart';
import 'package:ecommerce/presentation/logInReg/passwordResetMail.dart';
import 'package:ecommerce/presentation/logInReg/regPage.dart';
import 'package:ecommerce/presentation/logInReg/widgets/noInternet.dart';
import 'package:ecommerce/presentation/mainPages/account/orderHistory.dart';
import 'package:ecommerce/presentation/mainPages/account/profileEdit.dart';

import 'package:ecommerce/presentation/mainPages/root.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

import 'package:google_fonts/google_fonts.dart';

import 'domain/core/di/configInjection.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await configInjection();

  Stripe.publishableKey = publishableKey;
  Stripe.instance.applySettings();

  Bloc.observer = AppBlocObserver();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            lazy: false,
            create: ((context) => getIt<
                MainBloc>() /* ..add(const MainEvent.onlinewatcher()) */)),
        BlocProvider(
          create: (context) => getIt<ProductWatcherBloc>()
            ..add(const ProductWacherEvent.getAllProducts()),
        ),
        BlocProvider( create: (context) => getIt<OrderCubit>(),lazy: false,),
        BlocProvider(
          lazy: false,
            create: (context) => getIt<FavouritesBloc>()
              
              ..add(const FavouritesEvent.getFavouriteProducts())),
        BlocProvider(create: (context) => getIt<CartBloc>(),lazy: false,),
        BlocProvider(
          lazy: false,
            create: (context) => getIt<EditUserBloc>()
            ),
        BlocProvider(create: (context) => getIt<NoticationCubit>()),
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
            'orderhistory': (context) => const OrderHistory(),
          },
          theme: ThemeData(
            textTheme: GoogleFonts.ralewayTextTheme(),
            colorScheme: ColorScheme.fromSwatch(
              accentColor:
                  appBackgroundColor, // but now it should be declared like this
            ),
          ),
          debugShowCheckedModeBanner: false,
          home: SafeArea(
              child: BlocListener<MainBloc, MainState>(
            listener: (context, state) {
              log(state.toString()+"++++++++++");
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
