import 'package:get/get.dart';
import 'package:easy_ussd/ussd_exporter.dart';

abstract class USSDPlansController extends GetxController {
  bool isExpandedGroup(USSDPlansGroupsModel item);

  void changeExpansion(USSDPlansGroupsModel item, bool isExpanded);
}
