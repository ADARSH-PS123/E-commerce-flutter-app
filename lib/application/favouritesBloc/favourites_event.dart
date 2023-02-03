part of 'favourites_bloc.dart';

@freezed
class FavouritesEvent with _$FavouritesEvent{
   const factory FavouritesEvent.getUserId() = _FavouritesEventGetUserId;
  const factory FavouritesEvent.getFavouriteProducts() = _FavouritesEventGetFavourites;
    const factory FavouritesEvent.setFavouriteProducts(UniqueId productId) = _FavouritesEventSetFavourites;
        const factory FavouritesEvent.removeFavouriteProducts(UniqueId productId) = _FavouritesEventRemoveFavourites;
}

