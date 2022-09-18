import 'dart:io';

import 'package:get/get.dart';
import 'package:easy_ussd/ussd_exporter.dart';
import 'package:permission_handler/permission_handler.dart';

class USSDAppModule {
  static Future init() async {
    await USSDRepoModule.init();

    Get.put<USSDUseCase>(
      USSDUseCaseImpl(
        USSDRepoModule.expandedGroupRepo,
        USSDRepoModule.favoriteActionsRepo,
      ),
    );
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
