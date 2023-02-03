import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/application/CartBloc/cart_bloc.dart';
import 'package:ecommerce/application/favouritesBloc/favourites_bloc.dart';
import 'package:ecommerce/core/colors.dart';
import 'package:ecommerce/core/fonts.dart';
import 'package:ecommerce/core/spacers.dart';
import 'package:ecommerce/domain/iapp/productEntity.dart';
import 'package:ecommerce/presentation/Widgets/widgets.dart';
import 'package:ecommerce/presentation/mainPages/root.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductDetails extends StatelessWidget {
  final Product product;
  ProductDetails({Key? key, required this.product}) : super(key: key);

  ValueNotifier<int> pageNoNotifier = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackgroundColor,
      appBar: topBar(
        showAlertDialog: false,
          title: "",
          trailing: BlocConsumer<FavouritesBloc, FavouritesState>(
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
              return IconButton(
                  onPressed: () {
                    if (state.favProducts.contains(product)) {
                      BlocProvider.of<FavouritesBloc>(context).add(
                          FavouritesEvent.removeFavouriteProducts(product.id));
                    } else {
                      BlocProvider.of<FavouritesBloc>(context).add(
                          FavouritesEvent.setFavouriteProducts(product.id));
                    }
                  },
                  icon: state.isLoading
                      ? const SizedBox(
                          height: 15,
                          width: 15,
                          child: CircularProgressIndicator(
                            color: blueBackgroundColor,
                          ),
                        )
                      : Icon(
                          Icons.favorite_rounded,
                          color: state.favProducts.contains(product)
                              ? redColor
                              : greyColor,
                        ));
            },
          ),
          context: context),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 100),
        child: Column(
          children: [
            ValueListenableBuilder(
                valueListenable: pageNoNotifier,
                builder: (context, int index, _) {
                  return SizedBox(
                      height: 260,
                      child: Column(
                        children: [
                          Hero(
                            tag: product.id,
                            child: CarouselSlider.builder(
                              options: CarouselOptions(
                                  enableInfiniteScroll: false,
                                  onPageChanged: ((index, reason) =>
                                      pageNoNotifier.value = index),
                                  aspectRatio: 2 / 1.5,
                                  viewportFraction: .6,
                                  height: 230,
                                  enlargeCenterPage: true,
                                  enlargeStrategy:
                                      CenterPageEnlargeStrategy.height),
                              itemCount: product.productPhotos.length,
                              itemBuilder: (BuildContext context, int itemIndex,
                                      int pageViewIndex) =>
                                  Image.network(
                                product.productPhotos[pageViewIndex]
                                    .getOrCrash(),
                                fit: BoxFit.cover,
                              )
                              /*    Image.asset(
                                product.productPhotos[pageViewIndex].getOrCrash(),
                                fit: BoxFit.cover,
                              ) */
                              ,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 7),
                            child: AnimatedSmoothIndicator(
                              effect: const ScrollingDotsEffect(
                                  fixedCenter: true,
                                  activeDotScale: 1.6,
                                  dotWidth: 8,
                                  dotHeight: 8,
                                  activeDotColor: blueBackgroundColor,
                                  paintStyle: PaintingStyle.fill,
                                  strokeWidth: 2),
                              count: product.productPhotos.length,
                              activeIndex: pageNoNotifier.value,
                            ),
                          )
                        ],
                      ));
                }),
            kheight15,
            Container(
              height: 400,
              padding: const EdgeInsets.symmetric(horizontal: 60),
              decoration: BoxDecoration(boxShadow: const [
                BoxShadow(blurRadius: 90, color: greyColor)
              ], color: whiteColor, borderRadius: borderRadius),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  kheight15,
                  Text(
                    product.productName.getOrCrash(),
                    maxLines: 1,
                    style: const TextStyle(fontSize: 28, fontWeight: semiBold),
                  ),
                  kheight30,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${product.rating.getOrElse(0)} Stars",
                        style: const TextStyle(fontSize: 15, fontWeight: bold),
                      ),
                      Text(
                        "${product.stock.getOrCrash()} Stocks left",
                        style: const TextStyle(fontSize: 15, fontWeight: bold),
                      ),
                    ],
                  ),
                  kheight15,
                  Text(
                    "${product.discountPercentage.getOrElse(0)} % Discount available",
                    style: const TextStyle(fontSize: 17, fontWeight: bold),
                  ),
                  kheight15,
                  Text(
                    product.productDescription.getOrCrash(),
                    maxLines: 3,
                    style: const TextStyle(fontSize: 15),
                  ),
                  kheight15,
                  Row(
                    children: const [
                      Text(
                        'Full description',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: bold,
                            color: blueBackgroundColor),
                      ),
                      ImageIcon(AssetImage('assets/images/Arrow - Right 2.png'))
                    ],
                  ),
                  kheight
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const SizedBox(
              height: 20,
              width: 20,
              child: CircularProgressIndicator(
                color: blueBackgroundColor,
              ),
            );
          }
          return appFloatingActionButton(
              context: context,
              price: product.price.getOrCrash().toString(),
              buttonName: state.cartProducts.map((cart) => cart.product).contains(product)
                  ? "Go to basket"
                  : 'Add to basket',
              onTap: () {
                if (state.cartProducts.map((cart) => cart.product).contains(product)) {
                  Navigator.pop(context);
                  indexNotifier.value = 3;
                }
                else{
                    BlocProvider.of<CartBloc>(context)
                    .add(CartEvent.setCartProducts(product.id));
                }
              
              },
              BackgroundColor: whiteColor);
        },
      ),
    );
  }
}
