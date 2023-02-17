import 'package:ecommerce/application/productBloc/product_bloc_bloc.dart';
import 'package:ecommerce/core/colors.dart';
import 'package:ecommerce/presentation/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

PreferredSize homeAppBar(
  BuildContext context,
  GlobalKey<ScaffoldState> _scaffoldKey,
  void Function(String)? onChanged,
) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(100),
    child: Padding(
      padding: Responsive.isMobile(context)
          ? const EdgeInsets.symmetric(vertical: 20, horizontal: 30)
          : const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      child: AppBar(
        backgroundColor: appBackgroundColor,
        shadowColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const ImageIcon(
            AssetImage('assets/images/menu-bar.png'),
            color: balckColor,
          ),
          onPressed: () {
            _scaffoldKey.currentState!.openDrawer();
          },
        ),
        title: SizedBox(
          height: 55,
          width: Responsive.isMobile(context) ? double.infinity : 300,
          child: TextFormField(
            onChanged: onChanged,
            initialValue: context
                .read<ProductWatcherBloc>()
                .state
                .searchData
                .getOrElse(''),
            decoration: InputDecoration(
                hintText: "Search",
                hintStyle: const TextStyle(color: greyColor),
                prefixIcon: const Padding(
                  padding: EdgeInsets.all(12),
                  child: ImageIcon(
                      size: 10,
                      color: balckColor,
                      AssetImage('assets/images/Search.png')),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide:
                        const BorderSide(color: blueBackgroundColor, width: 2)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      color: greyColor,
                    ))),
          ),
        ),
      ),
    ),
  );
}

Widget itemNotFoundPage() {
  return SingleChildScrollView(
    padding: const EdgeInsets.symmetric(horizontal: 43),
    child: Column(
      children: [
        Center(child: Image.asset('assets/images/itemNotFound.png')),
        Text(
          'Item not found',
          style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 18),
          child: Text(
            'Try a more generic search term or try looking for alternative products.',
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ],
    ),
  );
}
