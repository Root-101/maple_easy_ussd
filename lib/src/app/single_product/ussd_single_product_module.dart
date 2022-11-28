import 'package:clean_repo_objectbox/clean_objectbox_exporter.dart';
import 'package:get/get.dart';
import 'package:easy_ussd/ussd_exporter.dart';

class USSDSingleProductModule {
  static Future init() async {
    await KeyValueCoreModule.init();

    await USSDFeaturesModule.init();

    USSDFirstTimeOpenUseCase uc = USSDFirstTimeOpenUseCaseImpl();
    Get.put<USSDIntroScreenController>(USSDIntroScreenControllerImpl(uc));
  }
}
