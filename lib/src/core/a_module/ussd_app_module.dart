import 'package:get/get.dart';
import 'package:easy_ussd/ussd_exporter.dart';

class USSDAppModule {
  static Future init() async {
    await USSDRepoModule.init();

    Get.put<USSDUseCase>(
      USSDUseCaseImpl(
        USSDRepoModule.expandedGroupRepo,
        USSDRepoModule.favoriteActionsRepo,
      ),
    );
  }

  static void dispose() {
    Get.deleteAll(force: true);
  }
}
