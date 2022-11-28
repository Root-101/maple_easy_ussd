import 'package:easy_ussd/ussd_exporter.dart';
import 'package:flutter/material.dart';

class USSDPlansWidgets {
  //todas las acciones por grupos
  static List<USSDPlansGroupsModel> GROUPS = [
    PAQUETES_LTE,
    SMS,
    VOZ,
    PLANES,
  ];

  //todas las acciones sin grupos
  static List<USSDPlanItem> ACTIONS() => GROUPS
      .expand(
        (element) => element.childs,
      )
      .toList();

  //todas las acciones separadas widget/ussd_code
  static List<USSDFavoritesCodes> FAVORITES() => ACTIONS()
      .map(
        (e) => USSDFavoritesCodes(
          code: e.function,
          widget: e,
        ),
      )
      .toList();

  static USSDPlansGroupsModel PAQUETES_LTE = USSDPlansGroupsModel(
    groupKey: "ussd.compras.paquetes_lte",
    title: Text("Paquetes LTE"),
    childs: [
      COMPRA_DATOS_PAQUETES_LTE_100_C,
      COMPRA_DATOS_PAQUETES_LTE_200_C,
      COMPRA_DATOS_PAQUETES_LTE_950_C,
    ],
  );
  static USSDPlansGroupsModel SMS = USSDPlansGroupsModel(
    groupKey: "ussd.compras.sms",
    title: Text("SMS"),
    childs: [
      COMPRA_SMS_15_C,
      COMPRA_SMS_30_C,
      COMPRA_SMS_50_C,
      COMPRA_SMS_60_C,
    ],
  );
  static USSDPlansGroupsModel VOZ = USSDPlansGroupsModel(
    groupKey: "ussd.compras.voz",
    title: Text("Voz"),
    childs: [
      COMPRA_VOZ_37_50_C,
      COMPRA_VOZ_72_50_C,
      COMPRA_VOZ_105_C,
      COMPRA_VOZ_162_50_C,
      COMPRA_VOZ_250_C,
    ],
  );
  static USSDPlansGroupsModel PLANES = USSDPlansGroupsModel(
    groupKey: "ussd.compras.planes",
    title: Text("Planes"),
    childs: [
      COMPRA_PLAN_110_C,
      COMPRA_PLAN_250_C,
      COMPRA_PLAN_500_C,
    ],
  );
  static USSDPlansGroupsModel BOLSA = USSDPlansGroupsModel(
    groupKey: "ussd.compras.bolsa",
    title: Text("Bolsa"),
    childs: [
      COMPRA_DATOS_BOLSA_MENSAJERIA_C,
      COMPRA_DATOS_BOLSA_DIARIA_C,
    ],
  );

  //------------- PLANES -------------\\
  static USSDPlanItem COMPRA_PLAN_110_C = USSDPlanItem(
    function: USSDPlansCodes.COMPRA_PLAN_110_C,
    tilePrice: "\$110",
    tileDescription: "600 MB + 800 MB LTE + 15 min + 20 sms",
  );
  static USSDPlanItem COMPRA_PLAN_250_C = USSDPlanItem(
    function: USSDPlansCodes.COMPRA_PLAN_250_C,
    tilePrice: "\$250",
    tileDescription: "1.5 GB + 2 GB LTE + 35 min + 40 sms",
  );
  static USSDPlanItem COMPRA_PLAN_500_C = USSDPlanItem(
    function: USSDPlansCodes.COMPRA_PLAN_500_C,
    tilePrice: "\$500",
    tileDescription: "3.5 GB + 4.5 GB LTE + 75 min + 80 sms",
  );

