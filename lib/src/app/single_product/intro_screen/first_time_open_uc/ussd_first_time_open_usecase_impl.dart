import 'package:clean_repo_objectbox/clean_objectbox_exporter.dart';

import 'package:easy_ussd/ussd_exporter.dart';

class USSDFirstTimeOpenUseCaseImpl
    extends DefaultBoolKeyValueUseCaseImpl
    implements USSDFirstTimeOpenUseCase {
  static const String KEY = "maple.movil.ussd.first_time_open_app";
  static const bool DEFAULT_VALUE = true;

  USSDFirstTimeOpenUseCaseImpl()
      : super(
          key: KEY,
          defaultValue: DEFAULT_VALUE,
        );

  @override
  void resetOpenApp() {
    reset();
  }

  @override
  void openApp() {
    update(false);
  }

  bool isFirstTime() {
    return read()!;
  }
}
