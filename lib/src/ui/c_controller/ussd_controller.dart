import 'package:get/get.dart';
import 'package:easy_ussd/ussd_exporter.dart';

abstract class USSDController extends GetxController {
  void changeFavorite(ActionsUSSD action);

  List<USSDActionWidgetDomain> findFavorites();

  bool isFavoriteAction(ActionsUSSD action);

  bool isExpandedGroup(USSDGroupsDomain item);

  void changeExpansion(int index, bool isExpanded);

  List<USSDGroupsDomain> get items;

  List<USSDGroupsDomain> get itemsToExpand;
}
