import 'package:clean_core/clean_core.dart';
import 'package:easy_ussd/ussd_exporter.dart';

class USSDFavoriteActionRepoImpl extends DefaultCRUDRepo<
    USSDFavoriteActionDomain,
    USSDFavoriteActionEntity,
    USSDFavoriteActionService> implements USSDFavoriteActionRepo {
  USSDFavoriteActionRepoImpl(USSDFavoriteActionService repoExternal)
      : super(
            externalRepo: repoExternal,
            converter: USSDFavoriteActionConverter.converter);

  @override
  USSDFavoriteActionDomain findByActionKey(String actionKey) {
    USSDFavoriteActionEntity? finded = externalRepo.findByActionKey(actionKey);

    return finded == null
        ? USSDFavoriteActionDomain.build(actionKey: actionKey)
        : converter.toDomain(finded);
  }

  @override
  List<USSDFavoriteActionDomain> findFavorites() {
    List<USSDFavoriteActionEntity> favorites = externalRepo.findFavorites();
    return favorites != null && !favorites.isEmpty
        ? converter.toDomainAll(favorites)
        : <USSDFavoriteActionDomain>[];
  }
}

class USSDFavoriteActionConverter extends GeneralConverter<
    USSDFavoriteActionDomain, USSDFavoriteActionEntity> {
  static final USSDFavoriteActionConverter converter =
      USSDFavoriteActionConverter._();

  USSDFavoriteActionConverter._();

  @override
  USSDFavoriteActionDomain toDomain(USSDFavoriteActionEntity entity) {
    return USSDFavoriteActionDomain.build(
      id: entity.id,
      actionKey: entity.actionKey,
      favorite: entity.favorite,
    );
  }

  @override
  USSDFavoriteActionEntity toEntity(USSDFavoriteActionDomain domain) {
    return USSDFavoriteActionEntity(
      id: domain.id,
      actionKey: domain.actionKey,
      favorite: domain.favorite,
    );
  }
}
