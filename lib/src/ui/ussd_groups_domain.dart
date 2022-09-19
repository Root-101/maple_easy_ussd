import 'package:flutter/cupertino.dart';
import 'package:easy_ussd/ussd_exporter.dart';

class USSDGroupsDomain {
  String groupKey;
  StatelessWidget title;
  List<USSDActionWidgetDomain> childs;

  USSDGroupsDomain({
    required this.groupKey,
    required this.title,
    required this.childs,
  });

  //------------------ FAVORITES ------------------\\
  //Se saca dinamico con cada iteracion por si algo se modifica

  static List<USSDActionWidgetDomain> ACTIONS() =>
      [
        ...CONSULTAS,
        ...DATOS_GROUP.expand(
              (element) => element.childs,
        ),
      ];

  //------------------ CONSULTAS ------------------\\
  //No tiene grupos como tal, son todos los items en una lista
  static List<USSDActionWidgetDomain> CONSULTAS = [
    USSDActionWidgetDomain.CONSULTAR_SALDO,
    USSDActionWidgetDomain.CONSULTAR_BONO,
    USSDActionWidgetDomain.CONSULTAR_SMS,
    USSDActionWidgetDomain.CONSULTAR_VOZ,
    USSDActionWidgetDomain.CONSULTAR_DATOS,
    USSDActionWidgetDomain.CONSULTAR_PLAN_AMIGO,
    USSDActionWidgetDomain.CONSULTAR_SALDO_PETROLERO,
  ];

  //------------------ DATOS ------------------\\
  static List<USSDGroupsDomain> DATOS_GROUP = [
    PAQUETES_LTE,
    SMS,
    VOZ,
    PLANES,
  ];
  static USSDGroupsDomain PAQUETES_LTE = USSDGroupsDomain(
    groupKey: "ussd.compras.paquetes_lte",
    title: Text("Paquetes LTE"),
    childs: [
      USSDActionWidgetDomain.COMPRA_DATOS_PAQUETES_LTE_100_C,
      USSDActionWidgetDomain.COMPRA_DATOS_PAQUETES_LTE_200_C,
      USSDActionWidgetDomain.COMPRA_DATOS_PAQUETES_LTE_950_C,
    ],
  );
  static USSDGroupsDomain SMS = USSDGroupsDomain(
    groupKey: "ussd.compras.sms",
    title: Text("SMS"),
    childs: [
      USSDActionWidgetDomain.COMPRA_SMS_15_C,
      USSDActionWidgetDomain.COMPRA_SMS_30_C,
      USSDActionWidgetDomain.COMPRA_SMS_50_C,
      USSDActionWidgetDomain.COMPRA_SMS_60_C,
    ],
  );
  static USSDGroupsDomain VOZ = USSDGroupsDomain(
    groupKey: "ussd.compras.voz",
    title: Text("Voz"),
    childs: [
      USSDActionWidgetDomain.COMPRA_VOZ_37_50_C,
      USSDActionWidgetDomain.COMPRA_VOZ_72_50_C,
      USSDActionWidgetDomain.COMPRA_VOZ_105_C,
      USSDActionWidgetDomain.COMPRA_VOZ_162_50_C,
      USSDActionWidgetDomain.COMPRA_VOZ_250_C,
    ],
  );
  static USSDGroupsDomain PLANES = USSDGroupsDomain(
    groupKey: "ussd.compras.planes",
    title: Text("Planes"),
    childs: [
      USSDActionWidgetDomain.COMPRA_PLAN_110_C,
      USSDActionWidgetDomain.COMPRA_PLAN_250_C,
      USSDActionWidgetDomain.COMPRA_PLAN_500_C,
    ],
  );
  static USSDGroupsDomain BOLSA = USSDGroupsDomain(
    groupKey: "ussd.compras.bolsa",
    title: Text("Bolsa"),
    childs: [
      USSDActionWidgetDomain.COMPRA_DATOS_BOLSA_MENSAJERIA_C,
      USSDActionWidgetDomain.COMPRA_DATOS_BOLSA_DIARIA_C,
    ],
  );
}
