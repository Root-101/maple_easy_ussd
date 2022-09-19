import 'package:clean_core/clean_core.dart';

class USSDExpandedGroupDomain extends BasicDomainObject {
  int id;

  String groupKey;

  bool expanded;

  USSDExpandedGroupDomain.build({
    required this.groupKey,
    this.expanded = false,
    this.id = 0,
  });
}
