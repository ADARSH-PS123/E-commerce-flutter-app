import 'package:ecommerce/core/colors.dart';
import 'package:ecommerce/core/spacers.dart';

import 'package:flutter/material.dart';

Widget mainButton(
    {required BuildContext context,
    required String buttonName,
    double? width,
    double? height,
    required Color bgColor,
    required Color textColor,
    required Function() ontap}) {
  return SizedBox(
    height: height ?? 65,
    width: width ?? 314,
    child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: bgColor,
            shape: RoundedRectangleBorder(borderRadius: borderRadius)),
        onPressed: ontap,
        child: Text(buttonName,
            style: TextStyle(
                color: textColor, fontSize: 20, fontWeight: FontWeight.bold))),
  );
}

PreferredSize topBar(
    {required String title,
    required Widget trailing,
  required  bool showAlertDialog,
    required BuildContext context,
    bool showLeading = true}) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(80),
    child: Padding(
      padding: const EdgeInsets.only(top: 25, right: 0),
      child: AppBar(
        elevation: 0,
        backgroundColor: appBackgroundColor,
        leading: showLeading
            ? GestureDetector(
                onTap: () {
                  showAlertDialog ==true?
                  showDialog(
                      context: context,
                      builder: (builder) {
                        return AlertDialog(
                          title: const Text('Do you want to exit ?'),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context, false);
                                },
                                child: const Text('No')),
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context, true);
                                  Navigator.of(context).pop();
                                },
                                child: const Text('Yes '))
                          ],
                        );
                      }):Navigator.of(context).pop();
                },
                child: const Icon(
                  Icons.navigate_before,
                  color: balckColor,
                ))
            : const SizedBox(),
        title: Text(title),
        centerTitle: true,
        titleTextStyle: const TextStyle(
            color: balckColor, fontWeight: FontWeight.bold, fontSize: 18),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: trailing,
          )
        ],
      ),
    ),
  );
}

Widget appFloatingActionButton(
    {required BuildContext context,
   required String price,
    required String buttonName,
    required Function() onTap,
    required Color BackgroundColor}) {
  return Container(
    color: BackgroundColor,
    height: 120,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Total",
              style: TextStyle(fontSize: 16),
            ),
            Text((price + " \$"),
                style: TextStyle(
                    fontSize: 16,
                    color: blueBackgroundColor,
                    fontWeight: FontWeight.bold))
          ],
        ),
        mainButton(
            context: context,
            buttonName: buttonName,
            bgColor: blueBackgroundColor,
            textColor: whiteColor,
            ontap: onTap)
      ],
    ),
  );
}

class ShowSnakBar {
  static void snakbar(String content, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        content,
        style: TextStyle(color: balckColor),
      ),
      backgroundColor: whiteColor,
      duration: const Duration(seconds: 3),
    ));
  }

  static void snakbarProgressIndicator(String content, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: CircularProgressIndicator(color: blueBackgroundColor),
      backgroundColor: whiteColor,
      duration: Duration(seconds: 3),
    ));
  }

  ShowSnakBar._();
}

Widget showAppAlert(BuildContext context, String message) {
  return AlertDialog(
    title: Text(message),
    actions: [
      TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('No')),
      TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Yes '))
    ],
  );
}
