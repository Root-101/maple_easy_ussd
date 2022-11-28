import 'dart:io';

import 'package:easy_ussd/ussd_exporter.dart';
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

class USSDPlansDataModule {
  static late final Store
  _STORE; //todo: posible null pointer, llamar primero al constructor

  static late final USSDPlansExpandedGroupRepo expandedGroupRepo;

  static const _USSDPlansDir = "/plans";

  static Future<bool> init({String parentDirectory = ""}) async {
    //obtiene el directorio por defecto
    Directory defaultDir = await defaultStoreDirectory();

    //se concatenan las direcciones
    Directory dbDir = Directory('${defaultDir.path}$parentDirectory$_USSDPlansDir');

    //Se crea el directorio por si no está creado
    dbDir = await dbDir.create(recursive: true);

    _STORE = await openStore(directory: dbDir.path);

    USSDPlanExpandedGroupService expandedGroupService =
    USSDExpandedGroupServiceImpl(_STORE);

    expandedGroupRepo = USSDPlansExpandedGroupRepoImpl(expandedGroupService);

    return _STORE != null;
  }

  static void dispose() {
    _STORE.close();
  }
}
