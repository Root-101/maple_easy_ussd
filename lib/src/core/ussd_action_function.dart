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
  static USSDActionFunctionDomain CONSULTAR_SALDO_PETROLERO =
      USSDActionFunctionDomain(
    ActionsUSSD.CONSULTAR_SALDO_PETROLERO,
  );
  static USSDActionFunctionDomain CONSULTAR_PLAN_AMIGO =
      USSDActionFunctionDomain(
    ActionsUSSD.CONSULTAR_PLAN_AMIGO,
  );
  static USSDActionFunctionDomain CONSULTAR_SMS = USSDActionFunctionDomain(
    ActionsUSSD.CONSULTAR_SMS,
  );
  static USSDActionFunctionDomain CONSULTAR_VOZ = USSDActionFunctionDomain(
    ActionsUSSD.CONSULTAR_VOZ,
  );

  //------------------------------- PLAN -------------------------------\\
  static USSDActionFunctionDomain COMPRA_PLAN_110_C = USSDActionFunctionDomain(
    ActionsUSSD.COMPRA_PLAN_110_C,
  );
  static USSDActionFunctionDomain COMPRA_PLAN_250_C = USSDActionFunctionDomain(
    ActionsUSSD.COMPRA_PLAN_250_C,
  );
  static USSDActionFunctionDomain COMPRA_PLAN_500_C = USSDActionFunctionDomain(
    ActionsUSSD.COMPRA_PLAN_500_C,
  );

  //------------------------------- SMS -------------------------------\\
  static USSDActionFunctionDomain COMPRA_SMS_15_C = USSDActionFunctionDomain(
    ActionsUSSD.COMPRA_SMS_15_C,
  );
  static USSDActionFunctionDomain COMPRA_SMS_30_C = USSDActionFunctionDomain(
    ActionsUSSD.COMPRA_SMS_30_C,
  );
  static USSDActionFunctionDomain COMPRA_SMS_50_C = USSDActionFunctionDomain(
    ActionsUSSD.COMPRA_SMS_50_C,
  );
  static USSDActionFunctionDomain COMPRA_SMS_60_C = USSDActionFunctionDomain(
    ActionsUSSD.COMPRA_SMS_60_C,
  );

  //------------------------------- VOZ -------------------------------\\
  static USSDActionFunctionDomain COMPRA_VOZ_37_50_C = USSDActionFunctionDomain(
    ActionsUSSD.COMPRA_VOZ_37_50_C,
  );
  static USSDActionFunctionDomain COMPRA_VOZ_72_50_C = USSDActionFunctionDomain(
    ActionsUSSD.COMPRA_VOZ_72_50_C,
  );
  static USSDActionFunctionDomain COMPRA_VOZ_105_C = USSDActionFunctionDomain(
    ActionsUSSD.COMPRA_VOZ_105_C,
  );
  static USSDActionFunctionDomain COMPRA_VOZ_162_50_C =
      USSDActionFunctionDomain(
    ActionsUSSD.COMPRA_VOZ_162_50_C,
  );
  static USSDActionFunctionDomain COMPRA_VOZ_250_C = USSDActionFunctionDomain(
    ActionsUSSD.COMPRA_VOZ_250_C,
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

  //------------------------------- BOLSA -------------------------------\\
  static USSDActionFunctionDomain COMPRA_DATOS_BOLSA_MENSAJERIA_C =
      USSDActionFunctionDomain(
    ActionsUSSD.COMPRA_DATOS_BOLSA_MENSAJERIA_C,
  );
  static USSDActionFunctionDomain COMPRA_DATOS_BOLSA_DIARIA_C =
      USSDActionFunctionDomain(
    ActionsUSSD.COMPRA_DATOS_BOLSA_DIARIA_C,
  );

  //------------------------------- SALDO -------------------------------\\
  static USSDActionFunctionDomain TRANSFERIR_SALDO = USSDActionFunctionDomain(
    ActionsUSSD.TRANSFERIR_SALDO('', '', ''),
  );

  static USSDActionFunctionDomain TRANSFERIR_SALDO_F(
          String numero, String clave, String monto) =>
      USSDActionFunctionDomain(
        ActionsUSSD.TRANSFERIR_SALDO(numero, clave, monto),
      );

  static USSDActionFunctionDomain CAMBIO_CLAVE(
          String claveVieja, String claveNueva) =>
      USSDActionFunctionDomain(
        ActionsUSSD.CAMBIO_CLAVE(claveVieja, claveNueva),
      );

  static USSDActionFunctionDomain RECARGAR_SADO(String numeroTarjeta) =>
      USSDActionFunctionDomain(
        ActionsUSSD.RECARGAR_SADO(numeroTarjeta),
      );
}
