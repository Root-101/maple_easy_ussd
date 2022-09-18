import 'package:easy_ussd/ussd_exporter.dart';

class USSDUseCaseImpl extends USSDUseCase {
  USSDUseCaseImpl(this._expandedGroupRepo, this._favoriteActionRepo);

//--------------------------- FAVORITE ACTION ---------------------------\\
  USSDFavoriteActionRepo _favoriteActionRepo;

  @override
  void changeFavorite(ActionsUSSD action) {
    USSDFavoriteActionDomain domain =
        _favoriteActionRepo.findByActionKey(action.key);
    domain.favorite = !domain.favorite;
    _favoriteActionRepo.edit(domain);
  }

  @override
  List<String> favoritesKeys() {
    return _favoriteActionRepo.findFavorites().map((e) => e.actionKey).toList();
  }

  @override
  bool isFavorite(ActionsUSSD action) {
    return _favoriteActionRepo.findByActionKey(action.key).favorite;
  }

//--------------------------- EXPANDED GRUP ---------------------------\\
  USSDExpandedGroupRepo _expandedGroupRepo;

  @override
  bool isExpandedGroup(String groupKey) {
    return _expandedGroupRepo.findByGroupKey(groupKey).expanded;
  }

  @override
  void changeExpansion(String groupKey, bool expansion) {
    USSDExpandedGroupDomain domain = _expandedGroupRepo.findByGroupKey(groupKey);
    domain.expanded = expansion;
    _expandedGroupRepo.edit(domain);
  }
}
