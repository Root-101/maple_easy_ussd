import 'package:clean_core/clean_core.dart';

class USSDFavoriteActionDomain extends BasicDomainObject {
  int id;

  String actionKey;

  bool favorite;

  @override
  String toString() {
    return 'USSDFavoriteActionDomain{id: $id, actionKey: $actionKey, favorite: $favorite}';
  } //the one to use

  USSDFavoriteActionDomain.build({
    required this.actionKey,
    this.favorite = false,
    this.id = 0,
  });
}
