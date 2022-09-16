import 'package:get/get.dart';
import 'package:easy_ussd/ussd_exporter.dart';

class USSDSingleProductModule {
  static Future init() async {
    await USSDUIModule.init();

    /*
    print('Iniciando UC de Single product');
    USSDFirstTimeOpenUseCase uc = USSDFirstTimeOpenUseCaseImpl();
    print('Iniciando Controller de Single product');
    Get.put<USSDIntroScreenController>(USSDIntroScreenControllerImpl(uc));
    print('Terminado init de Single product');
    */


    Get.put<USSDIntroScreenController>(USSDIntroScreenControllerImpl());
  }
}
