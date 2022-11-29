import 'package:clean_core/clean_core.dart';
import 'package:easy_ussd/ussd_exporter.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class USSDFavoriteEntity extends BasicEntityObject {
  @Id()
  int id;

  @Unique()
  String actionKey;

  bool favorite;

  DateTime lastUpdatedOn;

  //default construct, DON'T REMOVE
  USSDFavoriteEntity({
    required this.actionKey,
    required this.lastUpdatedOn,
    this.favorite = false,
    this.id = 0,
  });

  //the one to use
  USSDFavoriteEntity.build({
    required this.actionKey,
    required this.lastUpdatedOn,
    this.favorite = false,
    this.id = 0,
  });
}
