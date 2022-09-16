import 'package:get/get.dart';
import 'package:easy_ussd/ussd_exporter.dart';

class USSDIntroScreenControllerImpl extends USSDIntroScreenController {
  USSDFirstTimeOpenUseCase uc;

  USSDIntroScreenControllerImpl(this.uc);

  @override
  void resetOpenApp() {
    uc.resetOpenApp();
    update();
  }

  @override
  void openApp() {
    uc.openApp();
    update();
  }

  @override
  bool isFirstTime() {
    return uc.isFirstTime();
  }

  @override
  void done() {
    openApp();
    Get.offNamed(USSDMainScreen.ROUTE_NAME);
  }

  @override
  void skip() {
    done();
  }
}
