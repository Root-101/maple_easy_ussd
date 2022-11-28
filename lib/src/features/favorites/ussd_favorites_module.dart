import 'package:get/get.dart';
import 'package:easy_ussd/ussd_exporter.dart';

class USSDFavoritesModule {
  static Future init() async {
    await USSDFavoritesDataModule.init();
    //logic
    Get.put<USSDFavoritesUseCase>(
      USSDFavoritesUseCaseImpl(Get.find<USSDFavoritesRepo>()),
    );
    //view
    Get.put<USSDFavoritesController>(
      USSDFavoritesControllerImpl(Get.find<USSDFavoritesUseCase>()),
    );
  }
}
