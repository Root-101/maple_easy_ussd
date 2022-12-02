import 'package:get/get.dart';
import 'package:easy_ussd/ussd_exporter.dart';

class USSDFavoritesControllerImpl extends USSDFavoritesController {
  USSDFavoritesUseCase uc;

  USSDFavoritesControllerImpl(this.uc);

  @override
  bool isFavoriteAction(USSDCode action) {
    return uc.isFavorite(action);
  }

  @override
  void changeFavorite(USSDCode action) {
    uc.changeFavorite(action);
    update();
  }

  @override
  List<USSDFavoritesCodes> findFavorites_Plans() {
    return _filterFavorites(
      PlansGroupsData.favoritesPlansList(),
    );
  }

  @override
  List<USSDFavoritesCodes> findFavorites_Consults() {
    return _filterFavorites(
      USSDConsultWidgets.FAVORITES(),
    );
  }

  List<USSDFavoritesCodes> _filterFavorites(
      List<USSDFavoritesCodes> allActions) {
    List<String> favoriteKeys = uc.favoritesKeys();

    List<USSDFavoritesCodes> fav = [];

    favoriteKeys.forEach((key) {

      USSDFavoritesCodes? finded = allActions.firstWhereOrNull(
        (action) => key == action.code.key,
      );
      if (finded != null) {
        fav.add(
          finded!,
        );
      }
    });

    return fav;
  }
}