  //------------- SMS -------------\\
  static USSDPlanItem COMPRA_SMS_15_C = USSDPlanItem(
    function: USSDPlansCodes.COMPRA_SMS_15_C,
    tilePrice: "\$15",
    tileDescription: "20 SMS (1 SMS = \$0.70)",
  );
  static USSDPlanItem COMPRA_SMS_30_C = USSDPlanItem(
    function: USSDPlansCodes.COMPRA_SMS_30_C,
    tilePrice: "\$30",
    tileDescription: "50 SMS (1 SMS = \$0.60)",
  );
  static USSDPlanItem COMPRA_SMS_50_C = USSDPlanItem(
    function: USSDPlansCodes.COMPRA_SMS_50_C,
    tilePrice: "\$50",
    tileDescription: "90 SMS (1 SMS = \$0.55)",
  );
  static USSDPlanItem COMPRA_SMS_60_C = USSDPlanItem(
    function: USSDPlansCodes.COMPRA_SMS_60_C,
    tilePrice: "\$60",
    tileDescription: "120 SMS (1 SMS = \$0.50)",
  );

  //------------- VOZ -------------\\
  static USSDPlanItem COMPRA_VOZ_37_50_C = USSDPlanItem(
    function: USSDPlansCodes.COMPRA_VOZ_37_50_C,
    tilePrice: "\$37.50",
    tileDescription: "5 MIN (1 MIN = \$7.50)",
  );

  static USSDPlanItem COMPRA_VOZ_72_50_C = USSDPlanItem(
    function: USSDPlansCodes.COMPRA_VOZ_72_50_C,
    tilePrice: "\$72.50",
    tileDescription: "10 MIN (1 MIN = \$7.25)",
  );

  static USSDPlanItem COMPRA_VOZ_105_C = USSDPlanItem(
    function: USSDPlansCodes.COMPRA_VOZ_105_C,
    tilePrice: "\$105",
    tileDescription: "15 MIN (1 MIN = \$7)",
  );

  static USSDPlanItem COMPRA_VOZ_162_50_C = USSDPlanItem(
    function: USSDPlansCodes.COMPRA_VOZ_162_50_C,
    tilePrice: "\$162.50",
    tileDescription: "25 MIN (1 MIN = \$6.50)",
  );

  static USSDPlanItem COMPRA_VOZ_250_C = USSDPlanItem(
    function: USSDPlansCodes.COMPRA_VOZ_250_C,
    tilePrice: "\$250",
    tileDescription: "40 MIN (1 MIN = \$6.25)",
  );

//------------- PAQUETES LTE -------------\\
  static USSDPlanItem COMPRA_DATOS_PAQUETES_LTE_100_C = USSDPlanItem(
    function: USSDPlansCodes.COMPRA_DATOS_PAQUETES_LTE_100_C,
    tilePrice: "\$100",
    tileDescription: "1 GB LTE (10 MB por cada \$1.00)",
  );
  static USSDPlanItem COMPRA_DATOS_PAQUETES_LTE_200_C = USSDPlanItem(
    function: USSDPlansCodes.COMPRA_DATOS_PAQUETES_LTE_200_C,
    tilePrice: "\$200",
    tileDescription: "2.5 GB LTE (12.5 MB por cada \$1.00)",
  );
  static USSDPlanItem COMPRA_DATOS_PAQUETES_LTE_950_C = USSDPlanItem(
    function: USSDPlansCodes.COMPRA_DATOS_PAQUETES_LTE_950_C,
    tilePrice: "\$950",
    tileDescription: "4 GB + 12 GB LTE (16.8 MB por cada \$1.00)",
  );

//------------- BOLSA -------------\\
  static USSDPlanItem COMPRA_DATOS_BOLSA_MENSAJERIA_C = USSDPlanItem(
    function: USSDPlansCodes.COMPRA_DATOS_BOLSA_MENSAJERIA_C,
    tilePrice: "\$25",
    tileDescription: "600 MB (xxx)",
  );

  static USSDPlanItem COMPRA_DATOS_BOLSA_DIARIA_C = USSDPlanItem(
    function: USSDPlansCodes.COMPRA_DATOS_BOLSA_DIARIA_C,
    tilePrice: "\$25",
    tileDescription: "200 MB LTE (xxx)",
  );
}
