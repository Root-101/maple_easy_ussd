import 'package:easy_ussd/ussd_exporter.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:loader_overlay/loader_overlay.dart';

class USSDConsultItem extends StatelessWidget {
  USSDCode function;
  String title;

  USSDConsultItem({
    required this.function,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        function.text,
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
    );
  }
}
