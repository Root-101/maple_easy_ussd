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
  bool isExpandedGroup(int groupId) {
    return _expandedGroupRepo.findByGroupId(groupId).expanded;
  }

  @override
  void changeExpansion(int groupId, bool expansion) {
    USSDExpandedGroupDomain domain = _expandedGroupRepo.findByGroupId(groupId);
    domain.expanded = expansion;
    _expandedGroupRepo.edit(domain);
  }
}
