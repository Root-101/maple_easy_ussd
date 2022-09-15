import 'package:clean_core/clean_core.dart';

class USSDExpandedGroupDomain extends BasicDomainObject {
  int id;

  int groupId;

  bool expanded;

  USSDExpandedGroupDomain.build({
    required this.groupId,
    this.expanded = false,
    this.id = 0,
  });
}
