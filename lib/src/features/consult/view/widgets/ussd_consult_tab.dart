import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_ussd/ussd_exporter.dart';

class USSDConsultTab {
  static Widget body = USSDConsultTabBody();

  static PersistentBottomNavBarItem item = PersistentBottomNavBarItem(
    icon: Icon(CupertinoIcons.search_circle),
    title: ("Consultas"),
    activeColorPrimary: CupertinoColors.activeBlue,
    inactiveColorPrimary: CupertinoColors.systemGrey,
  );
}

class USSDConsultTabBody extends StatelessWidget {
  USSDConsultTabBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        USSDSliverAppBar(
          title: 'Consultas',
        ),
        SliverList(
          delegate: SliverChildListDelegate.fixed(
            USSDConsultWidgets.CONSULTS,
          ),
        ),
      ],
    );
  }
}
