import 'package:easy_ussd/src/app/theme/colors_theme.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_ussd/ussd_exporter.dart';

class USSDConsultTab {
  /// The body of the Screen when Consults is selected.
  static Widget body = USSDConsultTabBody();

  // The view in the [BottonNavigationBar] of the Consult button.
  static PersistentBottomNavBarItem item = PersistentBottomNavBarItem(
    // Icon for the bar item.
    icon: Icon(CupertinoIcons.search_circle),
    // Title for the bar item.
    title: ("Consultas"),
    // Color for the current selected item in the navigation bar
    activeColorPrimary: ColorsTheme.primary,
    // Color for the unselected item(s) in the navigation bar.
    inactiveColorPrimary: ColorsTheme.grayDark,
  );
}

class USSDConsultTabBody extends StatelessWidget {
  USSDConsultTabBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: USSDAppBar.build(
        title: 'Consultas',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView(
              children: USSDConsultWidgets.CONSULTS
                  .map(
                    (consultItem) => USSDConsultItem(
                      item: consultItem,
                    ),
                  )
                  .toList(),
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
