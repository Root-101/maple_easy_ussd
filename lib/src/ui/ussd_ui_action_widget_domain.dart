/*import 'package:flutter/cupertino.dart';
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

  //------------------------------- COMPRA -------------------------------\\
  static USSDActionWidgetDomain _buildCompra({
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


//------------- SALDO -------------\\
  static USSDActionWidgetDomain _buildSaldo({
    required USSDActionFunctionDomain function,
    required Widget Function(BuildContext) modal,
    required String title,
  }) {
    return USSDActionWidgetDomain(
      function: function,
      widget: Saldo(
        function: function,
        title: title,
        modal: modal,
      ),
    );
  }

  static USSDActionWidgetDomain TRANSFERIR_SALDO = _buildSaldo(
    function: USSDActionFunctionDomain.TRANSFERIR_SALDO,
    modal: (context) {
      TextEditingController numeroController = TextEditingController();
      TextEditingController claveController = TextEditingController();
      TextEditingController montoController = TextEditingController();
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: numeroController,
          ),
          TextField(
            controller: claveController,
          ),
          TextField(
            controller: montoController,
          ),
          ElevatedButton(
            onPressed: () async {
              context.loaderOverlay.show();
              String? resp = await USSDActionFunctionDomain.TRANSFERIR_SALDO_F(
                numeroController.text,
                claveController.text,
                montoController.text,
              ).execute();

              AwesomeDialog(
                context: context,
                dialogType: DialogType.info,
                title: 'Transferencia de saldo',
                desc: '$resp',
                btnOkOnPress: () {},
              )..show();
              context.loaderOverlay.hide();
            },
            child: Text("do it"),
          ),
          SizedBox(
            height: 15,
          )
        ],
      );
    },
    title: "Transferir Saldo",
  );
}

//------------------------------------------- widgets -------------------------------------------\\

class Saldo extends GetView<USSDController> {
  USSDActionFunctionDomain function;
  Widget Function(BuildContext) modal;
  String title;

  Saldo({
    required this.function,
    required this.modal,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
      ),
      onTap: () async {
        showModalBottomSheet(
          isScrollControlled: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
          ),
          backgroundColor: Colors.white,
          useRootNavigator: true,
          context: context,
          builder: (context) {
            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: modal(
                    context,
                  ),
                ),
              ),
            );
          },
        );
      },
      trailing: Favorite(
        function,
      ),
    );
  }
}
*/