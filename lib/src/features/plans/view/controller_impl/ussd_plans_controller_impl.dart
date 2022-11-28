import 'package:get/get.dart';
import 'package:easy_ussd/ussd_exporter.dart';

class USSDPlansControllerImpl extends USSDPlansController {
  USSDPlansUseCase uc = Get.find<USSDPlansUseCase>();

  @override
  void changeExpansion(USSDPlansGroupsModel item, bool isExpanded) {
    uc.changeExpansion(item.groupKey, !isExpanded);
    update();
  }

  @override
  bool isExpandedGroup(USSDPlansGroupsModel item) {
    return uc.isExpandedGroup(item.groupKey);
  }
}
