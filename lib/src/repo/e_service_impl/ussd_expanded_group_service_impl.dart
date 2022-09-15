import 'package:clean_repo_objectbox/clean_objectbox_exporter.dart';
import 'package:easy_ussd/ussd_exporter.dart';

class USSDExpandedGroupServiceImpl
    extends DefaultObjectBoxCRUDRepositoryExternal<USSDExpandedGroupEntity>
    implements USSDExpandedGroupService {
  USSDExpandedGroupServiceImpl(Store store) : super(store);

  @override
  USSDExpandedGroupEntity? findByGroupId(int groupId) {
    return box.query(_buildFindByGroupIdQuery(groupId)).build().findUnique();
  }

  Condition<USSDExpandedGroupEntity>? _buildFindByGroupIdQuery(int groupId) =>
      USSDExpandedGroupEntity_.groupId.equals(groupId);
}
