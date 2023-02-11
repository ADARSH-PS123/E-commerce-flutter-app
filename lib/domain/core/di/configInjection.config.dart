// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:ecommerce/application/authBloc/auth_bloc.dart' as _i19;
import 'package:ecommerce/application/CartBloc/cart_bloc.dart' as _i20;
import 'package:ecommerce/application/EditUserBloc/edit_user_bloc.dart' as _i21;
import 'package:ecommerce/application/favouritesBloc/favourites_bloc.dart'
    as _i22;
import 'package:ecommerce/application/main_bloc/main_bloc.dart' as _i14;
import 'package:ecommerce/application/NotificationCubit/notication_cubit.dart'
    as _i15;
import 'package:ecommerce/application/orderCubit/order_cubit.dart' as _i16;
import 'package:ecommerce/application/PaymentCubit/payment_cubit_cubit.dart'
    as _i17;
import 'package:ecommerce/application/productBloc/product_bloc_bloc.dart'
    as _i18;
import 'package:ecommerce/domain/iapp/iapp.dart' as _i3;
import 'package:ecommerce/domain/Iauth/Iauth.dart' as _i11;
import 'package:ecommerce/domain/iPaymentNotificationRepo/iPaymentNotificationRepo.dart'
    as _i9;
import 'package:ecommerce/infrastructure/app/appRepo.dart' as _i4;
import 'package:ecommerce/infrastructure/Auth/auth.dart' as _i12;
import 'package:ecommerce/infrastructure/PaymentNotificationRepo/PaymentNotificationRepo.dart'
    as _i10;
import 'package:firebase_auth/firebase_auth.dart' as _i13;
import 'package:firebase_storage/firebase_storage.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:image_picker/image_picker.dart' as _i8;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i6;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.IAppRepo>(() => _i4.AppRepo(
          gh<_i5.FirebaseFirestore>(),
          gh<_i6.InternetConnectionChecker>(),
          gh<_i7.FirebaseStorage>(),
          gh<_i8.ImagePicker>(),
        ));
    gh.factory<_i9.IPaymentRepo>(() => _i10.PaymentRepo());
    gh.lazySingleton<_i11.Iauth>(() => _i12.Auth(gh<_i13.FirebaseAuth>()));
    gh.factory<_i14.MainBloc>(() => _i14.MainBloc(
          gh<_i3.IAppRepo>(),
          gh<_i11.Iauth>(),
        ));
    gh.factory<_i15.NoticationCubit>(
        () => _i15.NoticationCubit(gh<_i9.IPaymentRepo>()));
    gh.factory<_i16.OrderCubit>(() => _i16.OrderCubit(
          gh<_i3.IAppRepo>(),
          gh<_i11.Iauth>(),
        ));
    gh.factory<_i17.PaymentCubitCubit>(
        () => _i17.PaymentCubitCubit(gh<_i9.IPaymentRepo>()));
    gh.factory<_i18.ProductWatcherBloc>(
        () => _i18.ProductWatcherBloc(gh<_i3.IAppRepo>()));
    gh.factory<_i19.AuthBloc>(() => _i19.AuthBloc(gh<_i11.Iauth>()));
    gh.factory<_i20.CartBloc>(() => _i20.CartBloc(
          gh<_i3.IAppRepo>(),
          gh<_i11.Iauth>(),
        ));
    gh.factory<_i21.EditUserBloc>(() => _i21.EditUserBloc(
          gh<_i3.IAppRepo>(),
          gh<_i11.Iauth>(),
        ));
    gh.factory<_i22.FavouritesBloc>(() => _i22.FavouritesBloc(
          gh<_i11.Iauth>(),
          gh<_i3.IAppRepo>(),
        ));
    return this;
  }
}
