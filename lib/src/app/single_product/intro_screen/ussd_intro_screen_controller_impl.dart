import 'package:get/get.dart';
import 'package:easy_ussd/ussd_exporter.dart';

class USSDIntroScreenControllerImpl extends USSDIntroScreenController {
  USSDFirstTimeOpenUseCase uc;

  USSDIntroScreenControllerImpl(this.uc);

  @override
  void resetOpenApp() {
    uc.resetOpenApp();
    Get.offNamed(
      USSDIntroScreenPage.ROUTE_NAME,
      preventDuplicates: false, //ni idea xq, pero si no, no funciona
    );
  }

  @override
  void openApp() {
    USSDFeaturesModule.permissions();
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
    Get.offNamed(USSDSingleProductMainScreen.ROUTE_NAME);
  }

  @override
  void skip() {
    done();
  }
}
