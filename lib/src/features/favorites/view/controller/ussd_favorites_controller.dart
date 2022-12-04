import 'package:get/get.dart';
import 'package:easy_ussd/ussd_exporter.dart';

abstract class USSDFavoritesController extends GetxController {
  void changeFavorite(USSDCode action);

  bool isFavoriteAction(USSDCode action);

  List<USSDPlanItemModel> findFavorites_Plans();

  List<USSDConsultItemModel> findFavorites_Consults();
}
