import 'package:easy_ussd/src/app/theme/colors_theme.dart';
import 'package:easy_ussd/ussd_exporter.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:flutter_animator/flutter_animator.dart';

class USSDFavoritesTab {
  static Widget body = USSDFavoritesTabBody();

  static PersistentBottomNavBarItem item = PersistentBottomNavBarItem(
    icon: GetBuilder<USSDFavoritesController>(builder: (_) {
      return HeartBeat(
        //siempre genera una llave unica para que actualize, con la misma llave considera el mismo widget y no actualiza
        key: UniqueKey(),
        child: Icon(
          CupertinoIcons.heart_fill,
        ),
      );
    }),
    // Title for the bar item.
    title: ("Favoritos"),
    // Color for the current selected item in the navigation bar
    activeColorPrimary: ColorsTheme.primary,
    // Color for the unselected item(s) in the navigation bar.
    inactiveColorPrimary: ColorsTheme.grayDark,
  );
}

class USSDFavoritesTabBody extends GetView<USSDFavoritesController> {
  USSDFavoritesTabBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<USSDFavoritesController>(
      builder: (_) {
        List<USSDFavoritesCodes> favoritesConsult =
            controller.findFavorites_Consults();

        List<USSDFavoritesCodes> favoritesPlans =
            controller.findFavorites_Plans();

        return CustomScrollView(
          slivers: [
            USSDSliverAppBar(
              title: 'Favoritos',
            ),
            favoritesConsult.isEmpty && favoritesPlans.isEmpty
                ? SliverFillRemaining(
                    child: Center(
                      child: Text('No hay favoritos'),
                    ),
                  )
                : SliverList(
                    delegate: SliverChildListDelegate.fixed(
                      [
                        if (favoritesConsult.isNotEmpty)
                          // Builds a Widget similar to a [TextArea]
                          // but insted of a text, the area will hold a widget.
                          TextContainer(
                            textTitle: "Consultas",
                            child: ListView.builder(
                              shrinkWrap: true,
                              // So de list can't be scrolled.
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: favoritesConsult.length,
                              itemBuilder: (context, item) =>
                                  favoritesConsult[item].widget,
                            ),
                          ),
                        if (favoritesPlans.isNotEmpty)
                          // Builds a Widget similar to a [TextArea]
                          // but insted of a text, the area will hold a widget.
                          TextContainer(
                            textTitle: "Planes",
                            child: ListView.builder(
                              shrinkWrap: true,
                              // So de list can't be scrolled.
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: favoritesPlans.length,
                              itemBuilder: (context, item) =>
                                  favoritesPlans[item].widget,
                            ),
                          ),

                        /// A space in the bottom of the list so it can be view entirely
                        /// Otherwise the part of the list it will be below
                        /// the navigation Bar and cannot be access.
                        SizedBox(height: 20.0)
                      ],
                    ),
                  ),
          ],
        );
      },
    );
  }
}
