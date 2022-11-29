import 'dart:io';

import 'package:easy_ussd/ussd_exporter.dart';
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';
import 'package:get/get.dart';

class USSDFavoritesDataModule {
  static late final Store
      _STORE; //todo: posible null pointer, llamar primero al constructor

  static const _USSDFavoritesDir = "/favorites";

  static Future<bool> init({String parentDirectory = ""}) async {
    //obtiene el directorio por defecto
    Directory defaultDir = await defaultStoreDirectory();

    //se concatenan las direcciones
    Directory dbDir =
        Directory('${defaultDir.path}$parentDirectory$_USSDFavoritesDir');

    //Se crea el directorio por si no está creado
    dbDir = await dbDir.create(recursive: true);

    _STORE = await openStore(directory: dbDir.path);

    USSDFavoritesService expandedGroupService =
        USSDFavoritesServiceImpl(_STORE);

    //inyeccion
    Get.put<USSDFavoritesRepo>(
      USSDFavoritesRepoImpl(expandedGroupService),
    );

    return _STORE != null;
  }

  static void dispose() {
    _STORE.close();
  }
}
