import 'package:easy_ussd/ussd_exporter.dart';
import 'package:flutter/cupertino.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class USSDMoneyTab {
  static Widget body = USSDMoneyTabBody();

  static PersistentBottomNavBarItem item = PersistentBottomNavBarItem(
    icon: Icon(CupertinoIcons.money_dollar_circle),
    title: ("Saldo"),
    activeColorPrimary: CupertinoColors.systemYellow,
    inactiveColorPrimary: CupertinoColors.systemGrey,
  );
}

class USSDMoneyTabBody extends StatelessWidget {
  USSDMoneyTabBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        USSDSliverAppBar(
          title: 'Saldo',
        ),
        SliverList(
          delegate: SliverChildListDelegate.fixed(
            USSDMoneyWidgets.MONEY,
          ),
        ),
      ],
    );
  }
}
