/*import 'package:flutter/cupertino.dart';
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
        ...GROUPS.expand(
          (element) => element.childs,
        ),
        ...SALDO,
      ];

  //------------------ SALDO ------------------\\
  //No tiene grupos como tal, son todos los items en una lista
  static List<USSDActionWidgetDomain> SALDO = [
    USSDActionWidgetDomain.TRANSFERIR_SALDO,
  ];
}
*/