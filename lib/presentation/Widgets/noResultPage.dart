


import 'package:ecommerce/application/main_bloc/main_bloc.dart';
import 'package:ecommerce/core/colors.dart';
import 'package:ecommerce/presentation/Widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// This page is used for showing warning or no result messages to user like result not found
class NoResultPage extends StatelessWidget {
  final Function() ?onTap;
  final String message, buttonName, imagePath, appBarName, messageHead;

  const NoResultPage(
      {Key? key,
      this.onTap,
      required this.imagePath,
      required this.message,
      required this.messageHead,
      required this.buttonName,
      required this.appBarName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<bool> showExitPopup() async {
      return await showDialog( //show confirm dialogue 
        //the return value will be from "Yes" or "No" options
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Exit App'),
          content: const Text('Do you want to exit an App?'),
          actions:[
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(false),
               //return false when click on "NO"
              child:const Text('No'),
            ),

            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(true), 
              //return true when click on "Yes"
              child:const Text('Yes'),
            ),

          ],
        ),
      )??false; //if showDialouge had returned null, then return false
    }
    return WillPopScope(
      onWillPop: showExitPopup,
      child: Scaffold(
        backgroundColor: appBackgroundColor,
        appBar: topBar(
            title: appBarName,
            trailing: const SizedBox(),
            context: context,
            showAlertDialog: false,
            showLeading: false),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 23,
          ),
          child: BlocListener<MainBloc, MainState>(
            listener: (context, state) {
      
           state.maybeMap(orElse: (){},
           authenticated:(value) 
           { Navigator.of(context).pushReplacementNamed('homePage');},
           notAuthenticated: (value) {
                   Navigator.of(context).pushReplacementNamed('login');
           },
           
           );
          
            },
            child: Column(
              children: [
                Center(child: Image.asset(imagePath)),
                Text(
                  messageHead,
                  style:
                      const TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18),
                  child: Text(
                    message,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
    
                 mainButton(
                    width: 224,
                    height: 50,
                    context: context,
                    buttonName: buttonName,
                    bgColor: skyBlue,
                    textColor: whiteColor,
                    ontap:onTap?? () {
                           BlocProvider.of<MainBloc>(context).add(const MainEvent.onlinewatcher());
                    }) 
              ],
            ),
          ),
        ),
      ),
    );
  }
}
