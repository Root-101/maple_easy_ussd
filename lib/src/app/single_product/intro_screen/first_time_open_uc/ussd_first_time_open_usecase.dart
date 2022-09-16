import 'package:clean_repo_objectbox/clean_objectbox_exporter.dart';

abstract class USSDFirstTimeOpenUseCase
    extends SingleKeyValueUseCase<String, bool> {
  void resetOpenApp();

  void openApp();

  bool isFirstTime();
}
