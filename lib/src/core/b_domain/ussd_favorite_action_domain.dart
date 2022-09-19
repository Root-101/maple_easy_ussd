import 'package:clean_core/clean_core.dart';

class USSDFavoriteActionDomain extends BasicDomainObject {
  int id;

  String actionKey;

  bool favorite;

  DateTime lastUpdatedOn;

  @override
  String toString() {
    return 'USSDFavoriteActionDomain{id: $id, actionKey: $actionKey, favorite: $favorite, lastUpdatedOn: $lastUpdatedOn}';
  }

  USSDFavoriteActionDomain.build({
    required this.actionKey,
    required this.lastUpdatedOn,
    this.favorite = false,
    this.id = 0,
  });
}
