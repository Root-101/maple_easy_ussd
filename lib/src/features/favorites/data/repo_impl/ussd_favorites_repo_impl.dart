import 'package:clean_core/clean_core.dart';
import 'package:easy_ussd/ussd_exporter.dart';

class USSDFavoritesRepoImpl extends DefaultCRUDRepo<
    USSDFavoriteActionDomain,
    USSDFavoriteEntity,
    USSDFavoritesService> implements USSDFavoritesRepo {

  USSDFavoritesRepoImpl(USSDFavoritesService repoExternal)
      : super(
            externalRepo: repoExternal,
            converter: USSDFavoriteActionConverter.converter);

  @override
  USSDFavoriteActionDomain findByActionKey(String actionKey) {
    USSDFavoriteEntity? finded = externalRepo.findByActionKey(actionKey);

    return finded == null
        ? USSDFavoriteActionDomain.build(
            actionKey: actionKey,
            lastUpdatedOn: DateTime.now(),
          )
        : converter.toDomain(finded);
  }

  @override
  List<USSDFavoriteActionDomain> findFavorites() {
    List<USSDFavoriteEntity> favorites = externalRepo.findFavorites();
    return favorites != null && !favorites.isEmpty
        ? converter.toDomainAll(favorites)
        : <USSDFavoriteActionDomain>[];
  }
}

class USSDFavoriteActionConverter extends GeneralConverter<
    USSDFavoriteActionDomain, USSDFavoriteEntity> {
  static final USSDFavoriteActionConverter converter =
      USSDFavoriteActionConverter._();

  USSDFavoriteActionConverter._();

  @override
  USSDFavoriteActionDomain toDomain(USSDFavoriteEntity entity) {
    return USSDFavoriteActionDomain.build(
      id: entity.id,
      lastUpdatedOn: entity.lastUpdatedOn,
      actionKey: entity.actionKey,
      favorite: entity.favorite,
    );
  }

  @override
  USSDFavoriteEntity toEntity(USSDFavoriteActionDomain domain) {
    return USSDFavoriteEntity(
      id: domain.id,
      lastUpdatedOn: domain.lastUpdatedOn,
      actionKey: domain.actionKey,
      favorite: domain.favorite,
    );
  }
}
