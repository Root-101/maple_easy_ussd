import 'package:easy_ussd/ussd_exporter.dart';

class USSDConsultWidgets {
  //todas als acciones, las consultas no llevan grupos
  static List<USSDConsultItem> CONSULTS = [
    CONSULTAR_SALDO,
    CONSULTAR_BONO,
    CONSULTAR_DATOS,
    CONSULTAR_SALDO_PETROLERO,
    CONSULTAR_PLAN_AMIGO,
    CONSULTAR_SMS,
    CONSULTAR_VOZ,
  ];

  //todas las acciones separadas widget/ussd_code
  static List<USSDFavoritesCodes> FAVORITES() => CONSULTS
      .map(
        (e) => USSDFavoritesCodes(
      code: e.function,
      widget: e,
    ),
  )
      .toList();
  static USSDConsultItem CONSULTAR_SALDO = USSDConsultItem(
    function: USSDConsultDomain.CONSULTAR_SALDO,
    title: 'Saldo',
  );

  static USSDConsultItem CONSULTAR_BONO = USSDConsultItem(
    function: USSDConsultDomain.CONSULTAR_BONO,
    title: 'Bono',
  );

  static USSDConsultItem CONSULTAR_DATOS = USSDConsultItem(
    function: USSDConsultDomain.CONSULTAR_DATOS,
    title: 'Datos',
  );

  static USSDConsultItem CONSULTAR_SALDO_PETROLERO = USSDConsultItem(
    function: USSDConsultDomain.CONSULTAR_SALDO_PETROLERO,
    title: 'Saldo Petrolero',
  );

  static USSDConsultItem CONSULTAR_PLAN_AMIGO = USSDConsultItem(
    function: USSDConsultDomain.CONSULTAR_PLAN_AMIGO,
    title: 'Plan Amigo',
  );

  static USSDConsultItem CONSULTAR_SMS = USSDConsultItem(
    function: USSDConsultDomain.CONSULTAR_SMS,
    title: 'SMS',
  );

  static USSDConsultItem CONSULTAR_VOZ = USSDConsultItem(
    function: USSDConsultDomain.CONSULTAR_VOZ,
    title: 'Voz',
  );
}
