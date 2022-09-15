import 'package:clean_repo_objectbox/clean_objectbox_exporter.dart';
import 'package:easy_ussd/ussd_exporter.dart';

abstract class USSDExpandedGroupService
    extends ObjectBoxCRUDRepositoryExternal<USSDExpandedGroupEntity> {
  USSDExpandedGroupEntity? findByGroupId(int groupId);
}
