import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/core/colors.dart';
import 'package:ecommerce/core/spacers.dart';
import 'package:ecommerce/domain/iapp/productEntity.dart';
import 'package:ecommerce/presentation/mainPages/homePage/widgets/productDetails.dart';
import 'package:flutter/material.dart';



class TabBarItem extends StatelessWidget {
  final List<Product> products;
  const TabBarItem({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: appBackgroundColor,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(left: 30),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext co) => ProductDetails(
                               product: products[index],
                            )));
                  },
                  child: SizedBox(
                    width: 220,
                    child: Stack(children: [
                      Positioned(
                        bottom: 15,
                        child: Container(
                          decoration: BoxDecoration(
                              color: whiteColor,
                              boxShadow:const [
                                 BoxShadow(color: greyColor, blurRadius: 35)
                              ],
                              borderRadius: BorderRadius.circular(20)),
                          width: 220,
                          height: 285,
                        ),
                      ),
                      Positioned(
                          bottom: 75,
                          left: 0,
                          right: 0,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Column(
                              children: [
                                Hero(
                                  tag: products[index].id,
                                  child:   
                                    
                                     ClipRRect(
                                      borderRadius: BorderRadius.circular(78),
                                       child:products[0]
                                                  .thubnail.hasData()? CachedNetworkImage(
                                                    height: 159,
                                                    width: 159,
                                                    fit: BoxFit.cover,
                                              imageUrl:
                                                    products[0]
                                                  .thubnail.getOrCrash(),
                                                  errorWidget:(context, url, error) => Center(child: Text("Couldn't load image"),),
                                                
                                                  ):Icon(Icons.error)
                                                  ,
                                     ),
                            
                                  
                                ),
                                kheight30,
                                Text(
                                  products[index]
                                      .productName
                                      .getOrElse('Not found'),
                                  maxLines: 1,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: EdgeInsets.only( top: 5),
                                  child: Text(
                                    " Rating of : " +
                                    products[index]
                                            .rating
                                            .getOrElse(0.0)
                                            .toString() 
                                        
                                      ,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: greyColor),
                                    maxLines: 2,
                                  ),
                                ),
                                 Padding(
                                  padding: EdgeInsets.only(bottom: 11, top: 5),
                                  child: Text(
                                  
                                        " ${products[index].discountPercentage.getOrElse(0.00)} % discount available",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: greyColor),
                                    maxLines: 2,
                                  ),
                                ),
                                Text(
                                  products[index]
                                          .price
                                          .getOrCrash()
                                          .toString() +
                                      " \$",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: blueBackgroundColor),
                                ),
                              ],
                            ),
                          ))
                    ]),
                  ),
                ),
              ),
          separatorBuilder: (context, index) => SizedBox(
                width: 0,
              ),
          itemCount: products.length),
    );
  }
}
