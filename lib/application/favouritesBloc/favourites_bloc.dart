import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerce/domain/Iauth/Iauth.dart';
import 'package:ecommerce/domain/core/Failures/appFailure.dart';
import 'package:ecommerce/domain/core/valueobject/valueobject.dart';
import 'package:ecommerce/domain/iapp/iapp.dart';
import 'package:ecommerce/domain/iapp/productEntity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
part 'favourites_bloc.freezed.dart';
part 'favourites_event.dart';
part 'favourites_state.dart';

@injectable
class FavouritesBloc extends Bloc<FavouritesEvent, FavouritesState> {
  final Iauth _auth;
  final IAppRepo _appRepo;
  FavouritesBloc(this._auth, this._appRepo) : super(FavouritesState.initial()) {
    on<FavouritesEvent>((event, emit) async{
      if(event is _FavouritesEventGetUserId){
     emit(state.copyWith(isLoading: true));
      final result = await _auth.getSignedUser();

      final out = result.fold(
          () => state.copyWith(
              isError: true,
              isLoading: false,
              optionSuccessFailure: const Some(Left(AppFailure.unexpected()))),
          (user) => state.copyWith(userId: user.id, isLoading: false));
      emit(out);
 
      }
      else if(event is _FavouritesEventGetFavourites){
 if (state.userId.hasData()) {

        emit(state.copyWith(isLoading: true));
        final result =
            await _appRepo.getFavouriteProducts(userId: state.userId,collectionName: 'Favourites');
        final out = result.fold(
            (l) => state.copyWith(
                optionSuccessFailure: Some(Left(l)), isError: true,isLoading: true),
            (products) => state.copyWith(optionSuccessFailure: Some(Right(unit)),
            favProducts: products,isLoading: false,isError: false

            
            ));
        emit(out);
      } else {
           print('user id  empty');
        emit(
          state.copyWith(
              optionSuccessFailure: Some(left(AppFailure.unexpected())),
              isError: true),
        );
      }
      }
     if(event is _FavouritesEventSetFavourites){
  if (state.userId.hasData()) {
        emit(state.copyWith(isLoading: true));
        final result = await _appRepo.setFavouriteProducts(
            appUserId: state.userId, productId: event.productId, collectionName: 'Favourites');
        final out = result.fold(
            (l) => state.copyWith(
                optionSuccessFailure: Some(Left(l)), isError: true,isLoading: false),
            (r) => state.copyWith(optionSuccessFailure: Some(Right(r)),isLoading: false));
        
        emit(out);
        add(const FavouritesEvent.getFavouriteProducts());
      } else {
        emit(
          state.copyWith(
              optionSuccessFailure: Some(left(const AppFailure.unexpected())),
              isError: true),
        );
      }
}
else if(event is _FavouritesEventRemoveFavourites){
 if (state.userId.hasData()) {
        emit(state.copyWith(miniLoading: true));
        final result = await _appRepo.removeFavouriteCartProducts(
          collectionName: 'Favourites',
            appUserId: state.userId, productId: event.productId);
        final out = result.fold(
            (l) => state.copyWith(
                optionSuccessFailure: Some(Left(l)), isError: true,miniLoading: false),
            (r) => state.copyWith(optionSuccessFailure: Some(Right(r)),miniLoading: false));
        
        emit(out);
        add(const FavouritesEvent.getFavouriteProducts());
      } else {
        emit(
          state.copyWith(
              optionSuccessFailure: Some(left(const AppFailure.unexpected())),
              isError: true),
        );
      }
} 


    },
          transformer: sequential()//for sequentially excuting two events , with the help of package called concurrency
    );

 


  }
}
