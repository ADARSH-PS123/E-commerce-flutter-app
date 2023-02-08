import 'package:ecommerce/application/authBloc/auth_bloc.dart';
import 'package:ecommerce/application/main_bloc/main_bloc.dart';
import 'package:ecommerce/core/colors.dart';
import 'package:ecommerce/core/spacers.dart';
import 'package:ecommerce/domain/core/di/configInjection.dart';

import 'package:ecommerce/presentation/Widgets/widgets.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LogInReg extends StatelessWidget {
  const LogInReg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthBloc>(),
      child: Scaffold(
        backgroundColor: blueBackgroundColor,
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Center(
                  child: Text(
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? "Welcome\nback"
                        : "Welcome back",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: whiteColor,
                      letterSpacing: 2,
                      fontSize: 65,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 40, horizontal: 50),
                decoration: const BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15))),
                height: 550,
                child: SingleChildScrollView(
                  child: BlocConsumer<AuthBloc, AuthState>(
                    listener: (context, state) {
                      state.optionSuccessOrFailure.fold(
                          () => null,
                          (either) => either.fold(
                                  (l) => l.map(
                                      AuthFailureUserDisabled: (af) {
                                        ShowSnakBar.snakbar(
                                            'User disabled', context);
                                      },
                                      AuthFailureUserNotfound: (af) {
                                        ShowSnakBar.snakbar(
                                            'User not found', context);
                                      },
                                      AuthFailureWrongPassword: (af) {
                                        ShowSnakBar.snakbar(
                                            'Invalid password', context);
                                      },
                                      AuthFailureTooMantRequests: (af) {
                                        ShowSnakBar.snakbar(
                                            'Too meny requests', context);
                                      },
                                      AuthFailureInvalidEmail: (af) {
                                        ShowSnakBar.snakbar(
                                            'Invalid Email', context);
                                      },
                                      clinetFailure: (cf) {
                                        ShowSnakBar.snakbar(
                                            'Server error', context);
                                      },
                                      serverFailure: (sf) {
                                        ShowSnakBar.snakbar(
                                            'Server error', context);
                                      },
                                      AuthFailureEmailAlreadyInUse: (af) {
                                        ShowSnakBar.snakbar(
                                            'Email already in use', context);
                                      },
                                      AuthFailureWeakPassword: (af) {
                                        ShowSnakBar.snakbar(
                                            'Weak password', context);
                                      },
                                      AuthFailureAnonimousAccountDisabled:
                                          (af) {
                                        ShowSnakBar.snakbar(
                                            'Anonimous account disabled',
                                            context);
                                      },
                                      FirebaseFirestore: (af) {},
                                      noConnection: (value) {
                                        Navigator.pushNamed(
                                            context, 'noInternet');
                                      }), (r) {
                                BlocProvider.of<MainBloc>(context)
                                    .add(const MainEvent.getUser());
                                if (state.isAuthenticated) {
                                  Navigator.of(context)
                                      .pushReplacementNamed('homePage');
                                }
                              }));
                    },
                    builder: (context, state) {
                      if (state.isSubmitting) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      return Form(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "LogIn",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            kheight, //Email Field
                            TextFormField(
                              onChanged: (value) {
                                BlocProvider.of<AuthBloc>(context)
                                    .add(AuthEvent.emailChanged(value));
                              },
                              validator: (value) => state.emailAddress.value
                                  .fold(
                                      (l) => l.maybeMap(
                                          invalidEmail: (value) =>
                                              'Invalid email',
                                          orElse: () {
                                            return null;
                                          }),
                                      (r) => null),
                              decoration: InputDecoration(
                                  label: Padding(
                                    padding: const EdgeInsets.only(bottom: 20),
                                    child: Row(
                                      children: const [
                                        ImageIcon(AssetImage(
                                            'assets/images/Message.png')),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          "Email",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                              color: greyColor),
                                        ),
                                      ],
                                    ),
                                  ),
                                  focusedBorder: const UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: greyColor))),
                            ),
                            kheight, //Password Field
                            TextFormField(
                              onChanged: (value) {
                                BlocProvider.of<AuthBloc>(context)
                                    .add(AuthEvent.passwordChanged(value));
                              },
                              validator: (value) => state.password.value.fold(
                                  (l) => l.maybeMap(
                                      shortPassword: (value) =>
                                          'Password too short',
                                      orElse: () {
                                        return null;
                                      }),
                                  (r) => null),
                              decoration: InputDecoration(
                                  label: Padding(
                                    padding: const EdgeInsets.only(bottom: 20),
                                    child: Row(
                                      children: const [
                                        ImageIcon(AssetImage(
                                            'assets/images/Lock.png')),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          "Password",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                              color: greyColor),
                                        ),
                                      ],
                                    ),
                                  ),
                                  focusedBorder: const UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: greyColor))),
                            ),
                            kheight30,
                            TextButton(
                              onPressed: () => Navigator.of(context)
                                  .pushNamed('passwordreset'),
                              child: const Text(
                                "Forgot Password ?",
                                style: TextStyle(
                                    color: blueBackgroundColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            kheight,
                            mainButton(
                                context: context,
                                buttonName: "Login",
                                bgColor: blueBackgroundColor,
                                textColor: whiteColor,
                                ontap: () {
                                  BlocProvider.of<AuthBloc>(context).add(
                                      const AuthEvent
                                          .signinWithEmailansPassword());
                                }),
                            kheight30,
                            Center(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, "register");
                                },
                                child: const Text(
                                  "Create account",
                                  style: TextStyle(
                                      color: blueBackgroundColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
