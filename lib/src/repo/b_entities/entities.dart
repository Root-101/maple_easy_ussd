import 'package:clean_core/clean_core.dart';
import 'package:easy_ussd/ussd_exporter.dart';
import 'package:objectbox/objectbox.dart';

@Entity() //flutter pub run build_runner build
class USSDExpandedGroupEntity extends BasicEntityObject {
  @Id()
  int id;

  @Unique()
  int groupId;

  bool expanded;

  //default construct, DON'T REMOVE
  USSDExpandedGroupEntity({
    this.id = 0,
    this.groupId = 0,
    this.expanded = true,
  });

  //the one to use
  USSDExpandedGroupEntity.build({
    required this.groupId,
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

  //default construct, DON'T REMOVE
  USSDFavoriteActionEntity({
    this.id = 0,
    this.actionKey = "",
    this.favorite = false,
  });

  //the one to use
  USSDFavoriteActionEntity.build({
    required this.actionKey,
    this.favorite = false,
    this.id = 0,
  });
}
