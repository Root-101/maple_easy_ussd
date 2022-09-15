import 'package:clean_repo_objectbox/clean_objectbox_exporter.dart';
import 'package:easy_ussd/ussd_exporter.dart';

abstract class USSDFavoriteActionService
    extends ObjectBoxCRUDRepositoryExternal<USSDFavoriteActionEntity> {
  USSDFavoriteActionEntity? findByActionKey(String actionKey);

  List<USSDFavoriteActionEntity> findFavorites();
}
