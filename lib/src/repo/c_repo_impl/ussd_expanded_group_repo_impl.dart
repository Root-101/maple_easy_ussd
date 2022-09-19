import 'package:clean_core/clean_core.dart';
import 'package:easy_ussd/ussd_exporter.dart';

class USSDExpandedGroupRepoImpl extends DefaultCRUDRepo<
    USSDExpandedGroupDomain,
    USSDExpandedGroupEntity,
    USSDExpandedGroupService> implements USSDExpandedGroupRepo {
  USSDExpandedGroupRepoImpl(USSDExpandedGroupService repoExternal)
      : super(
            externalRepo: repoExternal,
            converter: USSDExpandedGroupConverter.converter);

  @override
  USSDExpandedGroupDomain findByGroupKey(String groupKey) {
    USSDExpandedGroupEntity? finded = externalRepo.findByGroupKey(groupKey);

    return finded == null
        ? USSDExpandedGroupDomain.build(groupKey: groupKey)
        : converter.toDomain(finded);
  }
}

class USSDExpandedGroupConverter extends GeneralConverter<
    USSDExpandedGroupDomain, USSDExpandedGroupEntity> {
  static final USSDExpandedGroupConverter converter =
      USSDExpandedGroupConverter._();

  USSDExpandedGroupConverter._();

  @override
  USSDExpandedGroupDomain toDomain(USSDExpandedGroupEntity entity) {
    return USSDExpandedGroupDomain.build(
      id: entity.id,
      groupKey: entity.groupKey,
      expanded: entity.expanded,
    );
  }

  @override
  USSDExpandedGroupEntity toEntity(USSDExpandedGroupDomain domain) {
    return USSDExpandedGroupEntity(
      id: domain.id,
      groupKey: domain.groupKey,
      expanded: domain.expanded,
    );
  }
}
