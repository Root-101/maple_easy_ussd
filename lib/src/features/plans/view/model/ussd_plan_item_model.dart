import 'package:easy_ussd/src/features/core/ussd_core_exporter.dart';

class USSDPlanItemModel {
  USSDCode function;
  String price;
  String title;
  String description;

  USSDPlanItemModel({
    required this.function,
    required this.price,
    required this.title,
    required this.description,
  });
}
