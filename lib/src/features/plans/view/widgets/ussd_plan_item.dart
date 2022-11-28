import 'package:easy_ussd/ussd_exporter.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:get/get.dart';
import 'package:loader_overlay/loader_overlay.dart';

class USSDPlanItem extends StatelessWidget {
  USSDCode function;
  String tilePrice;
  String tileDescription;

  USSDPlanItem({
    required this.function,
    required this.tilePrice,
    required this.tileDescription,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(tilePrice),
        backgroundColor: Colors.deepPurple,
      ),
      trailing: FavoriteButton(
        function,
      ),
      title: Text(
        function.text,
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
  }
}
