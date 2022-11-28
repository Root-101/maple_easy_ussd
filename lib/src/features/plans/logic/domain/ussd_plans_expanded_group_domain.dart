import 'package:clean_core/clean_core.dart';

class USSDPlansExpandedGroupDomain extends BasicDomainObject {
  int id;

  String groupKey;

  bool expanded;

  USSDPlansExpandedGroupDomain.build({
    required this.groupKey,
    this.expanded = false,
    this.id = 0,
  });
}
