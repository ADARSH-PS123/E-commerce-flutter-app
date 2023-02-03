import 'package:ecommerce/application/authBloc/auth_bloc.dart';
import 'package:ecommerce/core/colors.dart';
import 'package:ecommerce/core/spacers.dart';
import 'package:ecommerce/presentation/Widgets/widgets.dart';
import 'package:ecommerce/presentation/logInReg/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class regPage extends StatelessWidget {
  const regPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueBackgroundColor,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Center(
              child: const Text(
                "Welcome",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 65,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 40, horizontal: 50),
              decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15))),
              child: SingleChildScrollView(
                child: Form(
                  autovalidateMode: AutovalidateMode.always,
                  child: BlocConsumer<AuthBloc, AuthState>(
                    listener: (context, state) => state.optionSuccessOrFailure.fold(() => null, (either) => either.fold((l) => l.map(AuthFailureUserDisabled: (af){
              ShowSnakBar.snakbar('User disabled', context);
              }, AuthFailureUserNotfound: (af){
                ShowSnakBar.snakbar('User not found', context);
              }, AuthFailureWrongPassword:(af){
                ShowSnakBar.snakbar('Invalid password', context);
              } , AuthFailureTooMantRequests: (af){
                ShowSnakBar.snakbar('Too many requests', context);
              }, AuthFailureInvalidEmail:(af)
              {
                ShowSnakBar.snakbar('Invalid Email', context);
              } , clinetFailure: (cf){
                ShowSnakBar.snakbar('Server error', context);
              }, serverFailure: (sf){
                ShowSnakBar.snakbar('Server error', context);
              }, AuthFailureEmailAlreadyInUse:(af)
              {
                ShowSnakBar.snakbar('Email already in use', context);
              }, AuthFailureWeakPassword: (af){
                ShowSnakBar.snakbar('Weak password', context);
              }, AuthFailureAnonimousAccountDisabled: (af){
ShowSnakBar.snakbar('Anonimous account disabled', context);
              }, FirebaseFirestore: (af){}, noConnection: ( value) {  }), (r) {
                 ShowSnakBar.snakbar('Register success please login', context);
                 Navigator.of(context).pushReplacement(MaterialPageRoute(builder: ((context) => LogInReg())));
              })),
                     
                    builder: (context, state) {
                       
                       if(state.isSubmitting){
                    return const Center(child: CircularProgressIndicator(),);}
return
                   Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Register now",
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
                            validator: (value) => state.emailAddress.value.fold(
                                (l) => l.maybeMap(
                                    invalidEmail: (value) => 'Invalid email',
                                    orElse: () {
                                      return null;
                                    }),
                                (r) => null),
                            decoration: InputDecoration(
                                label: Padding(
                                  padding: EdgeInsets.only(bottom: 20),
                                  child: Row(
                                    children:const [
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
                                    borderSide: BorderSide(color: greyColor))),
                          ),
                          kheight, //Password Field
                          TextFormField(
                            onChanged: (value) {
                              BlocProvider.of<AuthBloc>(context)
                                  .add(AuthEvent.passwordChanged(value));
                                    BlocProvider.of<AuthBloc>(context)
                                  .add(const AuthEvent.ispasswordMatched());
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
                                  padding: EdgeInsets.only(bottom: 20),
                                  child: Row(
                                    children:const [
                                       ImageIcon(
                                          AssetImage('assets/images/Lock.png')),
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
                                    borderSide: BorderSide(color: greyColor))),
                          ),
                          kheight30,
                          TextFormField(
                            
                            onChanged: (value) {
                            
                                    BlocProvider.of<AuthBloc>(context)
                                  .add(AuthEvent.confirmpasswordChanged(value));
                                    BlocProvider.of<AuthBloc>(context)
                                  .add(const AuthEvent.ispasswordMatched());
                            },
                            validator: (value) {
                               
                              if (BlocProvider.of<AuthBloc>(context).state.isMatched){
                              return null;
                              }
                               return 'Password did not match';
                            },
                            decoration: InputDecoration(
                                label: Padding(
                                  padding: const EdgeInsets.only(bottom: 20),
                                  child: Row(
                                    children: const [
                                      ImageIcon(
                                          AssetImage('assets/images/Lock.png')),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        "Confirm Password",
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

                          kheight,
                          mainButton(
                              context: context,
                              buttonName: "Register",
                              bgColor: blueBackgroundColor,
                              textColor: whiteColor,
                              ontap: () {
                                BlocProvider.of<AuthBloc>(context)
                                    .add(AuthEvent.regWithEmailAndPass());
                              }),
                          kheight30,
                          Center(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushReplacementNamed('login');
                              },
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    color: blueBackgroundColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
