import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/core/colors.dart';
import 'package:ecommerce/core/spacers.dart';
import 'package:flutter/material.dart';

// profile page top section , it contains profile picture user name and address
Widget profileStack(
    {required String imageUrl,
    required String userName,
    required String pincode,
    required String address}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 15),
    child: SizedBox(
        height: 190,
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                    color: whiteColor, borderRadius: borderRadius),
                height: 167,
              ),
            ),
            Column(
              children: [
                CircleAvatar(
                  radius: 38,
                  backgroundImage: imageUrl.isNotEmpty
                      ? CachedNetworkImageProvider(imageUrl) as ImageProvider
                      : const AssetImage('assets/images/user.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 23, right: 23),
                  child: Text(
                    userName,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w600),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 23, vertical: 10),
                  child: Row(
                    children: [
                      const Padding(
                          padding: EdgeInsets.only(right: 19),
                          child: Icon(Icons.location_on)),
                      Flexible(child: Text('Address : $address', maxLines: 2)),
                      
                    ],
                  ),
                ),
                  Flexible(child: Text('Pincode : $pincode', maxLines: 1))
              ],
            )
          ],
        )),
  );
}

//profile page list tiles
Widget profileTiles({required String optionName, required Function() onTap}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(color: whiteColor, borderRadius: borderRadius),
      height: 60,
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            optionName,
            style: const TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
          ),
          const ImageIcon(AssetImage('assets/images/Arrow - Right 2.png'))
        ],
      ),
    ),
  );
}
