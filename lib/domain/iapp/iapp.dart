import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerce/domain/Iauth/user.dart';
import 'package:ecommerce/domain/core/Failures/appFailure.dart';

import 'package:ecommerce/domain/core/valueobject/valueobject.dart';
import 'package:ecommerce/domain/iapp/cartEntity.dart';
import 'package:ecommerce/domain/iapp/productEntity.dart';
import 'package:ecommerce/infrastructure/app/userdto.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class IAppRepo {
  Future<void> setUserinfoAfterRegister({required AppUserDto appUserDto});
  Future<Either<AppFailure, DocumentSnapshot<Map<String, dynamic>>>>
      getUserCollection({required UniqueId uid});
  Stream<InternetConnectionStatus> isOnline();
  Future<bool> onlineStatus();


  Future<Either<AppFailure,Unit>> editUserData({required AppUser user});
  Future<Either<AppFailure, AppUser>> editProfilePicture(
      {required String destination, required bool isDeletion});



  Stream<Either<AppFailure, List<Product>>> getProducts();
 
  Future<Either<AppFailure, List<Product>>> getFavouriteProducts(
      {required UniqueId userId, required String collectionName});
  Future<Either<AppFailure, Unit>> setFavouriteProducts(
      {required UniqueId appUserId,
      required UniqueId productId,
      required String collectionName});
  Future<Either<AppFailure, List<Product>>> searchProduct(
      {required ProductValueObject serachData});
  Future<Either<AppFailure, Unit>> removeFavouriteCartProducts(
      {required UniqueId appUserId,
      required UniqueId productId,
      required String collectionName});
  Future<Either<AppFailure, Unit>> changeCartQuantity(
      {required UniqueId productId,
      required UniqueId userId,
      required CountValueObject quantity});

    Future<Either<AppFailure, List<Cart>>> getCartProduct({

    required UniqueId userId,
  });
   Future<Either<AppFailure, Unit>> setCartProducts(
      {required UniqueId appUserId,
      required UniqueId productId,
     });

     Future<Either<AppFailure, Unit>> moveCartProductsToOrderHistory(
      {required UniqueId appUserId,
      
     });
        Future<Either<AppFailure, List<Cart>>> getOrderHistoryProduct({

    required UniqueId userId,
  });
 

     
}
