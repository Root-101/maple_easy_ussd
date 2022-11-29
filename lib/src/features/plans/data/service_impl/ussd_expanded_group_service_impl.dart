import 'package:clean_repo_objectbox/clean_objectbox_exporter.dart';
import 'package:easy_ussd/ussd_exporter.dart';

class USSDExpandedGroupServiceImpl
    extends DefaultObjectBoxCRUDRepositoryExternal<USSDPlansExpandedGroupEntity>
    implements USSDPlanExpandedGroupService {
  USSDExpandedGroupServiceImpl(Store store) : super(store);

  @override
  USSDPlansExpandedGroupEntity? findByGroupKey(String groupKey) {
    return box
        .query(
          USSDPlansExpandedGroupEntity_.groupKey.equals(
            groupKey,
          ),
        )
        .build()
        .findUnique();
  }
}
