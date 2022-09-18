class ActionsUSSD {
  String text;
  String key; //unique key
  String ussd;

  ActionsUSSD({
    required this.text,
    required this.key,
    required this.ussd,
  });

  /*
   consultas
   paquetes
   sms
   voz
   amigo
   plan
   */
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
    ussd: "*222*328#",
  );

  static ActionsUSSD CONSULTAR_SALDO_PETROLERO = ActionsUSSD(
    text: "Consultar saldo petroleto",
    key: "key.consultas.saldo_petrolero",
    ussd: "*111#",
  );

  static ActionsUSSD CONSULTAR_PLAN_AMIGO = ActionsUSSD(
    text: "Consultar plan amigo",
    key: "key.consultas.plan_amigo",
    ussd: "*222*264#",
  );

  static ActionsUSSD CONSULTAR_SMS = ActionsUSSD(
    text: "Consultar mensajes",
    key: "key.consultas.sms",
    ussd: "*222*767#",
  );

  static ActionsUSSD CONSULTAR_VOZ = ActionsUSSD(
    text: "Consultar minutos",
    key: "key.consultas.voz",
    ussd: "*222*869#",
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

  //------------------------------- SMS -------------------------------\\
  ///20 SMS x 15
  static ActionsUSSD COMPRA_SMS_15_C = ActionsUSSD(
    text: "Comprar paquete de SMS de \$15",
    key: "key.sms.15",
    ussd: "*133*2*1*1#", //INCLUYE CONFIRMACION
  );

  ///50 SMS x 30
  static ActionsUSSD COMPRA_SMS_30_C = ActionsUSSD(
    text: "Comprar paquete de SMS de \$30",
    key: "key.sms.30",
    ussd: "*133*2*2*1#", //INCLUYE CONFIRMACION
  );

  ///90 SMS x 50
  static ActionsUSSD COMPRA_SMS_50_C = ActionsUSSD(
    text: "Comprar paquete de SMS de \$50",
    key: "key.sms.50",
    ussd: "*133*2*3*1#", //INCLUYE CONFIRMACION
  );

  ///120 SMS x 60
  static ActionsUSSD COMPRA_SMS_60_C = ActionsUSSD(
    text: "Comprar paquete de SMS de \$60",
    key: "key.sms.60",
    ussd: "*133*2*4*1#", //INCLUYE CONFIRMACION
  );

  //------------------------------- VOZ -------------------------------\\
  ///5 min x 37.50$     INCLUYE CONFIRMACION
  static ActionsUSSD COMPRA_VOZ_37_50_C = ActionsUSSD(
    text: "Comprar paquete de voz de \$37.50",
    key: "key.voz.37_50",
    ussd: "*133*3*1*1#", //INCLUYE CONFIRMACION
  );

  ///10 min x 72.50$
  static ActionsUSSD COMPRA_VOZ_72_50_C = ActionsUSSD(
    text: "Comprar paquete de voz de \$72.50",
    key: "key.voz.72_50",
    ussd: "*133*3*2*1#", //INCLUYE CONFIRMACION
  );

  ///15 min x 105$
  static ActionsUSSD COMPRA_VOZ_105_C = ActionsUSSD(
    text: "Comprar paquete de voz de \$105",
    key: "key.voz.105",
    ussd: "*133*3*3*1#", //INCLUYE CONFIRMACION
  );

  ///25 min x 162.50$
  static ActionsUSSD COMPRA_VOZ_162_50_C = ActionsUSSD(
    text: "Comprar paquete de voz de \$162.50",
    key: "key.voz.162_50",
    ussd: "*133*3*4*1#", //INCLUYE CONFIRMACION
  );

  ///40 min x 250$
  static ActionsUSSD COMPRA_VOZ_250_C = ActionsUSSD(
    text: "Comprar paquete de voz de \$250",
    key: "key.voz.250",
    ussd: "*133*3*5*1#", //INCLUYE CONFIRMACION
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

  //------------------------------- XXX -------------------------------\\
  static String COMPRA_DATOS_TARIFA_CONSUMO_HABILITAR() => "*133*1*1*1#";

  static String COMPRA_DATOS_TARIFA_CONSUMO_DESHABILITAR() => "*133*1*1*2#";

  ///bolsa 600MB x 25$
  static String COMPRA_DATOS_BOLSA_MENSAJERIA() => "*133*1*2#";

  ///bolsa diaria 200MB LTE x 25$
  static String COMPRA_DATOS_BOLSA_DIARIA() => "*133*1*3#";
}
