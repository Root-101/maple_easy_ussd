import 'package:easy_ussd/ussd_exporter.dart';
import 'package:ussd_advanced/ussd_advanced.dart';

class USSDActionFunctionDomain {
  ActionsUSSD action;
  late Future<String> Function() execute;

  USSDActionFunctionDomain(
    this.action,
  ) {
    execute = () async {
      String? response = await UssdAdvanced.sendAdvancedUssd(
        code: action.ussd,
      );
      return response != null
          ? response!
          : throw Exception("se jodio esto ejecutando el ussd ${action.text}.");
    };
  }

  //------------------------------- CONSULTAS -------------------------------\\
  static USSDActionFunctionDomain CONSULTAR_SALDO = USSDActionFunctionDomain(
    ActionsUSSD.CONSULTAR_SALDO,
  );

  static USSDActionFunctionDomain CONSULTAR_BONO = USSDActionFunctionDomain(
    ActionsUSSD.CONSULTAR_BONO,
  );

  static USSDActionFunctionDomain CONSULTAR_DATOS = USSDActionFunctionDomain(
    ActionsUSSD.CONSULTAR_DATOS,
  );

  //------------------------------- PLAN -------------------------------\\

  static USSDActionFunctionDomain COMPRA_PLAN_110_C =
      USSDActionFunctionDomain(
    ActionsUSSD.COMPRA_PLAN_110_C,
  );

  static USSDActionFunctionDomain COMPRA_PLAN_250_C =
      USSDActionFunctionDomain(
    ActionsUSSD.COMPRA_PLAN_250_C,
  );

  static USSDActionFunctionDomain COMPRA_PLAN_500_C =
      USSDActionFunctionDomain(
    ActionsUSSD.COMPRA_PLAN_500_C,
  );

  //------------------------------- PAQUETE LTE -------------------------------\\

  static USSDActionFunctionDomain COMPRA_DATOS_PAQUETES_LTE_100_C =
      USSDActionFunctionDomain(
    ActionsUSSD.COMPRA_DATOS_PAQUETES_LTE_100_C,
  );

  static USSDActionFunctionDomain COMPRA_DATOS_PAQUETES_LTE_200_C =
      USSDActionFunctionDomain(
    ActionsUSSD.COMPRA_DATOS_PAQUETES_LTE_200_C,
  );

  static USSDActionFunctionDomain COMPRA_DATOS_PAQUETES_LTE_950_C =
      USSDActionFunctionDomain(
    ActionsUSSD.COMPRA_DATOS_PAQUETES_LTE_950_C,
  );
}
