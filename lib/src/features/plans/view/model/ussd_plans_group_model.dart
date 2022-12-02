import 'package:easy_ussd/src/features/plans/ussd_plans_exporter.dart';
import 'package:easy_ussd/ussd_exporter.dart';

class USSDPlansGroupsModel {
  String groupKey;
  String title;
  List<USSDPlanItemModel> childs;

  USSDPlansGroupsModel({
    required this.groupKey,
    required this.title,
    required this.childs,
  });
}
