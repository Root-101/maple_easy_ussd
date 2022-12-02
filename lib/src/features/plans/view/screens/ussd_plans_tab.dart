import 'package:easy_ussd/src/app/theme/colors_theme.dart';
import 'package:easy_ussd/src/features/plans/view/utils/plans_groups_data.dart';
import 'package:easy_ussd/ussd_exporter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class USSDPlansTab {
  /// The body of the Screen when Plans is selected.
  static Widget body = USSDPlansTabBody();

  /// The view in the [BottonNavigationBar] of the Plans button.
  static PersistentBottomNavBarItem item = PersistentBottomNavBarItem(
    // Icon for the bar item.
    icon: Icon(Icons.shopping_cart),
    // Title for the bar item.
    title: ("Paquetes"),
    // Color for the current selected item in the navigation bar
    activeColorPrimary: ColorsTheme.primary,
    // Color for the unselected item(s) in the navigation bar.
    inactiveColorPrimary: ColorsTheme.primaryLight,
  );
}

class USSDPlansTabBody extends StatelessWidget {
  USSDPlansTabBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        // Builds a [SliverAppBar] with a custom title and
        // the posibility to access the intro page and
        // to change the theme of the app between light and dark.
        USSDSliverAppBar(
          title: 'Paquetes',
        ),
        //el wrap para ponerlo dentro del scroll
        SliverToBoxAdapter(
          child: GetBuilder<USSDPlansController>(builder: (controller) {
            // Creates a scrollable, linear array of widgets that are created on demand.
            return Column(
              children: [
                ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  // The amount of items in the packages list.
                  itemCount: PlansGroupsData.plansGrupList.length,
                  itemBuilder: (BuildContext context, int index) {
                    // A [ExpansionTile] that show info about a given package.
                    // Shows the name of the package as a title and expands to
                    // a list of consults belonging to the package.
                    return ExpansionTileWithList(
                      plansGroupData: PlansGroupsData.plansGrupList[index],
                    );
                  },
                ),

                /// A space in the bottom of the list so it can be view entirely
                /// Otherwise the part of the list it will be below
                /// the navigation Bar and cannot be access.
                SizedBox(height: 20.0)
              ],
            );
          }),
        ),
      ],
    );
  }
}
