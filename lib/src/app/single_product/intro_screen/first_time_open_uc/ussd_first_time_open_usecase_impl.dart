import 'package:clean_repo_objectbox/clean_objectbox_exporter.dart';

import 'package:easy_ussd/ussd_exporter.dart';

class USSDFirstTimeOpenUseCaseImpl
    extends SingleKeyValueUseCaseImpl<String, bool>
    implements USSDFirstTimeOpenUseCase {
  static const String KEY = "maple.movil.ussd.first_time_open_app";
  static const bool DEFAULT_VALUE = true;

  USSDFirstTimeOpenUseCaseImpl()
      : super(
          key: KEY,
          defaultValue: DEFAULT_VALUE,
          repo: KeyValueRepoModule.buildKeyValueRepo(
            converter: FirstTimeOpenKeyValueConverter.converter,
            key: KEY,
          ),
        );

  @override
  void resetOpenApp() {
    update(true);
  }

  @override
  void openApp() {
    update(false);
  }

  bool isFirstTime() {
    return read();
  }
}

class FirstTimeOpenKeyValueConverter
    implements SingleKeyValueConverter<String, bool> {
  static final FirstTimeOpenKeyValueConverter converter =
      FirstTimeOpenKeyValueConverter._();

  FirstTimeOpenKeyValueConverter._();

  @override
  String keyToString(String key) {
    return key;
  }

  @override
  bool stringToValue(String value) {
    return value.toLowerCase() == 'true' ? true : false;
  }

  @override
  String valueToString(bool value) {
    return value ? 'true' : 'false';
  }
}
