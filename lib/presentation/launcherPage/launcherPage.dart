
import 'package:ecommerce/core/colors.dart';
import 'package:ecommerce/presentation/Widgets/widgets.dart';
import 'package:ecommerce/presentation/logInReg/loginPage.dart';

import 'package:flutter/material.dart';



class LauncherPage extends StatelessWidget {
  const LauncherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      backgroundColor: blueBackgroundColor,
      body: Column(
        
        children: [
        
          const Padding(
            padding: EdgeInsets.only(top: 40,bottom: 20),
            child: Text("Find your\nGadget",textAlign: TextAlign.left,
            style: TextStyle(
              color: whiteColor,fontSize: 65,fontWeight: FontWeight.w800,
            ),),
          ),
          Expanded(
           
            child: Container(
              decoration: const BoxDecoration(
              
                image:DecorationImage(image:AssetImage('assets/images/onboard.png'))
              ),
              
              
              ),
            ),
          
          Padding(
            padding:  const EdgeInsets.only(bottom: 50,top: 40),
            child:mainButton(context: context, buttonName: "Get started",bgColor: whiteColor,textColor: blueBackgroundColor, ontap: () { Navigator.of(context)
              .pushReplacement(MaterialPageRoute(builder: (context) {
            return const LogInReg();
          })); }),
          ),
          
          
        ],
      ),
    );
  }
}