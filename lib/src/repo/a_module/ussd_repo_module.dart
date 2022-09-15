import 'dart:io';

import 'package:easy_ussd/ussd_exporter.dart';
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

class USSDRepoModule {
  static late final Store
      _STORE; //todo: posible null pointer, llamar primero al constructor

  static late final USSDExpandedGroupRepo expandedGroupRepo;
  static late final USSDFavoriteActionRepo favoriteActionsRepo;

  static const _USSDDir = "/src";

  static Future<bool> init({String parentDirectory = ""}) async {
    //obtiene el directorio por defecto
    Directory defaultDir = await defaultStoreDirectory();

    //se concatenan las direcciones
    Directory dbDir = Directory('${defaultDir.path}$parentDirectory$_USSDDir');

    //Se crea el directorio por si no está creado
    dbDir = await dbDir.create(recursive: true);

    _STORE = await openStore(directory: dbDir.path);

    USSDExpandedGroupService expandedGroupService =
        USSDExpandedGroupServiceImpl(_STORE);

    USSDFavoriteActionService favoriteActionService =
        USSDFavoriteActionServiceImpl(_STORE);

    expandedGroupRepo = USSDExpandedGroupRepoImpl(expandedGroupService);

    favoriteActionsRepo = USSDFavoriteActionRepoImpl(favoriteActionService);

    return _STORE != null;
  }

  static void dispose() {
    _STORE.close();
  }
}
