import 'package:easy_ussd/ussd_exporter.dart';

class USSDConsultDomain {

  static USSDCode CONSULTAR_SALDO = USSDCode(
    text: "Consultar saldo",
    key: "key.consultas.saldo",
    ussd: "*222#",
  );

  static USSDCode CONSULTAR_BONO = USSDCode(
    text: "Consultar bono",
    key: "key.consultas.bono",
    ussd: "*222*266#",
  );

  static USSDCode CONSULTAR_DATOS = USSDCode(
    text: "Consultar datos",
    key: "key.consultas.datos",
    ussd: "*222*328#",
  );


  static USSDCode CONSULTAR_SALDO_PETROLERO = USSDCode(
    text: "Consultar saldo petroleto",
    key: "key.consultas.saldo_petrolero",
    ussd: "*111#",
  );

  static USSDCode CONSULTAR_PLAN_AMIGO = USSDCode(
    text: "Consultar plan amigo",
    key: "key.consultas.plan_amigo",
    ussd: "*222*264#",
  );

  static USSDCode CONSULTAR_SMS = USSDCode(
    text: "Consultar mensajes",
    key: "key.consultas.sms",
    ussd: "*222*767#",
  );

  static USSDCode CONSULTAR_VOZ = USSDCode(
    text: "Consultar minutos",
    key: "key.consultas.voz",
    ussd: "*222*869#",
  );

}
