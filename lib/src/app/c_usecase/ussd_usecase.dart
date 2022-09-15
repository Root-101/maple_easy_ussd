import 'package:easy_ussd/ussd_exporter.dart';

abstract class USSDUseCase {
  List<String> favoritesKeys();

  void changeFavorite(ActionsUSSD action);

  bool isFavorite(ActionsUSSD action);

  void changeExpansion(int groupId, bool expansion);

  bool isExpandedGroup(int groupId);
}
