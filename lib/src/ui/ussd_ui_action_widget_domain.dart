import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:easy_ussd/ussd_exporter.dart';
import 'package:loader_overlay/loader_overlay.dart';

class USSDActionWidgetDomain {
  USSDActionFunctionDomain function;
  StatelessWidget widget;

  @override
  String toString() {
    return function.action.key;
  }

  USSDActionWidgetDomain({
    required this.function,
    required this.widget,
  });

  //------------------------------- CONSULTAS -------------------------------\\
  static USSDActionWidgetDomain _buildConsulta({
    required USSDActionFunctionDomain function,
    required String title,
  }) {
    return USSDActionWidgetDomain(
      function: function,
      widget: Consulta(
        function: function,
        title: title,
      ),
    );
  }

  static USSDActionWidgetDomain CONSULTAR_SALDO = _buildConsulta(
    function: USSDActionFunctionDomain.CONSULTAR_SALDO,
    title: 'Saldo',
  );
  static USSDActionWidgetDomain CONSULTAR_BONO = _buildConsulta(
    function: USSDActionFunctionDomain.CONSULTAR_BONO,
    title: 'Bono',
  );
  static USSDActionWidgetDomain CONSULTAR_DATOS = _buildConsulta(
    function: USSDActionFunctionDomain.CONSULTAR_DATOS,
    title: 'Datos',
  );
  static USSDActionWidgetDomain CONSULTAR_SALDO_PETROLERO = _buildConsulta(
    function: USSDActionFunctionDomain.CONSULTAR_SALDO_PETROLERO,
    title: 'Saldo Petrolero',
  );
  static USSDActionWidgetDomain CONSULTAR_PLAN_AMIGO = _buildConsulta(
    function: USSDActionFunctionDomain.CONSULTAR_PLAN_AMIGO,
    title: 'Plan Amigo',
  );
  static USSDActionWidgetDomain CONSULTAR_SMS = _buildConsulta(
    function: USSDActionFunctionDomain.CONSULTAR_SMS,
    title: 'SMS',
  );
  static USSDActionWidgetDomain CONSULTAR_VOZ = _buildConsulta(
    function: USSDActionFunctionDomain.CONSULTAR_VOZ,
    title: 'Voz',
  );

  //------------------------------- PLANES -------------------------------\\
  static USSDActionWidgetDomain _buildPlan({
    required USSDActionFunctionDomain function,
    required String tilePrice,
    required String tileDescription,
  }) {
    return USSDActionWidgetDomain(
      function: function,
      widget: CompraPlanes(
        function: function,
        tilePrice: tilePrice,
        tileDescription: tileDescription,
      ),
    );
  }

  static USSDActionWidgetDomain COMPRA_PLAN_110_C = _buildPlan(
    function: USSDActionFunctionDomain.COMPRA_PLAN_110_C,
    tilePrice: "\$110",
    tileDescription: "600 MB + 800 MB LTE + 15 min + 20 sms",
  );
  static USSDActionWidgetDomain COMPRA_PLAN_250_C = _buildPlan(
    function: USSDActionFunctionDomain.COMPRA_PLAN_250_C,
    tilePrice: "\$250",
    tileDescription: "1.5 GB + 2 GB LTE + 35 min + 40 sms",
  );
  static USSDActionWidgetDomain COMPRA_PLAN_500_C = _buildPlan(
    function: USSDActionFunctionDomain.COMPRA_PLAN_500_C,
    tilePrice: "\$500",
    tileDescription: "3.5 GB + 4.5 GB LTE + 75 min + 80 sms",
  );

  //------------------------------- SMS -------------------------------\\
  static USSDActionWidgetDomain _buildSMS({
    required USSDActionFunctionDomain function,
    required String tilePrice,
    required String tileDescription,
  }) {
    return USSDActionWidgetDomain(
      function: function,
      widget: CompraPlanes(
        function: function,
        tilePrice: tilePrice,
        tileDescription: tileDescription,
      ),
    );
  }

  static USSDActionWidgetDomain COMPRA_SMS_15_C = _buildSMS(
    function: USSDActionFunctionDomain.COMPRA_SMS_15_C,
    tilePrice: "\$15",
    tileDescription: "20 SMS (1 SMS = \$0.70)",
  );
  static USSDActionWidgetDomain COMPRA_SMS_30_C = _buildSMS(
    function: USSDActionFunctionDomain.COMPRA_SMS_30_C,
    tilePrice: "\$30",
    tileDescription: "50 SMS (1 SMS = \$0.60)",
  );
  static USSDActionWidgetDomain COMPRA_SMS_50_C = _buildSMS(
    function: USSDActionFunctionDomain.COMPRA_SMS_50_C,
    tilePrice: "\$50",
    tileDescription: "90 SMS (1 SMS = \$0.55)",
  );
  static USSDActionWidgetDomain COMPRA_SMS_60_C = _buildSMS(
    function: USSDActionFunctionDomain.COMPRA_SMS_60_C,
    tilePrice: "\$60",
    tileDescription: "120 SMS (1 SMS = \$0.50)",
  );

  //------------------------------- VOZ -------------------------------\\
  static USSDActionWidgetDomain _buildVoz({
    required USSDActionFunctionDomain function,
    required String tilePrice,
    required String tileDescription,
  }) {
    return USSDActionWidgetDomain(
      function: function,
      widget: CompraPlanes(
        function: function,
        tilePrice: tilePrice,
        tileDescription: tileDescription,
      ),
    );
  }

