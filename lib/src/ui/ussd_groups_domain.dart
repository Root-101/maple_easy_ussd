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

  static List<USSDActionWidgetDomain> ACTIONS() => [
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
    USSDActionWidgetDomain.CONSULTAR_DATOS,
  ];

  //------------------ DATOS ------------------\\
  static List<USSDGroupsDomain> DATOS_GROUP = [PAQUETES_LTE, PLANES];
  static USSDGroupsDomain PAQUETES_LTE = USSDGroupsDomain(
    groupKey: "ussd.datos.paquetes_lte",
    title: Text("Paquetes LTE"),
    childs: [
      USSDActionWidgetDomain.COMPRA_DATOS_PAQUETES_LTE_100_C,
      USSDActionWidgetDomain.COMPRA_DATOS_PAQUETES_LTE_200_C,
      USSDActionWidgetDomain.COMPRA_DATOS_PAQUETES_LTE_950_C,
    ],
  );
  static USSDGroupsDomain PLANES = USSDGroupsDomain(
    groupKey: "ussd.datos.planes",
    title: Text("Planes"),
    childs: [
      USSDActionWidgetDomain.COMPRA_PLAN_110_C,
      USSDActionWidgetDomain.COMPRA_PLAN_250_C,
      USSDActionWidgetDomain.COMPRA_PLAN_500_C,
    ],
  );
}
