import 'dart:io';

import 'package:get/get.dart';
import 'package:easy_ussd/ussd_exporter.dart';
import 'package:permission_handler/permission_handler.dart';

class USSDFeaturesModule {
  static Future init() async {
    await USSDFavoritesModule.init();
    await USSDPlansModule.init();
  }

  static void dispose() {
    Get.deleteAll(force: true);
  }

  static void permissions() async {
    Permission.phone.request().then(
      (value) {
        if (PermissionStatus.granted != value) {
          exit(0);
        }
      },
    );
  }
}
