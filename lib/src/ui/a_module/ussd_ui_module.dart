import 'package:get/get.dart';
import 'package:easy_ussd/ussd_exporter.dart';

class USSDUIModule {
  static Future init() async {
    await USSDAppModule.init();

    Get.put<USSDController>(USSDControllerImpl());
  }

  static void permissions() async {
    USSDAppModule.permissions();
  }
}
