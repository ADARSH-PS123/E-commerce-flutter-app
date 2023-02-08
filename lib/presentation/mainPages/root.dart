import 'package:ecommerce/core/colors.dart';
import 'package:ecommerce/presentation/Widgets/noResultPage.dart';

import 'package:ecommerce/presentation/mainPages/account/account.dart';
import 'package:ecommerce/presentation/mainPages/cart/cart.dart';
import 'package:ecommerce/presentation/mainPages/favorites/favourites.dart';

import 'package:ecommerce/presentation/mainPages/homePage/home.dart';
import 'package:ecommerce/presentation/mainPages/homePage/widgets/productDetails.dart';
import 'package:flutter/material.dart';


// Here app starts , bottom nav bar and pages 
  ValueNotifier<int> indexNotifier = ValueNotifier(0);
class HomePage extends StatelessWidget {

  HomePage({Key? key}) : super(key: key);
final pages = [Home(),const Favourites(),const MyAccount(), const Cart()];
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
    return ValueListenableBuilder(
        valueListenable: indexNotifier,
        builder: (context,int index, _) {
          return WillPopScope(
            onWillPop: showExitPopup,
            child: Scaffold(
              backgroundColor: appBackgroundColor,
                   
              body: pages[index],
              bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                elevation: 0,
                  backgroundColor: appBackgroundColor,
                  currentIndex: indexNotifier.value,
                  onTap: (index) {
                    indexNotifier.value = index;
                  },unselectedIconTheme:  const  IconThemeData(color: balckColor),
                  selectedIconTheme:
                   const    IconThemeData(color: blueBackgroundColor
                       ),
             
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                        label: "Home",
                        icon: ImageIcon(AssetImage('assets/images/Home.png'))),
                    BottomNavigationBarItem(
                        label: "Favourites",
                        icon: ImageIcon(AssetImage('assets/images/Heart.png'))),
                    BottomNavigationBarItem(
                        label: "Account",
                        icon: ImageIcon(AssetImage('assets/images/Profile.png'))),
                    BottomNavigationBarItem(
                        label: "Cart",
                        icon: ImageIcon(AssetImage('assets/images/Buy.png')))
                  ]),
            ),
          );
        });
  }
}
