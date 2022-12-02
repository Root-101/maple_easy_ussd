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
  List<USSDFavoritesCodes> findFavorites() {
    List<String> favoriteKeys = uc.favoritesKeys();
    print(favoriteKeys);

    List<USSDFavoritesCodes> allActions = [
      ...PlansGroupsData.favoritesPlansList(),
      ...USSDConsultWidgets.FAVORITES(),
    ];

    List<USSDFavoritesCodes> fav = [];

    favoriteKeys.forEach((key) {
      fav.add(allActions.firstWhere((action) => key == action.code.key));
    });

    return fav;
  }
}
