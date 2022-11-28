import 'package:easy_ussd/ussd_exporter.dart';

abstract class USSDFavoritesUseCase{
  List<String> favoritesKeys();

  void changeFavorite(USSDCode action);

  bool isFavorite(USSDCode action);
}