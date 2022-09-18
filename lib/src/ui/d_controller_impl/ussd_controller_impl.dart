import 'package:get/get.dart';
import 'package:easy_ussd/ussd_exporter.dart';

class USSDControllerImpl extends USSDController {
  USSDUseCase uc = Get.find<USSDUseCase>();

  @override
  void changeExpansion(USSDGroupsDomain item, bool isExpanded) {
    uc.changeExpansion(item.groupKey, !isExpanded);
    update();
  }

  @override
  bool isExpandedGroup(USSDGroupsDomain item) {
    return uc.isExpandedGroup(item.groupKey);
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
