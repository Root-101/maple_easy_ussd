import 'package:get/get.dart';
import 'package:easy_ussd/ussd_exporter.dart';

class USSDControllerImpl extends USSDController {
  USSDUseCase uc = Get.find<USSDUseCase>();

  @override
  List<USSDGroupsDomain> get items => USSDGroupsDomain.GROUPS;

  @override
  List<USSDGroupsDomain> get itemsToExpand => USSDGroupsDomain.GROUPS_REDUCED;

  @override
  void changeExpansion(int index, bool isExpanded) {
    USSDGroupsDomain tapped = items[index];
    uc.changeExpansion(tapped.groupId, !isExpanded);
    update();
  }

  @override
  bool isExpandedGroup(USSDGroupsDomain item) {
    return uc.isExpandedGroup(item.groupId);
  }

  @override
  bool isFavoriteAction(ActionsUSSD action) {
    return uc.isFavorite(action);
  }

  @override
  void changeFavorite(ActionsUSSD action) {
    uc.changeFavorite(action);
    update();
  }

  @override
  List<USSDActionWidgetDomain> findFavorites() {
    List<String> favoriteKeys = uc.favoritesKeys();

    List<USSDActionWidgetDomain> allActions = USSDGroupsDomain.ACTIONS();

    allActions.removeWhere(
        (element) => !favoriteKeys.contains(element.function.action.key));

    return allActions;
  }
}
