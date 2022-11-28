import 'package:easy_ussd/ussd_exporter.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:loader_overlay/loader_overlay.dart';

class USSDMoneyTransferirSaldoModalBody extends StatelessWidget {
  TextEditingController numeroController = TextEditingController();
  TextEditingController claveController = TextEditingController();
  TextEditingController montoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
            String? resp = await USSDMoneyDomain.TRANSFERIR_SALDO(
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
  }
}
