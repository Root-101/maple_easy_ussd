import 'package:easy_ussd/ussd_exporter.dart';
import 'package:flutter/material.dart';

class USSDMoneyItem extends StatelessWidget {
  USSDCode function;
  Widget modal;
  String title;

  USSDMoneyItem({
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
                  child: modal,
                ),
              ),
            );
          },
        );
      },
      trailing: FavoriteButton(
        function,
      ),
    );
  }
}
