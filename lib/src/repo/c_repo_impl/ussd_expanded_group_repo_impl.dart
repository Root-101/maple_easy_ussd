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
  USSDExpandedGroupDomain findByGroupId(int groupId) {
    USSDExpandedGroupEntity? finded = externalRepo.findByGroupId(groupId);

    return finded == null
        ? USSDExpandedGroupDomain.build(groupId: groupId)
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
      groupId: entity.groupId,
      expanded: entity.expanded,
    );
  }

  @override
  USSDExpandedGroupEntity toEntity(USSDExpandedGroupDomain domain) {
    return USSDExpandedGroupEntity(
      id: domain.id,
      groupId: domain.groupId,
      expanded: domain.expanded,
    );
  }
}
