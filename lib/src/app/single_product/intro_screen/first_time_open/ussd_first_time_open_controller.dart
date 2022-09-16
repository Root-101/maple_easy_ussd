import 'package:get/get.dart';
import 'package:easy_ussd/ussd_exporter.dart';

abstract class USSDFirstTimeOpenController extends GetxController {

  void resetOpenApp();

  void openApp();

  bool isFirstTime();
}
