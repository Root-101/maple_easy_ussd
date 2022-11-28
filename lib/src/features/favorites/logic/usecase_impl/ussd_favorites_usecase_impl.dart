import 'package:easy_ussd/ussd_exporter.dart';

class USSDFavoritesUseCaseImpl extends USSDFavoritesUseCase {
  USSDFavoritesRepo _favoriteActionRepo;

  USSDFavoritesUseCaseImpl(this._favoriteActionRepo);

  @override
  void changeFavorite(USSDCode action) {
    USSDFavoriteActionDomain domain =
        _favoriteActionRepo.findByActionKey(action.key);
    domain.favorite = !domain.favorite;
    domain.lastUpdatedOn = DateTime.now();

    _favoriteActionRepo.edit(domain);
  }

  @override
  List<String> favoritesKeys() {
    List<USSDFavoriteActionDomain> favorites =
        _favoriteActionRepo.findFavorites();

    favorites.sort((a, b) => a.lastUpdatedOn.compareTo(b.lastUpdatedOn));

    return favorites.map((e) => e.actionKey).toList();
  }

  @override
  bool isFavorite(USSDCode action) {
    return _favoriteActionRepo.findByActionKey(action.key).favorite;
  }
}
