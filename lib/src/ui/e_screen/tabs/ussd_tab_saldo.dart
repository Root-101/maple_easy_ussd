import 'package:easy_ussd/ussd_exporter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class USSDTabSaldo {
  static Widget screen = USSDTabSaldoScreen();

  static PersistentBottomNavBarItem item = PersistentBottomNavBarItem(
    icon: Icon(CupertinoIcons.money_dollar_circle),
    title: ("Saldo"),
    activeColorPrimary: CupertinoColors.systemYellow,
    inactiveColorPrimary: CupertinoColors.systemGrey,
  );
}

class USSDTabSaldoScreen extends GetView<USSDController> {
  USSDTabSaldoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        USSDSliverAppBar(
          title: 'Saldo',
        ),
        //el wrap para ponerlo dentro del scroll
        SliverFillRemaining(
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(10)),
                  ),
                  backgroundColor: Colors.white,
                  useRootNavigator: true,
                  context: context,
                  builder: (context) {
                    return _modal(context);
                  },
                );
              },
              child: Text('hi'),
            ),
          ),
        ),
      ],
    );
  }

  Widget _modal(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom),
        child: SizedBox(
          height: 200,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(),
                ElevatedButton(
                  onPressed: () {
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.warning,
                      title: 'Title asd',
                      desc: 'Description',
                      btnOkOnPress: () {},
                    )..show();
                  },
                  child: Text('click'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
