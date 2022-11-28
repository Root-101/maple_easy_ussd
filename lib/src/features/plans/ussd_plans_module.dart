import 'package:get/get.dart';
import 'package:easy_ussd/ussd_exporter.dart';

class USSDPlansModule {
  static Future init() async {
    await USSDPlansDataModule.init();
    //logic
    Get.put<USSDPlansUseCase>(
      USSDPlansUseCaseImpl(Get.find<USSDPlansExpandedGroupRepo>()),
    );
    //view

  }

}
