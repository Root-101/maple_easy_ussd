import 'package:clean_core/clean_core.dart';
import 'package:easy_ussd/ussd_exporter.dart';
import 'package:objectbox/objectbox.dart';

@Entity() //flutter pub run build_runner build
class USSDExpandedGroupEntity extends BasicEntityObject {
  @Id()
  int id;

  @Unique()
  String groupKey;

  bool expanded;

  //default construct, DON'T REMOVE
  USSDExpandedGroupEntity({
    this.id = 0,
    this.groupKey = "",
    this.expanded = true,
  });

  //the one to use
  USSDExpandedGroupEntity.build({
    required this.groupKey,
    required this.expanded,
    this.id = 0,
  });
}

@Entity()
class USSDFavoriteActionEntity extends BasicEntityObject {
  @Id()
  int id;

  @Unique()
  String actionKey;

  bool favorite;

  DateTime lastUpdatedOn;

  //default construct, DON'T REMOVE
  USSDFavoriteActionEntity({
    required this.actionKey,
    required this.lastUpdatedOn,
    this.favorite = false,
    this.id = 0,
  });

  //the one to use
  USSDFavoriteActionEntity.build({
    required this.actionKey,
    required this.lastUpdatedOn,
    this.favorite = false,
    this.id = 0,
  });
}
