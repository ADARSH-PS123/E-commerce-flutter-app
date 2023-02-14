import 'dart:async';
import 'dart:developer';

import 'dart:io';

import 'package:ecommerce/domain/Iauth/address.dart';
import 'package:ecommerce/domain/Iauth/user.dart';

import 'package:ecommerce/domain/core/valueobject/valueobject.dart';
import 'package:ecommerce/domain/core/Failures/appFailure.dart';
import 'package:dartz/dartz.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce/domain/iapp/cartEntity.dart';
import 'package:ecommerce/domain/iapp/iapp.dart';
import 'package:ecommerce/domain/iapp/productEntity.dart';

import 'package:ecommerce/infrastructure/app/productDto.dart';
import 'package:ecommerce/infrastructure/app/userdto.dart';

import 'package:firebase_storage/firebase_storage.dart';

import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

@Injectable(as: IAppRepo)
class AppRepo implements IAppRepo {
  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;
  final ImagePicker _imagePicker;
  final InternetConnectionChecker _internetChecker;
  AppRepo(
      this._firestore, this._internetChecker, this._storage, this._imagePicker);

  //used with extension
  @override
  Future<Either<AppFailure, DocumentSnapshot<Map<String, dynamic>>>>
      getUserCollection({required UniqueId uid}) async {
    try {
      final userRef =
          await _firestore.collection('User').doc(uid.getOrCrash()).get();

      return Right(userRef);
    } catch (e) {
      return const Left(AppFailure.unexpected());
    }
  }

  //used with extension
  @override
  Future<void> setUserinfoAfterRegister(
      {required AppUserDto appUserDto}) async {
    final obj = FullUserAddress.empty();
    final data = FullUserAddressDto.fromDomain(obj).toJson();

    await _firestore
        .collection('User')
        .doc(appUserDto.id)
        .set(appUserDto.toJson());
  }

  @override
  Future<Either<AppFailure, Unit>> editUserData({required AppUser user}) async {
    try {
      await _firestore
          .collection('User')
          .doc(user.id.getOrCrash())
          .set(AppUserDto.fromDomain(user).toJson());
      return const Right(unit);
    } catch (e) {
      print(e.toString() + "---------------------888");
      return const Left(AppFailure.unexpected());
    }
  }

  @override
  Future<Either<AppFailure, AppUser>> editProfilePicture(
      {required String destination, required bool isDeletion}) async {
    try {
      if (isDeletion) {
        await _storage
            .ref()
            .child('profile')
            .child(destination.trim())
            .delete();
        await _firestore
            .collection('User')
            .doc(destination.trim())
            .update({'profilePhoto': ''});
        final docCredential =
            await _firestore.collection('User').doc(destination.trim()).get();

        if (docCredential.data() != null) {
          return Right(
              AppUserDto.fromJson(docCredential.data() as Map<String, dynamic>)
                  .toDomain());
        } else {
          return const Left(AppFailure.unableToUpdate());
        }
      } else {
        final image = await _imagePicker.pickImage(source: ImageSource.gallery);
        if (image != null) {
          var ref = _storage.ref().child('profile').child(destination.trim());

          await ref.putFile(File(image.path));

          final imageUrl = await ref.getDownloadURL();

          await _firestore
              .collection('User')
              .doc(destination.trim())
              .update({'profilePhoto': imageUrl});
          final docCredential = await FirebaseFirestore.instance
              .collection('User')
              .doc(destination.trim())
              .get();

          if (docCredential.data() != null) {
            return Right(AppUserDto.fromJson(
                    docCredential.data() as Map<String, dynamic>)
                .toDomain());
          } else {
            return const Left(AppFailure.unableToUpdate());
          }
        } else {
          return const Left(AppFailure.userCancelled());
        }
      }
    } catch (e) {
      return const Left(AppFailure.unexpected());
    }
  }

  @override
  Stream<InternetConnectionStatus> isOnline() async* {
    Stream<InternetConnectionStatus> data = _internetChecker.onStatusChange;

    yield* data;
  }

  @override
  Future<bool> onlineStatus() async {
    final data = await _internetChecker.hasConnection;
    return data;
  }

