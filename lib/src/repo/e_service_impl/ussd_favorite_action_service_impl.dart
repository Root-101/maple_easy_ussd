import 'package:clean_repo_objectbox/clean_objectbox_exporter.dart';
import 'package:easy_ussd/ussd_exporter.dart';

class USSDFavoriteActionServiceImpl
    extends DefaultObjectBoxCRUDRepositoryExternal<USSDFavoriteActionEntity>
    implements USSDFavoriteActionService {
  USSDFavoriteActionServiceImpl(Store store) : super(store);

  @override
  USSDFavoriteActionEntity? findByActionKey(String actionKey) {
    return box
        .query(USSDFavoriteActionEntity_.actionKey.equals(actionKey))
        .build()
        .findUnique();
  }

  @override
  List<USSDFavoriteActionEntity> findFavorites() {
    return box
        .query(USSDFavoriteActionEntity_.favorite.equals(true))
        .build()
        .find();
  }
}
