import 'package:easy_ussd/ussd_exporter.dart';
import 'package:flutter/material.dart';
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
    return Scaffold(
      appBar: USSDAppBar.build(
        title: 'Saldo',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView(
              children: USSDMoneyWidgets.MONEY,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
            ),

            /// A space in the bottom of the list so it can be view entirely
            /// Otherwise the part of the list it will be below
            /// the navigation Bar and cannot be access.
            SizedBox(height: 20.0)
          ],
        ),
      ),
    );
  }
}