  static USSDActionWidgetDomain COMPRA_VOZ_37_50_C = _buildVoz(
    function: USSDActionFunctionDomain.COMPRA_VOZ_37_50_C,
    tilePrice: "\$37.50",
    tileDescription: "5 MIN (1 MIN = \$7.50)",
  );

  static USSDActionWidgetDomain COMPRA_VOZ_72_50_C = _buildVoz(
    function: USSDActionFunctionDomain.COMPRA_VOZ_72_50_C,
    tilePrice: "\$72.50",
    tileDescription: "10 MIN (1 MIN = \$7.25)",
  );

  static USSDActionWidgetDomain COMPRA_VOZ_105_C = _buildVoz(
    function: USSDActionFunctionDomain.COMPRA_VOZ_105_C,
    tilePrice: "\$105",
    tileDescription: "15 MIN (1 MIN = \$7)",
  );

  static USSDActionWidgetDomain COMPRA_VOZ_162_50_C = _buildVoz(
    function: USSDActionFunctionDomain.COMPRA_VOZ_162_50_C,
    tilePrice: "\$162.50",
    tileDescription: "25 MIN (1 MIN = \$6.50)",
  );

  static USSDActionWidgetDomain COMPRA_VOZ_250_C = _buildVoz(
    function: USSDActionFunctionDomain.COMPRA_VOZ_250_C,
    tilePrice: "\$250",
    tileDescription: "40 MIN (1 MIN = \$6.25)",
  );

//------------------------------- PAQUETES LTE -------------------------------\\
  static USSDActionWidgetDomain _buildPaqueteLTE({
    required USSDActionFunctionDomain function,
    required String tilePrice,
    required String tileDescription,
  }) {
    return USSDActionWidgetDomain(
      function: function,
      widget: CompraPlanes(
        function: function,
        tilePrice: tilePrice,
        tileDescription: tileDescription,
      ),
    );
  }

  static USSDActionWidgetDomain COMPRA_DATOS_PAQUETES_LTE_100_C =
      _buildPaqueteLTE(
    function: USSDActionFunctionDomain.COMPRA_DATOS_PAQUETES_LTE_100_C,
    tilePrice: "\$100",
    tileDescription: "1 GB LTE (10 MB por cada \$1.00)",
  );
  static USSDActionWidgetDomain COMPRA_DATOS_PAQUETES_LTE_200_C =
      _buildPaqueteLTE(
    function: USSDActionFunctionDomain.COMPRA_DATOS_PAQUETES_LTE_200_C,
    tilePrice: "\$200",
    tileDescription: "2.5 GB LTE (12.5 MB por cada \$1.00)",
  );
  static USSDActionWidgetDomain COMPRA_DATOS_PAQUETES_LTE_950_C =
      _buildPaqueteLTE(
    function: USSDActionFunctionDomain.COMPRA_DATOS_PAQUETES_LTE_950_C,
    tilePrice: "\$950",
    tileDescription: "4 GB + 12 GB LTE (16.8 MB por cada \$1.00)",
  );
}
//----------------- widgets -----------------\\

Widget buildFavorite(
    USSDController controller, USSDActionFunctionDomain function) {
  const Color? heartColor = Colors.redAccent;
  return IconButton(
    splashColor: heartColor,
    onPressed: () => controller.changeFavorite(function.action),
    icon: Icon(
      controller.isFavoriteAction(function.action)
          ? CupertinoIcons.heart_fill
          : CupertinoIcons.heart,
      color: heartColor,
    ),
  );
}

class Consulta extends GetView<USSDController> {
  USSDActionFunctionDomain function;
  String title;

  Consulta({
    required this.function,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<USSDController>(builder: (_) {
      return ListTile(
        title: Text(
          function.action.text,
        ),
        onTap: () async {
          context.loaderOverlay.show();
          String? resp = await function.execute();
          AwesomeDialog(
            context: context,
            dialogType: DialogType.success,
            title: '$title',
            desc: '$resp',
            btnOkOnPress: () {},
          )..show();
          context.loaderOverlay.hide();
        },
        trailing: buildFavorite(
          controller,
          function,
        ),
      );
    });
  }
}

class CompraPlanes extends GetView<USSDController> {
  USSDActionFunctionDomain function;
  String tilePrice;
  String tileDescription;

  CompraPlanes({
    required this.function,
    required this.tilePrice,
    required this.tileDescription,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<USSDController>(builder: (_) {
      return ListTile(
        leading: CircleAvatar(
          child: Text(tilePrice),
          backgroundColor: Colors.deepPurple,
        ),
        trailing: buildFavorite(
          controller,
          function,
        ),
        title: Text(
          function.action.text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          tileDescription,
          style: TextStyle(color: Colors.grey),
        ),
        onTap: () {
          AwesomeDialog(
            context: context,
            dialogType: DialogType.warning,
            body: Center(
              child: Column(
                children: [
                  Text(
                    'Confirmación',
                    textAlign: TextAlign.center,
                    style: Get.textTheme.headline6,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(text: 'Seguro desea comprar el plan de '),
                        TextSpan(
                          text: '$tileDescription ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'por ',
                        ),
                        TextSpan(
                          text: '$tilePrice.',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            btnOkOnPress: () async {
              context.loaderOverlay.show();
              String resp = await function.execute();
              AwesomeDialog(
                context: context,
                dialogType: DialogType.info,
                title: 'Compra de plan.',
                desc: '$resp',
                btnOkColor: Colors.blue,
                btnOkOnPress: () {},
              )..show();
              context.loaderOverlay.hide();
            },
            btnCancelOnPress: () {},
          )..show();
        },
      );
    });
  }
}
