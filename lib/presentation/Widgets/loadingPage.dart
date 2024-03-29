import 'package:ecommerce/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: appBackgroundColor,
      body: Center(
        child: CircularProgressIndicator(
          color: blueBackgroundColor,
          strokeWidth:1 ,
        ),
      ),
    )
    ;
  }
}