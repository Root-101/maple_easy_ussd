import 'package:easy_ussd/src/features/plans/ussd_plans_exporter.dart';
import 'package:easy_ussd/src/shared/ussd_shared_exporter.dart';

class USSDPlansGroupsData {
  /// A list with grups of plans.
  static List<USSDPlansGroupsModel> plansGroupList = [
    PLANES,
    PAQUETES_LTE,
    SMS,
    VOICE,
  ];

  // A list with all the plans in the plans group list.
  static List<USSDPlanItemModel> plansList() => plansGroupList
      .expand(
        (planGroup) => planGroup.childs,
      )
      .toList();

  // A list with the favorites plans divided in the function to execute and
  // the widget to display that contains the item.
  static List<USSDFavoritesCodes> favoritesPlansList() => plansList()
      .map(
        (planItem) => USSDFavoritesCodes(
          code: planItem.function,
          widget: USSDPlansWidgetsPackageTile(planItem: planItem),
        ),
      )
      .toList();

  /// The plan grup with the LTE offer.
  static USSDPlansGroupsModel PAQUETES_LTE = USSDPlansGroupsModel(
    groupKey: "ussd.compras.paquetes_lte",
    title: "Paquetes de Datos 4G",
    childs: [
      COMPRA_DATOS_PAQUETES_LTE_100_C,
      COMPRA_DATOS_PAQUETES_LTE_200_C,
      COMPRA_DATOS_PAQUETES_LTE_950_C,
    ],
  );

  /// The plan grup with the SMS offer.
  static USSDPlansGroupsModel SMS = USSDPlansGroupsModel(
    groupKey: "ussd.compras.sms",
    title: "Plan de SMS",
    childs: [
      COMPRA_SMS_15_C,
      COMPRA_SMS_30_C,
      COMPRA_SMS_50_C,
      COMPRA_SMS_60_C,
    ],
  );

  /// The plan grup with the VOICE offer.
  static USSDPlansGroupsModel VOICE = USSDPlansGroupsModel(
    groupKey: "ussd.compras.voz",
    title: "Plan de Voz",
    childs: [
      COMPRA_VOZ_37_50_C,
      COMPRA_VOZ_72_50_C,
      COMPRA_VOZ_105_C,
      COMPRA_VOZ_162_50_C,
      COMPRA_VOZ_250_C,
    ],
  );

  /// The plan grup with the combined offers.
  static USSDPlansGroupsModel PLANES = USSDPlansGroupsModel(
    groupKey: "ussd.compras.planes",
    title: "Paquetes Combinados",
    childs: [
      COMPRA_PLAN_110_C,
      COMPRA_PLAN_250_C,
      COMPRA_PLAN_500_C,
    ],
  );

  /// The plan grup with the mail offer.
  static USSDPlansGroupsModel MAIL = USSDPlansGroupsModel(
    groupKey: "ussd.compras.bolsa",
    title: "Bolsa de Mensajería",
    childs: [
      COMPRA_DATOS_BOLSA_MENSAJERIA_C,
      COMPRA_DATOS_BOLSA_DIARIA_C,
    ],
  );

  //----------------------------- PLANES -------------------------------------\\
  static USSDPlanItemModel COMPRA_PLAN_110_C = USSDPlanItemModel(
    function: USSDPlansCodes.COMPRA_PLAN_110_C,
    price: "110",
    title: "Plan de 600 MB + 800 MB LTE",
    description: "Obtienes además 15 min + 20 sms",
  );
  static USSDPlanItemModel COMPRA_PLAN_250_C = USSDPlanItemModel(
    function: USSDPlansCodes.COMPRA_PLAN_250_C,
    price: "250",
    title: "Plan de 1.5 GB + 2 GB LTE",
    description: "Obtienes además 35 min + 40 sms",
  );
  static USSDPlanItemModel COMPRA_PLAN_500_C = USSDPlanItemModel(
    function: USSDPlansCodes.COMPRA_PLAN_500_C,
    price: "500",
    title: "Plan de 3.5 GB + 4.5 GB LTE",
    description: "Obtienes además 75 min + 80 sms",
  );