  @override
  Stream<Either<AppFailure, List<Product>>> getProducts() async* {
    try {
      final data = _firestore.collection('Product').limit(15).snapshots().map(
          (qSnap) => Right<AppFailure, List<Product>>(qSnap.docs
              .map((doc) => ProductDto.fromJson(doc.data()).toDomain())
              .toList()));

      yield* data;
    } catch (e) {
      yield const Left(AppFailure.unableToUpdate());
    }
  }

  @override
  Future<void> setup() async {
    final data = await _firestore.collection('Product').get();
    data.docs.forEach((element) {
      final ss = ProductDto.fromJson(element.data()).toDomain();
    });
  }

  @override
  Future<Either<AppFailure, List<Product>>> getFavouriteProducts(
      {required UniqueId userId, required String collectionName}) async {
    try {
      final data = await _firestore
          .collection('User')
          .doc(userId.getOrCrash())
          .collection(collectionName)
          .get();
      if (data.size == 0) {
        return const Right([]);
      }
      final result = data.docs
          .map(
            (e) => e.data()['productRef'],
          )
          .toList();
      var dd = await Future.wait(
          result.map((e) async => await _firestore.doc(e).get()).toList());
      final hh = dd
          .map(
            (e) => ProductDto.fromJson(e.data()!.cast()).toDomain(),
          )
          .toList();

      return Right(hh);
    } catch (e) {
      return const Left(AppFailure.unableToUpdate());
    }
  }

  @override
  Future<Either<AppFailure, Unit>> setFavouriteProducts(
      {required UniqueId appUserId,
      required UniqueId productId,
      required String collectionName}) async {
    try {
      final data = await _firestore
          .collection('User')
          .doc(appUserId.getOrCrash())
          .collection(collectionName)
          .doc(productId.getOrCrash())
          .set({'productRef': 'Product/${productId.getOrCrash()}'});
      return const Right(unit);
    } catch (e) {
      print(e.toString() + "catch block set fav============");
      return const Left(AppFailure.unableToUpdate());
    }
  }

  @override
  Future<Either<AppFailure, List<Product>>> searchProduct(
      {required ProductValueObject serachData}) async {
          log('search product **********');
    try {
      if (serachData.hasData()) {
        var data = await _firestore
            .collection('Product')
            .where('title', isGreaterThanOrEqualTo: serachData.getOrCrash())
            .where('title', isLessThan: "${serachData.getOrCrash()}z")
            .get();
        if (data.size == 0) {
          data = await _firestore
              .collection('Product')
              .where('category',
                  isGreaterThanOrEqualTo: serachData.getOrCrash())
              .where('category', isLessThan: "${serachData.getOrCrash()}z")
              .get();
        }
        if (data.size == 0) {
          data = await _firestore
              .collection('Product')
              .where('brand', isGreaterThanOrEqualTo: serachData.getOrCrash())
              .where('brand', isLessThan: "${serachData.getOrCrash()}z")
              .get();
        }

        final result = data.docs
            .map((e) => ProductDto.fromJson(e.data()).toDomain())
            .toList();
        result.forEach(
          (element) {
            print(element.productName.toString() + "888888888888");
          },
        );
        return Right(result);
      } else {
        return const Right([]);
      }
    } catch (e) {
      print(e.toString() + "catch bloc  search =============");
      return Left(AppFailure.unableToUpdate());
    }
  }

  @override
  Future<Either<AppFailure, Unit>> removeFavouriteCartProducts(
      {required UniqueId appUserId,
      required UniqueId productId,
      required String collectionName}) async {
          log('remove favourite products **********');
    try {
      print('calling');
      await _firestore
          .collection('User')
          .doc(appUserId.getOrCrash())
          .collection(collectionName)
          .doc(productId.getOrCrash())
          .delete();

      return const Right(unit);
    } catch (e) {
      print(e.toString() + "catch block remove fav============");
      return const Left(AppFailure.unableToUpdate());
    }
  }

