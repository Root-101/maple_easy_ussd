import 'package:easy_ussd/ussd_exporter.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class USSDTabConsultas {
  static Widget screen = USSDTabConsultasScreen();

  static PersistentBottomNavBarItem item = PersistentBottomNavBarItem(
    icon: Icon(CupertinoIcons.search_circle),
    title: ("Consultas"),
    activeColorPrimary: CupertinoColors.activeOrange,
    inactiveColorPrimary: CupertinoColors.systemGrey,
  );
}

class USSDTabConsultasScreen extends GetView<USSDController> {
  USSDTabConsultasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: USSDGroupsDomain.CONSULTAS.map((e) => e.widget).toList(),
      ),
    );
  }
}
