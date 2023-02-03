import 'package:ecommerce/presentation/Widgets/noResultPage.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NoInternet extends StatelessWidget {
  const NoInternet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NoResultPage(imagePath: 'assets/images/noInternet.png', message: 'No internet connection please refresh', messageHead: "No connection", buttonName: "Refresh", appBarName: "No connecton");
  }
}