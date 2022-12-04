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
  List<USSDPlanItemModel> findFavorites_Plans() {
    List<String> favoriteKeys = uc.favoritesKeys();

    List<USSDPlanItemModel> fav = [];

    favoriteKeys.forEach((key) {

      USSDPlanItemModel? finded = USSDPlansGroupsData.plansList().firstWhereOrNull(
            (action) => key == action.function.key,
      );
      if (finded != null) {
        fav.add(
          finded!,
        );
      }
    });

    return fav;
  }

  @override
  List<USSDConsultItemModel> findFavorites_Consults() {
    List<String> favoriteKeys = uc.favoritesKeys();

    List<USSDConsultItemModel> fav = [];

    favoriteKeys.forEach((key) {

      USSDConsultItemModel? finded = USSDConsultWidgets.CONSULTS.firstWhereOrNull(
            (action) => key == action.function.key,
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
