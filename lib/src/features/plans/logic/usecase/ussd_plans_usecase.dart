import 'package:easy_ussd/ussd_exporter.dart';

abstract class USSDPlansUseCase {

  void changeExpansion(String groupKey, bool expansion);

  bool isExpandedGroup(String groupKey);
}
