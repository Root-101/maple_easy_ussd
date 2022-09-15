import 'package:flutter/cupertino.dart';
import 'package:easy_ussd/ussd_exporter.dart';

class USSDGroupsDomain {
  int groupId;
  StatelessWidget title;
  List<USSDActionWidgetDomain> childs;

  USSDGroupsDomain({
    required this.groupId,
    required this.title,
    required this.childs,
  });

  static List<USSDGroupsDomain> GROUPS = [
    FAVORITOS,
    CONSULTAS,
    PAQUETES_LTE,
    PLANES,
  ];
  static List<USSDGroupsDomain> GROUPS_REDUCED = GROUPS.sublist(1);

  static List<USSDActionWidgetDomain> ACTIONS() =>
      GROUPS_REDUCED.expand((element) => element.childs).toList();

  static USSDGroupsDomain FAVORITOS = USSDGroupsDomain(
    groupId: 0,
    title: Text("Favoritos"),
    childs: [],
  );
  static USSDGroupsDomain CONSULTAS = USSDGroupsDomain(
    groupId: 1,
    title: Text("Consultas"),
    childs: [
      USSDActionWidgetDomain.CONSULTAR_SALDO,
      USSDActionWidgetDomain.CONSULTAR_BONO,
      USSDActionWidgetDomain.CONSULTAR_DATOS,
    ],
  );
  static USSDGroupsDomain PAQUETES_LTE = USSDGroupsDomain(
    groupId: 2,
    title: Text("Paquetes LTE"),
    childs: [
      USSDActionWidgetDomain.COMPRA_DATOS_PAQUETES_LTE_100_C,
      USSDActionWidgetDomain.COMPRA_DATOS_PAQUETES_LTE_200_C,
      USSDActionWidgetDomain.COMPRA_DATOS_PAQUETES_LTE_950_C,
    ],
  );
  static USSDGroupsDomain PLANES = USSDGroupsDomain(
    groupId: 3,
    title: Text("Planes"),
    childs: [
      USSDActionWidgetDomain.COMPRA_PLAN_110_C,
      USSDActionWidgetDomain.COMPRA_PLAN_250_C,
      USSDActionWidgetDomain.COMPRA_PLAN_500_C,
    ],
  );
}
