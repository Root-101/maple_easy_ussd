import 'package:get/get.dart';
import 'package:easy_ussd/ussd_exporter.dart';

abstract class USSDFavoritesController extends GetxController {
  void changeFavorite(USSDCode action);

  List<USSDFavoritesCodes> findFavorites();

  bool isFavoriteAction(USSDCode action);

}
