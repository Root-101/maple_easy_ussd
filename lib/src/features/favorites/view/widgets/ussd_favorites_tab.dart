import 'package:easy_ussd/ussd_exporter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:flutter_animator/flutter_animator.dart';

class USSDFavoritesTab {
  static Widget body = USSDFavoritesTabBody();

  static PersistentBottomNavBarItem item = PersistentBottomNavBarItem(
    icon: GetBuilder<USSDFavoritesController>(
        builder: (_) {
          return HeartBeat(
            //siempre genera una llave unica para que actualize, con la misma llave considera el mismo widget y no actualiza
            key: UniqueKey(),
            child: Icon(
              CupertinoIcons.heart_fill,
            ),
          );
        }),
    title: ("Favoritos"),
    activeColorPrimary: Colors.redAccent,
    inactiveColorPrimary: CupertinoColors.systemGrey,
  );
}

class USSDFavoritesTabBody extends GetView<USSDFavoritesController> {
  USSDFavoritesTabBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<USSDFavoritesController>(
      builder: (_) {
        List<USSDFavoritesCodes> favorites = controller.findFavorites();
        return CustomScrollView(
          slivers: [
            USSDSliverAppBar(
              title: 'Favoritos',
            ),
            favorites.isEmpty
                ? SliverFillRemaining(
                    child: Center(
                      child: Text('No hay favoritos'),
                    ),
                  )
                : SliverList(
                    delegate: SliverChildListDelegate.fixed(
                      favorites.map((child) => child.widget).toList(),
                    ),
                  ),
          ],
        );
      },
    );
  }
}
