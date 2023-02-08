import 'package:ecommerce/presentation/Widgets/noResultPage.dart';
import 'package:flutter/material.dart';


class NoInternet extends StatelessWidget {
  const NoInternet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const NoResultPage(
        imagePath: 'assets/images/noInternet.png',
        message: 'No internet connection , try after some time',
        messageHead: "No connection",
        buttonName: "Refresh",
        appBarName: "No connecton");
  }
}
