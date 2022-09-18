import 'package:clean_repo_objectbox/clean_objectbox_exporter.dart';
import 'package:easy_ussd/ussd_exporter.dart';

class USSDExpandedGroupServiceImpl
    extends DefaultObjectBoxCRUDRepositoryExternal<USSDExpandedGroupEntity>
    implements USSDExpandedGroupService {
  USSDExpandedGroupServiceImpl(Store store) : super(store);

  @override
  USSDExpandedGroupEntity? findByGroupKey(String groupKey) {
    return box
        .query(
          USSDExpandedGroupEntity_.groupKey.equals(
            groupKey,
          ),
        )
        .build()
        .findUnique();
  }
}
