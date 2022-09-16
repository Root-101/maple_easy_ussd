import 'package:get/get.dart';
import 'package:easy_ussd/ussd_exporter.dart';

class USSDFirstTimeOpenControllerImpl extends USSDFirstTimeOpenController {
  USSDFirstTimeOpenUseCase uc = Get.find<USSDFirstTimeOpenUseCase>();

  void resetOpenApp() {
    uc.resetOpenApp();
    update();
  }

  void openApp() {
    uc.openApp();
    update();
  }

  bool isFirstTime() {
    return uc.isFirstTime();
  }
}
