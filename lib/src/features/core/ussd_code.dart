import 'package:ussd_advanced/ussd_advanced.dart';

class USSDCode {
  String text;
  String key; //unique key
  String ussd;

  late Future<String> Function() execute;

  USSDCode({
    required this.text,
    required this.key,
    required this.ussd,
  }) {
    execute = () async {
      String? response = await UssdAdvanced.sendAdvancedUssd(
        code: ussd,
      );
      return response != null
          ? response!
          : throw Exception("se jodio esto ejecutando el ussd ${text}.");
    };
  }
}
