import 'package:clean_core/clean_core.dart';
import 'package:easy_ussd/ussd_exporter.dart';

class USSDPlansExpandedGroupRepoImpl extends DefaultCRUDRepo<
    USSDPlansExpandedGroupDomain,
    USSDPlansExpandedGroupEntity,
    USSDPlanExpandedGroupService> implements USSDPlansExpandedGroupRepo {

  USSDPlansExpandedGroupRepoImpl(USSDPlanExpandedGroupService repoExternal)
      : super(
            externalRepo: repoExternal,
            converter: USSDPlanExpandedGroupConverter.converter);

  @override
  USSDPlansExpandedGroupDomain findByGroupKey(String groupKey) {
    USSDPlansExpandedGroupEntity? finded = externalRepo.findByGroupKey(groupKey);

    return finded == null
        ? USSDPlansExpandedGroupDomain.build(groupKey: groupKey)
        : converter.toDomain(finded);
  }
}

class USSDPlanExpandedGroupConverter extends GeneralConverter<
    USSDPlansExpandedGroupDomain, USSDPlansExpandedGroupEntity> {
  static final USSDPlanExpandedGroupConverter converter =
      USSDPlanExpandedGroupConverter._();

  USSDPlanExpandedGroupConverter._();

  @override
  USSDPlansExpandedGroupDomain toDomain(USSDPlansExpandedGroupEntity entity) {
    return USSDPlansExpandedGroupDomain.build(
      id: entity.id,
      groupKey: entity.groupKey,
      expanded: entity.expanded,
    );
  }

  @override
  USSDPlansExpandedGroupEntity toEntity(USSDPlansExpandedGroupDomain domain) {
    return USSDPlansExpandedGroupEntity(
      id: domain.id,
      groupKey: domain.groupKey,
      expanded: domain.expanded,
    );
  }
}
