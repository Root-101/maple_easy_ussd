import 'package:clean_core/clean_core.dart';
import 'package:easy_ussd/ussd_exporter.dart';

abstract class USSDPlansExpandedGroupRepo
    extends CRUDRepository<USSDPlansExpandedGroupDomain> {
  USSDPlansExpandedGroupDomain findByGroupKey(String groupKey);
}
