import 'package:easy_ussd/ussd_exporter.dart';

class USSDMoneyDomain {
  static USSDCode TRANSFERIR_SALDO(String numero, String clave, String monto) =>
      USSDCode(
        text: "Transferir saldo",
        key: "key.saldo.transferir_saldo",
        ussd: "*234*1*$numero*$clave*$monto#", //SIN CONFIRMACION
      );

  static USSDCode CAMBIO_CLAVE(String claveVieja, String claveNueva) =>
      USSDCode(
        text: "Cabiar clave",
        key: "key.saldo.cambio_clave",
        ussd: "*234*2*$claveVieja*$claveNueva#", //INCLUYE CONFIRMACION
      );

  static USSDCode RECARGAR_SADO(String numeroTarjeta) => USSDCode(
        text: "Recargar saldo",
        key: "key.saldo.recargar_saldo",
        ussd: "*662*$numeroTarjeta#", //??? CONFIRMACION
      );
}
