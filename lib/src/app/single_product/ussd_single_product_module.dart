import 'package:get/get.dart';
import 'package:easy_ussd/ussd_exporter.dart';

class USSDSingleProductModule {
  static Future init() async {
    await USSDUIModule.init();

    Get.put<USSDFirstTimeOpenUseCase>(USSDFirstTimeOpenUseCaseImpl());
    Get.put<USSDFirstTimeOpenController>(USSDFirstTimeOpenControllerImpl());
  }
}
