import 'package:ecommerce/application/authBloc/auth_bloc.dart';
import 'package:ecommerce/core/colors.dart';
import 'package:ecommerce/core/spacers.dart';
import 'package:ecommerce/presentation/Widgets/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordResetScreen extends StatelessWidget {
  const PasswordResetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 30,vertical: 50),
          child: BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) {
              state.optionSuccessOrFailure.fold(() => null, (e) => 
              e.fold((l) {
                l.maybeMap(
                  AuthFailureInvalidEmail: (a){
  ShowSnakBar.snakbar('invalid email', context);
                },
                AuthFailureUserDisabled: (a){
  ShowSnakBar.snakbar('User disabled', context);
                },
                AuthFailureTooMantRequests:(a){
  ShowSnakBar.snakbar('Too many requests', context);
                } ,
                AuthFailureUserNotfound: (a){
  ShowSnakBar.snakbar('User not found', context);
                },
               
                  orElse: (){
                      ShowSnakBar.snakbar('Server error', context);
                  });
              }, (r) {
                ShowSnakBar.snakbar('Email sent please verify and login', context);
                Navigator.of(context).pushReplacementNamed('login');
              }));
            },
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: TextFormField(
                    onChanged: (value) {
                      BlocProvider.of<AuthBloc>(context)
                          .add(AuthEvent.emailChanged(value));
                    },
                    validator: (value) => state.emailAddress.value.fold(
                        (l) => l.maybeMap(
                            invalidEmail: (value) => 'Invalid email',
                            orElse: () {
                              return null;
                            }),
                        (r) => null),
                    decoration: InputDecoration(
                        label: Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Row(
                            children: const [
                              ImageIcon(AssetImage('assets/images/Message.png')),
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
                            borderSide: BorderSide(color: greyColor))),
                  ),
                ),
                kheight,
                mainButton(context: context, buttonName: 'Send reset mail', bgColor: blueBackgroundColor, textColor: whiteColor, ontap: (){
                  BlocProvider.of<AuthBloc>(context).add(AuthEvent.sendPasswordResetMail());
                }),
                kheight30,
                mainButton(context: context, buttonName: 'Cancel', bgColor: blueBackgroundColor, textColor: whiteColor, ontap: (){
                  Navigator.of(context).pop();
                })
              ],
            );
          },
        )),
      ),
    );
  }
}
