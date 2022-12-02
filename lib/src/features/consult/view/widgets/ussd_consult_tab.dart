import 'package:easy_ussd/src/app/theme/colors_theme.dart';
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
    return CustomScrollView(
      slivers: [
        // Builds a [SliverAppBar] with a custom title and
        // the posibility to access the intro page and
        // to change the theme of the app between light and dark.
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
