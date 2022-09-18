import 'package:get/get.dart';
import 'package:easy_ussd/ussd_exporter.dart';

abstract class USSDController extends GetxController {
  //----------------------- FAVORITES -----------------------\\
  void changeFavorite(ActionsUSSD action);

  List<USSDActionWidgetDomain> findFavorites();

  bool isFavoriteAction(ActionsUSSD action);

  //----------------------- GROUPS -----------------------\\
  bool isExpandedGroup(USSDGroupsDomain item);

  void changeExpansion(USSDGroupsDomain item, bool isExpanded);
}