  @override
  Future<Either<AppFailure, Unit>> changeCartQuantity(
      {required UniqueId productId,
      required UniqueId userId,
      required CountValueObject quantity}) async {
          log('change cart quantity **********');
    try {
      await _firestore
          .collection('User')
          .doc(userId.getOrCrash())
          .collection('Cart')
          .doc(productId.getOrCrash())
          .update({'quantity': quantity.getOrElse(0)});
      return const Right(unit);
    } catch (e) {
      return const Left(AppFailure.unableToUpdate());
    }
  }

  @override
  Future<Either<AppFailure, List<Cart>>> getCartProduct(
      {required UniqueId userId}) async {
          log('get cart product **********');
    try {
      final cartCollection = await _firestore
          .collection('User')
          .doc(userId.getOrCrash())
          .collection('Cart')
          .orderBy('quantity', descending: true)
          .get();
      if (cartCollection.size == 0) {
        return const Right([]);
      } else {
        final cartLs = await Future.wait(cartCollection.docs.map((e) async {
          final productDoc = await _firestore.doc(e.data()['productRef']).get();
          final product =
              ProductDto.fromJson(productDoc.data() as Map<String, dynamic>)
                  .toDomain();
          CountValueObject quantity;
          if (e.data().keys.contains('quantity')) {
            quantity = CountValueObject(e.data()['quantity']);
          } else {
            quantity = CountValueObject(0);
          }
          return Cart(quantity: quantity, product: product);
        }).toList());

        return Right(cartLs);
      }
    } catch (e) {
      return const Left(AppFailure.insufficientPermissions());
    }
  }

  @override
  Future<Either<AppFailure, Unit>> setCartProducts(
      {required UniqueId appUserId, required UniqueId productId}) async {
          log('setcart product **********');
    try {
      await _firestore
          .collection('User')
          .doc(appUserId.getOrCrash())
          .collection('Cart')
          .doc(productId.getOrCrash())
          .set({
        'productRef': 'Product/${productId.getOrCrash()}',
        'quantity': 1
      });
      return const Right(unit);
    } catch (e) {
      print(e.toString() + "catch block set cart============");
      return const Left(AppFailure.unableToUpdate());
    }
  }

  @override
  Future<Either<AppFailure, List<Cart>>> getOrderHistoryProduct(
      {required UniqueId userId}) async{
          log('Get order history product **********');
   try{
      final cartCollection = await _firestore
          .collection('User')
          .doc(userId.getOrCrash())
          .collection('OrderHistory')
          .get();
             if (cartCollection.size == 0) {
        return const Right([]);
      } else {
        final cartLs = await Future.wait(cartCollection.docs.map((e) async {
          final productDoc = await _firestore.doc(e.data()['productRef']).get();
          final product =
              ProductDto.fromJson(productDoc.data() as Map<String, dynamic>)
                  .toDomain();
          CountValueObject quantity;
          if (e.data().keys.contains('quantity')) {
            quantity = CountValueObject(e.data()['quantity']);
          } else {
            quantity = CountValueObject(0);
          }
          return Cart(quantity: quantity, product: product);
        }).toList());

        return Right(cartLs);
      }
    } catch (e) {
      return const Left(AppFailure.insufficientPermissions());
    }
   }
  
  

  @override
  Future<Either<AppFailure, Unit>> moveCartProductsToOrderHistory(
      {required UniqueId appUserId}) async {
        log('move cart product to history **********');
    try {
      WriteBatch writeBatch = _firestore.batch();
      final cartCollection = await _firestore
          .collection('User')
          .doc(appUserId.getOrCrash())
          .collection('Cart')
          .get();
      cartCollection.docs.forEach(
        (docSnap) {
          writeBatch.set(
              _firestore
                  .collection('User')
                  .doc(appUserId.getOrCrash())
                  .collection('OrderHistory')
                  .doc(docSnap.id),
              docSnap.data());
            writeBatch.delete(
              _firestore
                  .collection('User')
                  .doc(appUserId.getOrCrash())
                  .collection('Cart')
                  .doc(docSnap.id),
             );
        },
      );
      await writeBatch.commit();
      

      log('-------------------------');

      return const Right(unit);
    } catch (e) {
      return const Left(AppFailure.insufficientPermissions());
    }
  }
}
