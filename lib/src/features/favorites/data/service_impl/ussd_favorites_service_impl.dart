import 'package:clean_repo_objectbox/clean_objectbox_exporter.dart';
import 'package:easy_ussd/ussd_exporter.dart';

class USSDFavoritesServiceImpl
    extends DefaultObjectBoxCRUDRepositoryExternal<USSDFavoriteEntity>
    implements USSDFavoritesService {
  USSDFavoritesServiceImpl(Store store) : super(store);

  @override
  USSDFavoriteEntity? findByActionKey(String actionKey) {
    return box
        .query(USSDFavoriteEntity_.actionKey.equals(actionKey))
        .build()
        .findUnique();
  }

  @override
  List<USSDFavoriteEntity> findFavorites() {
    return box
        .query(USSDFavoriteEntity_.favorite.equals(true))
        .build()
        .find();
  }
}
