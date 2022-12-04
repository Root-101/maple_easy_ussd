import 'package:easy_ussd/ussd_exporter.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:loader_overlay/loader_overlay.dart';

class USSDConsultItem extends StatelessWidget {
  final USSDConsultItemModel item;

  const USSDConsultItem({
    required this.item,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: USSDPlansWidgetsHeader(
          title: item.function.text,
        ),
        onTap: () async {
          context.loaderOverlay.show();
          String? resp = await item.function.execute();
          AwesomeDialog(
            context: context,
            dialogType: DialogType.success,
            title: item.title,
            desc: resp,
            btnOkOnPress: () {},
          )..show();
          context.loaderOverlay.hide();
        },
        trailing: FavoriteButton(
          item.function,
        ),
      ),
    );
  }
}
