import 'package:get/get.dart';
import 'package:easy_ussd/ussd_exporter.dart';

class USSDIntroScreenControllerImpl extends USSDIntroScreenController {
  //USSDFirstTimeOpenUseCase uc;

  USSDIntroScreenControllerImpl();

  @override
  void resetOpenApp() {
    //uc.resetOpenApp();
    update();
  }

  @override
  void openApp() {
    //uc.openApp();
    update();
  }

  @override
  bool isFirstTime() {
    return true; //uc.isFirstTime();
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
