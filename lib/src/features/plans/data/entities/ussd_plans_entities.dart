import 'package:clean_core/clean_core.dart';
import 'package:easy_ussd/ussd_exporter.dart';
import 'package:objectbox/objectbox.dart';

@Entity() //flutter pub run build_runner build
class USSDPlansExpandedGroupEntity extends BasicEntityObject {
  @Id()
  int id;

  @Unique()
  String groupKey;

  bool expanded;

  //default construct, DON'T REMOVE
  USSDPlansExpandedGroupEntity({
    this.id = 0,
    this.groupKey = "",
    this.expanded = true,
  });

  //the one to use
  USSDPlansExpandedGroupEntity.build({
    required this.groupKey,
    required this.expanded,
    this.id = 0,
  });
}