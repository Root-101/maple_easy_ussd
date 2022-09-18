import 'package:clean_core/clean_core.dart';
import 'package:easy_ussd/ussd_exporter.dart';

abstract class USSDExpandedGroupRepo
    extends CRUDRepository<USSDExpandedGroupDomain> {
  USSDExpandedGroupDomain findByGroupKey(String groupKey);
}
