import 'package:flutter/cupertino.dart';
import 'package:easy_ussd/ussd_exporter.dart';

class USSDPlansGroupsModel {
  String groupKey;
  StatelessWidget title;
  List<USSDPlanItem> childs;

  USSDPlansGroupsModel({
    required this.groupKey,
    required this.title,
    required this.childs,
  });

}
