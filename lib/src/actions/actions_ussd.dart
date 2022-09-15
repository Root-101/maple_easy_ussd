class ActionsUSSD {
  String text;
  String key; //unique key
  String ussd;

  ActionsUSSD({
    required this.text,
    required this.key,
    required this.ussd,
  });

  //------------------------------- CONSULTAS -------------------------------\\
  static ActionsUSSD CONSULTAR_SALDO = ActionsUSSD(
    text: "Consultar saldo",
    key: "key.consultas.saldo",
    ussd: "*222#",
  );

  static ActionsUSSD CONSULTAR_BONO = ActionsUSSD(
    text: "Consultar bono",
    key: "key.consultas.bono",
    ussd: "*222*266#",
  );

  static ActionsUSSD CONSULTAR_DATOS = ActionsUSSD(
    text: "Consultar datos",
    key: "key.consultas.datos",
    ussd: "*222*266#",
  );

  //------------------------------- PLANES -------------------------------\\
  ///600 MB + 800 MB LTE + 15 min + 20 sms x 110$     INCLUYE CONFIRMACION
  static ActionsUSSD COMPRA_PLAN_110_C = ActionsUSSD(
    text: "Comprar plan 110\$",
    key: "key.plan.110",
    ussd: "*133*5*1*1#", //INCLUYE CONFIRMACION
  );

  ///1.5 GB + 2 GB LTE + 35 min + 40 sms x 250$     INCLUYE CONFIRMACION
  static ActionsUSSD COMPRA_PLAN_250_C = ActionsUSSD(
    text: "Comprar plan 250\$",
    key: "key.plan.250",
    ussd: "*133*5*2*1#", //INCLUYE CONFIRMACION
  );

  ///3.5 GB + 4.5 GB LTE + 75 min + 80 sms x 500     INCLUYE CONFIRMACION
  static ActionsUSSD COMPRA_PLAN_500_C = ActionsUSSD(
    text: "Comprar plan 500\$",
    key: "key.plan.500",
    ussd: "*133*5*3*1#", //INCLUYE CONFIRMACION
  );

  //------------------------------- PAQUETES_C -------------------------------\\
  ///1 GB LTE x 100$     INCLUYE CONFIRMACION
  static ActionsUSSD COMPRA_DATOS_PAQUETES_LTE_100_C = ActionsUSSD(
    text: "Comprar paquete LTE de \$100",
    key: "key.paquete_lte.100",
    ussd: "*133*1*4*1*1#", //INCLUYE CONFIRMACION
  );

  ///2.5 GB LTE x 200     INCLUYE CONFIRMACION
  static ActionsUSSD COMPRA_DATOS_PAQUETES_LTE_200_C = ActionsUSSD(
    text: "Comprar paquete LTE de \$200",
    key: "key.paquete_lte.200",
    ussd: "*133*1*4*2*1#", //INCLUYE CONFIRMACION
  );

  ///4 GB + 12 GB LTE x 950$     INCLUYE CONFIRMACION
  static ActionsUSSD COMPRA_DATOS_PAQUETES_LTE_950_C = ActionsUSSD(
    text: "Comprar paquete LTE de \$950",
    key: "key.paquete_lte.950",
    ussd: "*133*1*4*3*1#", //INCLUYE CONFIRMACION
  );

  //------------------------------- XXX -------------------------------\\
  static String COMPRA_DATOS_TARIFA_CONSUMO_HABILITAR() => "*133*1*1*1#";

  static String COMPRA_DATOS_TARIFA_CONSUMO_DESHABILITAR() => "*133*1*1*2#";

  ///bolsa 600MB x 25$
  static String COMPRA_DATOS_BOLSA_MENSAJERIA() => "*133*1*2#";

  ///bolsa diaria 200MB LTE x 25$
  static String COMPRA_DATOS_BOLSA_DIARIA() => "*133*1*3#";

  //------------------------------- XXX -------------------------------\\
  ///5 min x 37.50$
  static String COMPRA_VOZ_37_50() => "*133*3*1#";

  ///10 min x 72.50$
  static String COMPRA_VOZ_72_50() => "*133*3*2#";

  ///15 min x 105$
  static String COMPRA_VOZ_105() => "*133*3*3#";

  ///25 min x 162.50$
  static String COMPRA_VOZ_162_50() => "*133*3*4#";

  ///40 min x 250$
  static String COMPRA_VOZ_250() => "*133*3*5#";

  ///20 SMS x 15
  static String COMPRA_SMS_15() => "*133*2*1#";

  ///50 SMS x 30
  static String COMPRA_SMS_30() => "*133*2*2#";

  ///90 SMS x 50
  static String COMPRA_SMS_50() => "*133*2*3#";

  ///120 SMS x 60
  static String COMPRA_SMS_60() => "*133*2*4#";
}
