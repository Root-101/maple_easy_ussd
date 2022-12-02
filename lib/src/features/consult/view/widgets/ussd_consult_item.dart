import 'package:easy_ussd/ussd_exporter.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:loader_overlay/loader_overlay.dart';

class USSDConsultItem extends StatelessWidget {
  final USSDCode function;
  final String title;

  const USSDConsultItem({
    required this.function,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: USSDPlansWidgetsHeader(
          title: function.text,
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
        trailing: FavoriteButton(
          function,
        ),
      ),
    );
  }
}
