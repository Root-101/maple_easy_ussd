import 'package:clean_core/clean_core.dart';
import 'package:easy_ussd/ussd_exporter.dart';

abstract class USSDFavoriteActionRepo
    extends CRUDRepository<USSDFavoriteActionDomain> {
  USSDFavoriteActionDomain findByActionKey(String actionKey);

  List<USSDFavoriteActionDomain> findFavorites();
}
