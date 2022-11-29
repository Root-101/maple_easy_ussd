import 'package:easy_ussd/ussd_exporter.dart';

class USSDPlansUseCaseImpl extends USSDPlansUseCase {
  USSDPlansExpandedGroupRepo _expandedGroupRepo;

  USSDPlansUseCaseImpl(this._expandedGroupRepo);

  @override
  bool isExpandedGroup(String groupKey) {
    return _expandedGroupRepo.findByGroupKey(groupKey).expanded;
  }

  @override
  void changeExpansion(String groupKey, bool expansion) {
    USSDPlansExpandedGroupDomain domain =
        _expandedGroupRepo.findByGroupKey(groupKey);
    domain.expanded = expansion;
    _expandedGroupRepo.edit(domain);
  }
}
