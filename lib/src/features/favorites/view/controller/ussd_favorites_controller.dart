import 'package:get/get.dart';
import 'package:easy_ussd/ussd_exporter.dart';

abstract class USSDFavoritesController extends GetxController {
  void changeFavorite(USSDCode action);

  bool isFavoriteAction(USSDCode action);

  List<USSDFavoritesCodes> findFavorites_Plans();

  List<USSDFavoritesCodes> findFavorites_Consults();
}