  //------------------------------------ SMS ---------------------------------\\
  static USSDPlanItemModel COMPRA_SMS_15_C = USSDPlanItemModel(
    function: USSDPlansCodes.COMPRA_SMS_15_C,
    price: "15",
    title: "Plan de 20 SMS",
    description: "Cada SMS es equivalente a \$0.70)",
  );
  static USSDPlanItemModel COMPRA_SMS_30_C = USSDPlanItemModel(
    function: USSDPlansCodes.COMPRA_SMS_30_C,
    price: "30",
    title: "Plan de 50 SMS",
    description: "Cada SMS es equivalente a \$0.60)",
  );
  static USSDPlanItemModel COMPRA_SMS_50_C = USSDPlanItemModel(
    function: USSDPlansCodes.COMPRA_SMS_50_C,
    price: "50",
    title: "Plan de 90 SMS",
    description: "Cada SMS es equivalente a \$0.55)",
  );
  static USSDPlanItemModel COMPRA_SMS_60_C = USSDPlanItemModel(
    function: USSDPlansCodes.COMPRA_SMS_60_C,
    price: "60",
    title: "Plan de 120 SMS",
    description: "Cada SMS es equivalente a \$0.50)",
  );

  //------------------------------------ VOZ ---------------------------------\\
  static USSDPlanItemModel COMPRA_VOZ_37_50_C = USSDPlanItemModel(
    function: USSDPlansCodes.COMPRA_VOZ_37_50_C,
    price: "37.5",
    title: "Plan de VOZ de 5 MIN",
    description: "Cada minuto es equivalente a \$7.50)",
  );

  static USSDPlanItemModel COMPRA_VOZ_72_50_C = USSDPlanItemModel(
    function: USSDPlansCodes.COMPRA_VOZ_72_50_C,
    price: "72.5",
    title: "Plan de VOZ de 10 MIN",
    description: "Cada minuto es equivalente a \$7.25)",
  );

  static USSDPlanItemModel COMPRA_VOZ_105_C = USSDPlanItemModel(
    function: USSDPlansCodes.COMPRA_VOZ_105_C,
    price: "105",
    title: "Plan de VOZ de 15 MIN",
    description: "Cada minuto es equivalente a \$7)",
  );

  static USSDPlanItemModel COMPRA_VOZ_162_50_C = USSDPlanItemModel(
    function: USSDPlansCodes.COMPRA_VOZ_162_50_C,
    price: "162.5",
    title: "Plan de VOZ de 25 MIN",
    description: "Cada minuto es equivalente a \$6.50)",
  );

  static USSDPlanItemModel COMPRA_VOZ_250_C = USSDPlanItemModel(
    function: USSDPlansCodes.COMPRA_VOZ_250_C,
    price: "250",
    title: "Plan de VOZ de 40 MIN",
    description: "Cada minuto es equivalente a \$6.25)",
  );

//-------------------------------- PAQUETES LTE ------------------------------\\
  static USSDPlanItemModel COMPRA_DATOS_PAQUETES_LTE_100_C = USSDPlanItemModel(
    function: USSDPlansCodes.COMPRA_DATOS_PAQUETES_LTE_100_C,
    price: "100",
    title: "Plan de Datos de 1 GB LTE",
    description: "10 MB son equivalentes a \$1.00)",
  );
  static USSDPlanItemModel COMPRA_DATOS_PAQUETES_LTE_200_C = USSDPlanItemModel(
    function: USSDPlansCodes.COMPRA_DATOS_PAQUETES_LTE_200_C,
    price: "200",
    title: "Plan de Datos de 2.5 GB LTE",
    description: "12.5 MB son equivalentes a \$1.00)",
  );
  static USSDPlanItemModel COMPRA_DATOS_PAQUETES_LTE_950_C = USSDPlanItemModel(
    function: USSDPlansCodes.COMPRA_DATOS_PAQUETES_LTE_950_C,
    price: "950",
    title: "Plan de Datos de 16 GB LTE",
    description: "16.8 MB son equivalentes a \$1.00)",
  );

//---------------------------------- BOLSA -----------------------------------\\
  static USSDPlanItemModel COMPRA_DATOS_BOLSA_MENSAJERIA_C = USSDPlanItemModel(
    function: USSDPlansCodes.COMPRA_DATOS_BOLSA_MENSAJERIA_C,
    price: "25",
    title: "Plan de Mensajería",
    description: "600 MB destinados al correo nauta",
  );

  static USSDPlanItemModel COMPRA_DATOS_BOLSA_DIARIA_C = USSDPlanItemModel(
    function: USSDPlansCodes.COMPRA_DATOS_BOLSA_DIARIA_C,
    price: "25",
    title: "Bolsa de Datos Diaria",
    description: "200 MB LTE a cosumir en durante un día",
  );
}
