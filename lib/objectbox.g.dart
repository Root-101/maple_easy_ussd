// GENERATED CODE - DO NOT MODIFY BY HAND
// This code was generated by ObjectBox. To update it run the generator again:
// With a Flutter package, run `flutter pub run build_runner build`.
// With a Dart package, run `dart run build_runner build`.
// See also https://docs.objectbox.io/getting-started#generate-objectbox-code

// ignore_for_file: camel_case_types
// coverage:ignore-file

import 'dart:typed_data';

import 'package:flat_buffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart';
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

import 'src/features/favorites/data/entities/ussd_favorites_entities.dart';
import 'src/features/plans/data/entities/ussd_plans_entities.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <ModelEntity>[
  ModelEntity(
      id: const IdUid(3, 3751880749874276119),
      name: 'USSDFavoriteEntity',
      lastPropertyId: const IdUid(4, 945902950163571993),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 6711552317675758590),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 1498646523952360769),
            name: 'actionKey',
            type: 9,
            flags: 2080,
            indexId: const IdUid(4, 1876339734400637196)),
        ModelProperty(
            id: const IdUid(3, 147375798960667814),
            name: 'favorite',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 945902950163571993),
            name: 'lastUpdatedOn',
            type: 10,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(4, 2550406571463158089),
      name: 'USSDPlansExpandedGroupEntity',
      lastPropertyId: const IdUid(3, 5213895597310128229),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 3539206265660387087),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 3128753107131985342),
            name: 'groupKey',
            type: 9,
            flags: 2080,
            indexId: const IdUid(5, 5764381849202593781)),
        ModelProperty(
            id: const IdUid(3, 5213895597310128229),
            name: 'expanded',
            type: 1,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[])
];

/// Open an ObjectBox store with the model declared in this file.
Future<Store> openStore(
        {String? directory,
        int? maxDBSizeInKB,
        int? fileMode,
        int? maxReaders,
        bool queriesCaseSensitiveDefault = true,
        String? macosApplicationGroup}) async =>
    Store(getObjectBoxModel(),
        directory: directory ?? (await defaultStoreDirectory()).path,
        maxDBSizeInKB: maxDBSizeInKB,
        fileMode: fileMode,
        maxReaders: maxReaders,
        queriesCaseSensitiveDefault: queriesCaseSensitiveDefault,
        macosApplicationGroup: macosApplicationGroup);

/// ObjectBox model definition, pass it to [Store] - Store(getObjectBoxModel())
ModelDefinition getObjectBoxModel() {
  final model = ModelInfo(
      entities: _entities,
      lastEntityId: const IdUid(4, 2550406571463158089),
      lastIndexId: const IdUid(5, 5764381849202593781),
      lastRelationId: const IdUid(0, 0),
      lastSequenceId: const IdUid(0, 0),
      retiredEntityUids: const [8195781853182384524, 8629747884124646899],
      retiredIndexUids: const [7015419465327010104],
      retiredPropertyUids: const [
        1017336373897191586,
        6376580609029143801,
        1182637103974531329,
        7456535921171101739,
        1194776785211634525,
        4433343923635866209,
        2076292997254348047,
        6692542786471608608,
        5076049528668474780
      ],
      retiredRelationUids: const [],
      modelVersion: 5,
      modelVersionParserMinimum: 5,
      version: 1);

  final bindings = <Type, EntityDefinition>{
    USSDFavoriteEntity: EntityDefinition<USSDFavoriteEntity>(
        model: _entities[0],
        toOneRelations: (USSDFavoriteEntity object) => [],
        toManyRelations: (USSDFavoriteEntity object) => {},
        getId: (USSDFavoriteEntity object) => object.id,
        setId: (USSDFavoriteEntity object, int id) {
          object.id = id;
        },
        objectToFB: (USSDFavoriteEntity object, fb.Builder fbb) {
          final actionKeyOffset = fbb.writeString(object.actionKey);
          fbb.startTable(5);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, actionKeyOffset);
          fbb.addBool(2, object.favorite);
          fbb.addInt64(3, object.lastUpdatedOn.millisecondsSinceEpoch);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = USSDFavoriteEntity(
              actionKey: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 6, ''),
              lastUpdatedOn: DateTime.fromMillisecondsSinceEpoch(
                  const fb.Int64Reader().vTableGet(buffer, rootOffset, 10, 0)),
              favorite:
                  const fb.BoolReader().vTableGet(buffer, rootOffset, 8, false),
              id: const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0));

          return object;
        }),
    USSDPlansExpandedGroupEntity:
        EntityDefinition<USSDPlansExpandedGroupEntity>(
            model: _entities[1],
            toOneRelations: (USSDPlansExpandedGroupEntity object) => [],
            toManyRelations: (USSDPlansExpandedGroupEntity object) => {},
            getId: (USSDPlansExpandedGroupEntity object) => object.id,
            setId: (USSDPlansExpandedGroupEntity object, int id) {
              object.id = id;
            },
            objectToFB: (USSDPlansExpandedGroupEntity object, fb.Builder fbb) {
              final groupKeyOffset = fbb.writeString(object.groupKey);
              fbb.startTable(4);
              fbb.addInt64(0, object.id);
              fbb.addOffset(1, groupKeyOffset);
              fbb.addBool(2, object.expanded);
              fbb.finish(fbb.endTable());
              return object.id;
            },
            objectFromFB: (Store store, ByteData fbData) {
              final buffer = fb.BufferContext(fbData);
              final rootOffset = buffer.derefObject(0);

              final object = USSDPlansExpandedGroupEntity(
                  id: const fb.Int64Reader()
                      .vTableGet(buffer, rootOffset, 4, 0),
                  groupKey: const fb.StringReader(asciiOptimization: true)
                      .vTableGet(buffer, rootOffset, 6, ''),
                  expanded: const fb.BoolReader()
                      .vTableGet(buffer, rootOffset, 8, false));

              return object;
            })
  };

  return ModelDefinition(model, bindings);
}

/// [USSDFavoriteEntity] entity fields to define ObjectBox queries.
class USSDFavoriteEntity_ {
  /// see [USSDFavoriteEntity.id]
  static final id =
      QueryIntegerProperty<USSDFavoriteEntity>(_entities[0].properties[0]);

  /// see [USSDFavoriteEntity.actionKey]
  static final actionKey =
      QueryStringProperty<USSDFavoriteEntity>(_entities[0].properties[1]);

  /// see [USSDFavoriteEntity.favorite]
  static final favorite =
      QueryBooleanProperty<USSDFavoriteEntity>(_entities[0].properties[2]);

  /// see [USSDFavoriteEntity.lastUpdatedOn]
  static final lastUpdatedOn =
      QueryIntegerProperty<USSDFavoriteEntity>(_entities[0].properties[3]);
}

/// [USSDPlansExpandedGroupEntity] entity fields to define ObjectBox queries.
class USSDPlansExpandedGroupEntity_ {
  /// see [USSDPlansExpandedGroupEntity.id]
  static final id = QueryIntegerProperty<USSDPlansExpandedGroupEntity>(
      _entities[1].properties[0]);

  /// see [USSDPlansExpandedGroupEntity.groupKey]
  static final groupKey = QueryStringProperty<USSDPlansExpandedGroupEntity>(
      _entities[1].properties[1]);

  /// see [USSDPlansExpandedGroupEntity.expanded]
  static final expanded = QueryBooleanProperty<USSDPlansExpandedGroupEntity>(
      _entities[1].properties[2]);
}
