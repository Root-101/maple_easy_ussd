import 'package:easy_ussd/ussd_exporter.dart';

class USSDConsultWidgets {
  //todas als acciones, las consultas no llevan grupos
  static List<USSDConsultItemModel> CONSULTS = [
    CONSULTAR_SALDO,
    CONSULTAR_BONO,
    CONSULTAR_DATOS,
    CONSULTAR_SALDO_PETROLERO,
    CONSULTAR_PLAN_AMIGO,
    CONSULTAR_SMS,
    CONSULTAR_VOZ,
  ];

  static USSDConsultItemModel CONSULTAR_SALDO = USSDConsultItemModel(
    function: USSDConsultDomain.CONSULTAR_SALDO,
    title: 'Saldo',
  );

  static USSDConsultItemModel CONSULTAR_BONO = USSDConsultItemModel(
    function: USSDConsultDomain.CONSULTAR_BONO,
    title: 'Bono',
  );

  static USSDConsultItemModel CONSULTAR_DATOS = USSDConsultItemModel(
    function: USSDConsultDomain.CONSULTAR_DATOS,
    title: 'Datos',
  );

  static USSDConsultItemModel CONSULTAR_SALDO_PETROLERO = USSDConsultItemModel(
    function: USSDConsultDomain.CONSULTAR_SALDO_PETROLERO,
    title: 'Saldo Petrolero',
  );

  static USSDConsultItemModel CONSULTAR_PLAN_AMIGO = USSDConsultItemModel(
    function: USSDConsultDomain.CONSULTAR_PLAN_AMIGO,
    title: 'Plan Amigo',
  );

  static USSDConsultItemModel CONSULTAR_SMS = USSDConsultItemModel(
    function: USSDConsultDomain.CONSULTAR_SMS,
    title: 'SMS',
  );

  static USSDConsultItemModel CONSULTAR_VOZ = USSDConsultItemModel(
    function: USSDConsultDomain.CONSULTAR_VOZ,
    title: 'Voz',
  );
}
