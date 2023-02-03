part of 'favourites_bloc.dart';

@freezed
class FavouritesState with _$FavouritesState {
  const factory FavouritesState(
      {required List<Product> favProducts,
      required UniqueId userId,
      required bool isLoading,required bool miniLoading,
      required Option<Either<AppFailure, Unit>> optionSuccessFailure,
      required bool isError}) = _FavouritesState;
  factory FavouritesState.initial() {
    return FavouritesState(
      miniLoading: false,
        favProducts: [],
        userId: UniqueId.fromBackend(''),
        isLoading: false,
        optionSuccessFailure: none(),
        isError: false);
  }
}
