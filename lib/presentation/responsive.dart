import 'package:ecommerce/core/screenWidths.dart';
import 'package:flutter/material.dart';


class Responsive extends StatelessWidget {
 final Widget mobileScreen , largeScreen;

  const Responsive({super.key,required this.mobileScreen, required this.largeScreen});
  static bool isMobile(BuildContext context)=> MediaQuery.of( context).size.width <= mobileWidth;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder:(context,BoxConstraints constrains) {
      //larger screens 
     
      if(constrains.maxWidth > mobileWidth){
        return largeScreen;
      }
      else{
        return mobileScreen;
      }
    },);
  }
}